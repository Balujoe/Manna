import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class AddInformationPage extends StatefulWidget {
  @override
  _AddPersonPageState createState() => _AddPersonPageState();
}

class _AddPersonPageState extends State<AddInformationPage> {
  final databaseReference = Firestore.instance;
  final TextEditingController nameController = new TextEditingController();
  final TextEditingController countryController = new TextEditingController();
  final TextEditingController numberController = new TextEditingController();
  final TextEditingController zipCodeController = new TextEditingController();
  final TextEditingController cityController = new TextEditingController();
  final TextEditingController stateController = new TextEditingController();
  final TextEditingController addressControler = new TextEditingController();
  final TextEditingController locationControler = new TextEditingController();

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
                  controller: nameController,
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
                  controller: countryController,
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
                      controller: numberController,
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
                  controller: zipCodeController,
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
                  controller: cityController,
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
                  controller: stateController,
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
                      controller: addressControler,
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
                      controller: locationControler,
                      decoration: InputDecoration(
                          border: OutlineInputBorder(), labelText: 'Location'),
                    ))
              ],
            ),
            RaisedButton(
                child: Text('Save'),
                onPressed: () {
                  setState(() {
                    print(nameController.text);
                    Firestore.instance.collection('Profile').add({
                      "name": nameController.text,
                      "country": countryController.text
                    });
                    nameController.clear();
                    countryController.clear();
                    numberController.clear();
                    zipCodeController.clear();
                    cityController.clear();
                    stateController.clear();
                    addressControler.clear();
                    locationControler.clear();
                  });
                }),
          ],
        ));
  }
}
