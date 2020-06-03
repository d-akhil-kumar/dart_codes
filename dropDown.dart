import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _MyAppState();
  }
}

class _MyAppState extends State<MyApp> {
  String _selectedItem = 'akill';

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
     
      home: Scaffold(
        appBar: AppBar(
          title: Text('Drop Down'),
        ),
        body: Center(
          child: Container(
            
            padding: EdgeInsets.all(20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(5.0),
            
              color: Colors.lightBlueAccent,
            ),
            child: DropdownButton(
                value: this._selectedItem,
                style: TextStyle(fontSize: 80.0, color: Colors.black),
                itemHeight: 100.0,
                
                //style: TextStyle(fontSize: 80.0,),
                //itemHeight: 100.0,
                items: [
                  //items available to slect in the dropdown
                  // it takes a list of type DropdownMenuItem

                  DropdownMenuItem(child: Text('akill'), value: 'akill'),

                  DropdownMenuItem(child: Text('coder'), value: 'coder'),

                  DropdownMenuItem(child: Text('flutter'), value: 'flutter'),
                ],
                onChanged: (value) {
                  // to store the value selected
                  setState(() {
                    this._selectedItem = value;
                  });
                }),
          ),
        ),
      ),
    );
  }
}
