import 'package:flutter/material.dart';

class FiltersPage extends StatefulWidget {
  static const routeName = '/filters';
  final Function saveFilters;
  FiltersPage(this.saveFilters);

  @override
  _FiltersPageState createState() => _FiltersPageState();
}

class _FiltersPageState extends State<FiltersPage> {

  bool _isGlutenFree= false;
  bool _isVegeterian = false;
  bool _isVegan = false;
  bool _isLactoseFree = false;

  Widget createFilterSwitchTile(bool filter, String text,Function updateVal){
    return  SwitchListTile(value: filter, title: Text(text),
               onChanged: updateVal as Function(bool)
               
                );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Filters'),
      leading: IconButton(icon: Icon(Icons.save),onPressed: (){
        Map<String,bool> saveData = {
          'gluten-free': _isGlutenFree,
          'vegeterian': _isVegeterian,
          'vegan': _isVegan,
          'lactose-free':_isLactoseFree
        };
      widget.saveFilters(saveData);
      },),),
      body: Column(
        children: [
         Container(padding: EdgeInsets.all(30),width: double.infinity,child: Text('Choose your Prefered Filters ...',style: TextStyle(fontSize: 20,fontWeight: FontWeight.bold),),),
         Expanded(child: ListView(
           children: [
             createFilterSwitchTile(_isGlutenFree, 'Gluten-Free',(val){
               setState(() {
                 _isGlutenFree = val;
               });
             }),
             createFilterSwitchTile(_isVegeterian, 'Vegeterian',(val){
               setState(() {
                 _isVegeterian = val;
               });
             }),
             createFilterSwitchTile(_isVegan, 'Vegan',(val){
               setState(() {
                 _isVegan = val;
               });
             }),
             createFilterSwitchTile(_isLactoseFree, 'Lactose-Free',(val){
               setState(() {
                 _isLactoseFree = val;
               });
             }),
           ],
         ))
        ],
      ),
    );
  }
}