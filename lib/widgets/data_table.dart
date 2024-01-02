import 'package:flutter/material.dart';

class DataTableWidget extends StatelessWidget {
  const DataTableWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.amber,
          centerTitle: true,
          title: const Text(
            'Data Table',
            style: TextStyle(fontSize: 30, color: Colors.white),
          ),
        ),
        body: SafeArea(
          child: DataTable(
            // sortAscending: true,

            headingRowHeight: 75,
            columns: const [
              DataColumn(
                label: Text('ID'),
              ),
              DataColumn(
                label: Text('Name'),
              ),
              DataColumn(
                label: Text('Deparatment'),
              ),
              DataColumn(
                label: Text('Section'),
              ),
            ],
            rows: const [
              DataRow(cells: [
                DataCell(
                  Text('5658'),
                ),
                DataCell(
                  Text('Abdullah'),
                ),
                DataCell(
                  Text('CSE'),
                ),
                DataCell(
                  Text('61_V'),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text('5667'),
                ),
                DataCell(
                  Text('Moinul'),
                ),
                DataCell(
                  Text('CSE'),
                ),
                DataCell(
                  Text('61_V'),
                ),
              ]),
              DataRow(cells: [
                DataCell(
                  Text('5688'),
                ),
                DataCell(
                  Text('Akash'),
                ),
                DataCell(
                  Text('EEE'),
                ),
                DataCell(
                  Text('61_W'),
                ),
              ]),
              DataRow(
                cells: [
                  DataCell(
                    Text('5919'),
                  ),
                  DataCell(
                    Text('Shakil'),
                  ),
                  DataCell(
                    Text('SWE'),
                  ),
                  DataCell(
                    Text('61_S'),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
