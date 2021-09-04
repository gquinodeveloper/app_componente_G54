import 'package:app_componentes/pages/widgets/primary_button.dart';
import 'package:flutter/material.dart';

class AlertPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //backgroundColor: Colors.white,
      appBar: AppBar(
        //backgroundColor: Colors.white,
        //elevation: 0,
        title: Text(
          "Alert",
          style: TextStyle(
            //color: Color.fromRGBO(255, 169, 80, 1.0),
            color: Colors.white,
          ),
        ),
      ),
      body: Center(
        child: TextButton(
          onPressed: () => _mostrarAlerta(context),
          /* onPressed: () {
            _mostrarAlerta(context);
          }, */
          child: Text("Show Alert"),
        ),
      ),
    );
  }

  void _mostrarAlerta(BuildContext context) {
    showDialog(
      barrierDismissible: false,
      barrierColor: Colors.black26,
      context: context,
      builder: (context) {
        return AlertDialog(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20.0),
          ),
          title: Text("Cabecera"),
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text(
                  "Some of the packages that demonstrate the highest levels of quality."),
              FlutterLogo(size: 100.0),
            ],
          ),
          actions: [
            TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Cancelar"),
            ),
            /* TextButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Ok"),
            ), */
            GestureDetector(
              onTap: () {
                Navigator.of(context).pop();
              },
              child: Container(
                padding: EdgeInsets.all(8.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15.0),
                  gradient: LinearGradient(
                    colors: [
                      Colors.redAccent,
                      Colors.pink,
                    ],
                    begin: Alignment.topCenter,
                    end: Alignment.bottomCenter,
                  ),
                ),
                child: Text(
                  "Aceptar",
                  style: TextStyle(
                      color: Colors.white, fontWeight: FontWeight.w500),
                ),
              ),
            ),
          ],
        );
      },
    );
  }
}
