import 'package:firebase_crud1/edit_student_page.dart';
import 'package:flutter/material.dart';

class ListStudentPage extends StatefulWidget {
  const ListStudentPage({Key? key}) : super(key: key);

  @override
  State<ListStudentPage> createState() => _ListStudentPageState();
}

class _ListStudentPageState extends State<ListStudentPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.all(12.0),
        child: Column(
          children: [
            Container(
              alignment: Alignment.center,
              child: Text(
                'List of students info',
                textScaleFactor: 1.5,
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
            ),
            Table(
              defaultVerticalAlignment: TableCellVerticalAlignment.middle,
              border: TableBorder.all(
                color: Colors.blue,
                width: 2.0,
              ),
              children: [
                TableRow(children: [
                  TableCell(
                    child: Container(
                        color: Colors.deepOrange,
                        alignment: Alignment.center,
                        child: Text(
                          'Name',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  TableCell(
                    child: Container(
                        color: Colors.green,
                        alignment: Alignment.center,
                        child: Text(
                          'Email',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                  TableCell(
                    child: Container(
                        color: Colors.deepPurple,
                        alignment: Alignment.center,
                        child: Text(
                          'Action',
                          style: TextStyle(color: Colors.white),
                        )),
                  ),
                ]),
                TableRow(children: [
                  TableCell(
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'Ibrahim',
                        )),
                  ),
                  TableCell(
                    child: Container(
                        alignment: Alignment.center,
                        child: Text(
                          'ibrahim@gmail.com',
                        )),
                  ),
                  TableCell(
                    child: Container(
                        alignment: Alignment.center,
                        child: Row(
                          children: [
                            IconButton(
                                onPressed: () {
                                  Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                              EditStudentPage()));
                                },
                                icon: Icon(Icons.add)),
                            IconButton(
                                onPressed: () {}, icon: Icon(Icons.delete)),
                          ],
                        )),
                  ),
                ]),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
