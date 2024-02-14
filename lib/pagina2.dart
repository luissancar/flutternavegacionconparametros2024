import 'package:flutter/material.dart';

class Pagina2 extends StatelessWidget {
//
  final String textoEnviado;

  const Pagina2(this.textoEnviado, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: Text("Página 2"),
        ),
        body: Container(
            color: Colors.deepOrange,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height,
            child: Column(
              children: [
                Padding(
                    padding: EdgeInsets.all(20),
                    child: Text(
                      textoEnviado,
                      textAlign: TextAlign.center,
                      style:
                          TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                    )),
                ElevatedButton(
                    onPressed: () => {Navigator.pop(context)},
                    child: Text("Regresar",
                        style: TextStyle(
                            fontSize: 30, fontWeight: FontWeight.bold)))
              ],
            )));
  }
}
