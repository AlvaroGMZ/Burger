import 'package:flutter/material.dart';

class ThirdPage extends StatefulWidget {
  @override
  _ThirdPageState createState() => _ThirdPageState();
}

class _ThirdPageState extends State<ThirdPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.grey,
          title: Text('Nuestro puesto Alvaro'),
        ), // fin app barr
        body: SingleChildScrollView(
          padding: EdgeInsets.all(20),
          child: Center(
            child: Column(
              children: <Widget>[
                _crearCard1(),
                _crearCard2(),
                _crearCard3()
              ], // fin <widget>
            ), // fin column
          ), // fin child center
        ) // fin body sc
        ); // fin scaffold
  } // fin widget

  Widget _crearCard1() {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Comida rica',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20),
            ),
            SizedBox(
              height: 20,
            ),
            Text('Las mejores hamburguesas de la ciudad SISI')
          ], // fin <widget>
        ), // fin child column
      ), // fin container
    ); // fin return
  } // fin del widget

  Widget _crearCard2() {
    return Card(
      elevation: 5,
      color: Colors.greenAccent,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Column(
          children: <Widget>[
            Text(
              'Ven a comer de lo mejor que haz probado)',
              style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20, color: Colors.white),
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Los mejores precios de toda la ciudad, no te lo pierdas',
              style: TextStyle(color: Colors.white),
            ) // fin text
          ], // fin <widget>
        ), // fin de child column
      ), // fin container
    ); // fin de return card
  } // fin de widget card2

  Widget _crearCard3() {
    return Card(
      elevation: 5,
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(20)),
      child: Container(
        child: Column(
          children: <Widget>[
            ClipRRect(
              borderRadius: BorderRadius.only(topRight: Radius.circular(20), topLeft: Radius.circular(20)),
              child: new Image.asset(
                'assets/donchetto.jpg',
              ), // fin imagen
            ), // fin clip react
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text('Don Chetto te invita a probar'),
            ) // fin padding
          ], // fin <widget>
        ), // fin child column
      ), // fin child container
    ); // fin return card
  } // fin de widget
} // fin de third page
