import 'package:flutter/material.dart';

class AddInformationPage extends StatefulWidget {
  @override
  _AddPersonPageState createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddInformationPage> {
  final TextEditingController _nameController = new TextEditingController();
  final TextEditingController _numberController = new TextEditingController();
  final TextEditingController _addressControler = new TextEditingController();
  final TextEditingController _foodItemControler = new TextEditingController();
  final TextEditingController _numberOfPersonControler =
      new TextEditingController();
  final TextEditingController _amountPerDayControler =
      new TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text('Add Info'),
        ),
        body: Column(
          children: <Widget>[
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                height: 35,
                width: 300,
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Full Name',
                  ),
                ),
              )
            ]),
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                height: 35,
                width: 300,
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Country',
                  ),
                ),
              )
            ]),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(15),
                    height: 35,
                    width: 300,
                    child: TextField(
                      controller: _numberController,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Number'),
                    ))
              ],
            ),
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                height: 35,
                width: 300,
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'Zip Code',
                  ),
                ),
              )
            ]),
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                height: 35,
                width: 300,
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'City',
                  ),
                ),
              )
            ]),
            Row(children: <Widget>[
              Container(
                margin: EdgeInsets.all(15),
                height: 35,
                width: 300,
                child: TextField(
                  controller: _nameController,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: 'State',
                  ),
                ),
              )
            ]),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(15),
                    height: 35,
                    width: 300,
                    child: TextField(
                      controller: _addressControler,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Address'),
                    ))
              ],
            ),
            Row(
              children: <Widget>[
                Container(
                    margin: EdgeInsets.all(15),
                    height: 35,
                    width: 300,
                    child: TextField(
                      controller: _foodItemControler,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Location'),
                    ))
              ],
            ),
            RaisedButton(
                child: Text('Save'),
                onPressed: () {
                  setState(() {
                    _nameController.clear();
                    _numberController.clear();
                    _addressControler.clear();
                    _foodItemControler.clear();
                    _numberOfPersonControler.clear();
                    _amountPerDayControler.clear();
                  });
                }),
          ],
        ));
  }
}
