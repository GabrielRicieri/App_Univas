import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:univas_edu_sistemas/Animations/FadeAnimations.dart';
import 'package:image_picker/image_picker.dart';
import 'dart:io';
import 'dart:async';

class MinhaConta extends StatelessWidget {
  @override
  final Color _textColor = Colors.grey[900];

  File _imagemSelecionada;
  File pickImage;
  Future _recuperarImagem(String origemImagem) async {
    switch (origemImagem) {
      case "camera":
    }
  }

  Widget build(BuildContext context) {
    final String _alunoNome = 'Luiz Fhelipy';
    final String _cursoNome = 'Sistemas de Informação';
    final String _nascimento = '18/05/2000';
    final String _faculdade = 'Universidade do vale do sapucai';
    final String _ra = '98013955';
    final String _periodo = '7';
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 15),
        child: Container(
          child: SingleChildScrollView(
            child: Column(
              
              children: <Widget>[
                CircleAvatar(
                    radius: 80,
                    backgroundColor: Colors.grey,
                    backgroundImage: AssetImage("assets/images/eu.png")),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    TextButton(
                      child: Text("Camera"),
                      onLongPress: () {
                        _recuperarImagem("camera");
                      },
                    ),
                    TextButton(
                      child: Text("Galeria"),
                      onLongPress: () {
                        _recuperarImagem("galeria");
                      },
                    ),
                  ],
                ),
                Text("$_alunoNome",
                    style: TextStyle(fontSize: 30, color: Colors.black)),
                _text('RA: ', _ra, Icons.account_box),
                _text('NASCIMENTO: ', _nascimento , Icons.calendar_today),
                _text('FACULDADE: ', _faculdade, Icons.home),
                _text('CURSO: ', _cursoNome, Icons.menu_book),
                _text('PERIODO: ', _periodo, Icons.circle),

              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _text(String a, String b, IconData c ) {
    return Padding(
      padding: EdgeInsets.only(top:10 , left: 30),
      child:Column(
        
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            contentPadding: EdgeInsets.zero,
                leading: Icon(
                  c,
                  color: Colors.black,
                ),
                title: Text(
                  a,
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                },
              ),
          Text(b , style: TextStyle(fontSize: 20, color: Colors.grey),),
        ],
      ),
    );
  }
}
