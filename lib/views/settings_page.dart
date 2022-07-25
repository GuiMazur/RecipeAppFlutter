import 'package:flutter/material.dart';
import 'package:test1/widgets/main_drawer_widget.dart';

class Configuracoes extends StatefulWidget {
  const Configuracoes({Key? key}) : super(key: key);

  @override
  State<Configuracoes> createState() => _ConfiguracoesState();
}

class _ConfiguracoesState extends State<Configuracoes> {

  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text('Configurações'),
        titleTextStyle: TextStyle(
          color: Colors.white,
          fontSize: 20,
          fontWeight: FontWeight.bold
        ),
      ),
      drawer: MainDrawer(),
      body: ListView(
        padding: EdgeInsets.symmetric(vertical: 5.0, horizontal: 15.0),
        children: [
          SizedBox(
            height: 140,
            child: Center(
              child: Text('Configurações',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 35
                ),
              ),
            ),
          ),
          SwitchListTile(
            title: Text('Vegana'),
            value: _isSelected,
            onChanged: (bool newValue){
              setState(() {
                _isSelected = newValue;              
              });
            },
          )
        ],
      ),
    );
  }
}