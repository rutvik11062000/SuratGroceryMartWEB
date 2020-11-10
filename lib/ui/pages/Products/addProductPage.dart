import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_web_image_picker/flutter_web_image_picker.dart';
import 'package:suratgrocerymartweb/models/Porduct%20Model/AddModelProvider.dart';
import 'package:provider/provider.dart';
import 'package:suratgrocerymartweb/services/firebaseSerices.dart';

class AddProduct extends StatefulWidget {
  const AddProduct({Key key}) : super(key: key);

  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  @override
  Widget build(BuildContext context) {
    final model = context.watch<AddModelProvider>();
    final dbModel = context.watch<DBModel>();

    final nameController = TextEditingController();
    final priceController = TextEditingController();

    final descController = TextEditingController();

    final _formKey = GlobalKey<FormState>();

    @override
    void dispose() {
      nameController.dispose();
      priceController.dispose();
      descController.dispose();
      super.dispose();
    }

    return Container(
      child: ListView(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              ProductImageHeader(),
            ],
          ),
          Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Row(
                  children: [
                    Text(
                      "Choose Category : ",
                      style: TextStyle(
                          fontSize: 17,
                          fontWeight: FontWeight.w600,
                          color: Colors.blueGrey),
                    ),
                    SizedBox(
                      width: 15,
                    ),
                    DropdownButton<String>(
                      value: model.mainValaue,
                      icon: Icon(Icons.arrow_downward),
                      iconSize: 24,
                      elevation: 16,
                      style: TextStyle(color: Colors.deepPurple),
                      underline: Container(
                        height: 2,
                        color: Colors.deepPurpleAccent,
                      ),
                      onChanged: (String newValue) {
                        model.updateMainValue(newValue);
                      },
                      items: model.categories
                          .map<DropdownMenuItem<String>>((String value) {
                        return DropdownMenuItem<String>(
                          value: value,
                          child: Text(value),
                        );
                      }).toList(),
                    ),
                    Expanded(
                      child: Container(
                        color: Colors.red,
                      ),
                    ),
                  ],
                ),
                TextFormField(
                  controller: nameController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.food_bank),
                    hintText: 'Eg. (Tomato) ',
                    labelText: 'Products Name',
                  ),
                ),
                TextFormField(
                  controller: priceController,
                  keyboardType: TextInputType.number,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.monetization_on_outlined),
                    hintText: 'Eg. 20 (INR)',
                    labelText: 'Enter Price',
                  ),
                ),
                TextFormField(
                  controller: descController,
                  decoration: const InputDecoration(
                    icon: Icon(Icons.description),
                    hintText: 'Eg. This is tomato',
                    labelText: 'Enter Description',
                  ), // onFieldSubmitted: ,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 16.0),
                  child: ElevatedButton(
                    onPressed: () {
                      print("Send");
                      // print(pnme);
                      // print(name.text);
                      // print(price.text);
                      // print(description.text);
                      model.updateProduct(nameController.text,
                          int.parse(priceController.text), descController.text);

                      dbModel.uploadNewProduct(model.map);
                      Scaffold.of(context).showSnackBar(SnackBar(
                        content: Text("Product Added Successfully!🚀"),
                        backgroundColor: Colors.blue,
                      ));
                      print(descController.text);
                      print(nameController.text);

                      print(priceController.text);
                      dbModel.uploadFile(model.img64);
                    },
                    child: Text('Submit'),
                  ),
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}

class ProductImageHeader extends StatelessWidget {
  const ProductImageHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = context.watch<AddModelProvider>();
    final dbModel = context.watch<DBModel>();

    return Container(
      // color: Colors.white,
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
            offset: const Offset(3.0, 3.0),
            blurRadius: 5.0,
            spreadRadius: 2.0,
            color: Colors.black26,
          ),
        ],
      ),
      margin: EdgeInsets.only(top: 10),

      // color: Colors.red,

      child: Center(
          child: Container(
        // color: Colors.white,
        height: 150,
        width: 150,
        child: ElevatedButton(
          style: ButtonStyle(
            backgroundColor: MaterialStateProperty.all<Color>(Colors.white),
          ),
          onPressed: () async {
            final image = await FlutterWebImagePicker.getImage;
            model.setImage(image);
          },
          child: Container(
            child: model.image == null
                ? Icon(
                    Icons.add_a_photo_outlined,
                    color: Colors.blue,
                  )
                : model.image,
          ),
        ),
      )),
    );
  }
}
