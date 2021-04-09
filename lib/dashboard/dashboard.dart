import 'package:flutter/material.dart';
import 'package:univas_edu_sistemas/dashboard/financeiro.dart';
import 'package:univas_edu_sistemas/dashboard/data_provas.dart';
import 'package:univas_edu_sistemas/dashboard/horarios_aulas.dart';
import 'package:univas_edu_sistemas/dashboard/minha_conta.dart';
import 'package:univas_edu_sistemas/dashboard/noticias.dart';
import 'package:univas_edu_sistemas/dashboard/notas_parciais.dart';

final List<Widget> _children = [
  Noticias(),
  NotasParciais(),
  Financeiro(),
  DataProvas(),
  MinhaConta(),
  HorariosAula(),
];

class Dashboard extends StatefulWidget {
  @override
  _DashboardState createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard>
    with SingleTickerProviderStateMixin {
  GlobalKey<ScaffoldState> _drawerKey = GlobalKey();

  int _bottomindex = 0;
  int _dashindex = 0;

  @override
  Widget build(BuildContext context) {
    final String _alunoNome = 'Luiz Fhelipy';
    final String _cursoNome = 'Sistemas de Informação';
    return Scaffold(
        appBar: AppBar(
          title: Text("Bem vindo $_alunoNome"),
          backgroundColor: Colors.green[700],
        ),
        backgroundColor: Colors.white,
        key: _drawerKey,
        body: _children[_dashindex],
        bottomNavigationBar: BottomNavigationBar(
          currentIndex: _bottomindex,
          onTap: (index) {
            setState(() {
              _bottomindex = index;
              _dashindex = _bottomindex;
            });
          },
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.warning_rounded),
              label: 'Notícias',
              backgroundColor: Colors.green[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.insert_chart),
              label: 'Notas Parciais',
              backgroundColor: Colors.green[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.attach_money),
              label: 'Financeiro',
              backgroundColor: Colors.green[700],
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.calendar_today_rounded),
              label: 'Datas de Provas',
              backgroundColor: Colors.green[700],
            ),
          ],
          selectedItemColor: Colors.white,
        ),
        drawer: Drawer(
          child: Column(
            children: <Widget>[
              Container(
                width: double.infinity,
                padding: EdgeInsets.all(20),
                color: Colors.green[700],
                child: Center(
                  child: Column(
                    children: <Widget>[
                      Container(
                        width: 100,
                        height: 100,
                        margin: EdgeInsets.only(
                          top: 25,
                          bottom: 10,
                        ),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          image: DecorationImage(
                              image: AssetImage('assets/images/eu.png'),
                              fit: BoxFit.contain),
                        ),
                      ),
                      Text("$_alunoNome",
                          style: TextStyle(fontSize: 22, color: Colors.white)),
                      Padding(
                        padding: EdgeInsets.only(top: 5),
                        child: Text(
                          "$_cursoNome",
                          style: TextStyle(color: Colors.white),
                        ),
                      )
                    ],
                  ),
                ),
              ),
              ListTile(
                leading: Icon(
                  Icons.person,
                  color: Colors.black,
                ),
                title: Text(
                  'Minha Conta',
                  style: TextStyle(color: Colors.black),
                ),
                onTap: () {
                  setState(() {
                    _dashindex = 4;
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                leading:
                    Icon(Icons.calendar_today_rounded, color: Colors.black),
                title: Text('Data de Provas',
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    _dashindex = 3;
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.attach_money, color: Colors.black),
                title:
                    Text('Financeiro', style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    _dashindex = 2;
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.access_time, color: Colors.black),
                title: Text('Horários de Aula',
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    _dashindex = 5;
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.insert_chart, color: Colors.black),
                title: Text('Notas Parciais',
                    style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    _dashindex = 1;
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.warning_rounded, color: Colors.black),
                title: Text('Notícias', style: TextStyle(color: Colors.black)),
                onTap: () {
                  setState(() {
                    _dashindex = 0;
                    Navigator.of(context).pop();
                  });
                },
              ),
              ListTile(
                leading: Icon(Icons.exit_to_app, color: Colors.black),
                title: Text('Sair', style: TextStyle(color: Colors.black)),
                onTap: () {},
              ),
            ],
          ),
        ));
  }
}
