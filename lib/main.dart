import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "Contador de Pessoas",
      home: Stack(
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
                "Pessoas: 0",
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

                        },
                        child: Text("+1",
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

                        },
                        child: Text("-1",
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
                "Pode entrar !",
                style: TextStyle(
                    color: Colors.black,
                    fontStyle: FontStyle.italic,
                    fontSize: 30.0
                ),
              )
            ],
          )
        ],
      )));
}
