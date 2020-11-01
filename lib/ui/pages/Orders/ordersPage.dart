import 'package:flutter/material.dart';

class OrdersPage extends StatelessWidget {
  const OrdersPage({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> headings = [
      "No.",
      "OrderId",
      "Date",
      "Time",
      "Product Description",
      "CustomerID",
      "Customer Name",
      "Total Amount",
      "Payment Method",
      "Payment Staus",
      "Delivery Status"
    ];

    return ListView(
      scrollDirection: Axis.horizontal,
      children: [
        DataTable(
          columns: List.generate(
              headings.length, (index) => buildHeading(headings[index])),
          rows: [
            DataRow(
              cells: <DataCell>[
                DataCell(Text('Sarah')),
                DataCell(Text('19')),
                DataCell(Text('Student')),
                DataCell(Text('Sarah')),
                DataCell(Text('Sarah')),
                DataCell(Text('Sarah')),
                DataCell(Text('Sarah')),
                DataCell(Text('Sarah')),
                DataCell(Text('Sarah')),
                DataCell(Text('Sarah')),
                DataCell(Text('Sarah')),
              ],
            ),
          ],
        ),
      ],
    );
  }

  DataColumn buildHeading(String title) {
    return DataColumn(
      label: Text(
        title,
        style: TextStyle(
          fontStyle: FontStyle.italic,
        ),
      ),
    );
  }
}
