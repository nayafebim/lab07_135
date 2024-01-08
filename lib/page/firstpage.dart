

import 'package:flutter/material.dart';

class Myfisrtpage extends StatefulWidget {
  const Myfisrtpage({super.key});

  @override
  State<Myfisrtpage> createState() => _MyfisrtpageState();
}

class _MyfisrtpageState extends State<Myfisrtpage> {

  List<ListItem> foodtype = [
    ListItem("Yum","ยำ"),
    ListItem("TomYum","ต้มยำ"),
    ListItem("JanDeaw","จานเดียว"),
    ListItem("SonTum","ส้มตำ"),
  ];

  List<DropdownMenuItem<ListItem>> _dropdownMenuItems = [];

  ListItem? _selectedItem;

  List<DropdownMenuItem<ListItem>> buildDrownItem(
    List<ListItem> foodtype) {
      List<DropdownMenuItem<ListItem>> items = [];

      for (ListItem ft in foodtype) {
      
        items.add(DropdownMenuItem(
          value: ft ,
          child: Text(ft.name),),);


      }

      return items;


  }


  @override
  void initState() {
  
    super.initState();
    _dropdownMenuItems = buildDrownItem(foodtype);
    _selectedItem = _dropdownMenuItems[0].value;
  }




  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("lab07 dropdown"),
      ),

      body: Column(
        children: [Text("เลือกประเภทอาหารที่ต้องการ"),
        DropdownButton(value: _selectedItem, items: _dropdownMenuItems, onChanged: (value) {
        setState(() {
          _selectedItem = value!;
        });
        },)],
      ),
    );
  }
  
 
}

class ListItem{
  String value;
  String name;

  ListItem(this.value,this.name);
}
