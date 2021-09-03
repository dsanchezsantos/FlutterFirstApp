import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title:
        "Contador de Pessoas",
      home:
        Home(

      )));
}

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {

  int _people = 0;
  String _infoText = "Pode entrar !";

  void _changePeople (int delta) {
    setState(() {
      _people += delta;

      if (_people < 0) {
        _infoText = "Mundo invertido ?!";
      } else if (_people > 10) {
        _infoText = "Lotado !";
      } else {
        _infoText = "Pode entrar !";
      }

    });
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Image.asset(
          "images/fundo_tela.jpg",
          fit: BoxFit.cover,
          height: 1000.0,
        ),
        Column(
          mainAxisAlignment:
          MainAxisAlignment.center,
          children: [
            Text(
              "Pessoas: $_people",
              style: TextStyle(
                  color: Colors.black,
                  fontWeight: FontWeight.bold
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                  FlatButton(
                      onPressed: () {
                        _changePeople(1);
                      },
                      child: Text(
                        "+1",
                        style:
                        TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                        ),
                      )
                  ),
                ),
                Padding(
                  padding: EdgeInsets.all(15.0),
                  child:
                  FlatButton(
                      onPressed: () {
                        _changePeople(-1);
                      },
                      child: Text(
                        "-1",
                        style:
                        TextStyle(
                          color: Colors.black,
                          fontSize: 40.0,
                        ),
                      )
                  ),
                ),
              ],
            ),
            Text(
              _infoText,
              style: TextStyle(
                  color: Colors.black,
                  fontStyle: FontStyle.italic,
                  fontSize: 30.0
              ),
            )
          ],
        )
      ],
    );
  }
}

