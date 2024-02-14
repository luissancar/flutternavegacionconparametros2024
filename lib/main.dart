import 'package:flutter/material.dart';
import 'package:navegacionconparametros2024/pagina2.dart';

void main() => runApp(MyApp()); // llama al primer widget que se ejecutará

/*
void main() {
    runApp(MyApp);
}*/

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // es el estilo de la app
      title: "Navegacion", // nombre de la app
      home: Inicio(),
    );
  }
}

class Inicio extends StatefulWidget {
  Inicio({super.key});

  @override
  _InicioState createState() => _InicioState();
}

class _InicioState extends State<Inicio> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // estructura básica de una app
      // estructura de una app movil
      appBar: AppBar(
        title: Text("Navegacion"),
      ),
      body: Container(
        width: MediaQuery.of(context).size.width,
        height: MediaQuery.of(context).size.height,
        child: Container(
          color: Colors.blue, // Color de fondo del contenedor

          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text("Principal"),
              ElevatedButton(
                  onPressed: () => {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Pagina2("holas")))
                  },
                  child: Text("Ir otra página"))
            ],
          ),
        ),
      ),
    );
  }
}