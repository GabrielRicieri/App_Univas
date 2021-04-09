import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

final List<String> _materias = [
  "ALGORITMO",
  "ARQUITETURA DE COMPUTADORES",
  "FUNDAMENTOS DE SISTEMAS DE INFORMAÇÃO",
  "MATEMÁTICA 1",
  "METODOLOGIA DO TRABALHO CIENTÍFICO",
  "NOÇÕES DE DIREITO",
];
final List<String> _professores = [
  "Rodrigo Faria",
  "André Luiz Martins de Oliveira",
  "Roberto Ribeiro Rocha",
  "Paulo Sérgio Gomes Negrão",
  "Daniel Pereira Faria",
  "Dionísio Ailton Pereira",
];

class NotasParciais extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      scrollDirection: Axis.vertical,
      itemCount: _materias.length,
      itemBuilder: (context, index) {
        return _cardProvas(index);
      },
    );
  }

  Widget _cardProvas(int index) {
    return Container(
      padding: EdgeInsets.all(7),
      child: Card(
        color: Colors.grey[100],
        child: Container(
          padding: EdgeInsets.all(8),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                "${_materias[index]}",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              Text(
                "${_professores[index]}",
                style: TextStyle(fontSize: 10),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                children: [
                  Container(
                    padding:
                        EdgeInsets.only(top: 5, bottom: 5, left: 20, right: 20),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.all(Radius.circular(
                        5.0,
                      ) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      "Matriculado",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 150),
                    child: Text(
                      "9.0",
                      style: TextStyle(color: Colors.grey[600], fontSize: 30),
                    ),
                  )
                ],
              ),
              SizedBox(
                height: 7,
              ),
              Container(
                child: Text(
                  "FALTAS 0",
                  style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),
                ),
              ),
              SizedBox(
                height: 40,
              ),
              Row(
                children: [
                  Container(
                    child: Text("Prova 1"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 40),
                    child: Text("Prova 2"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 28),
                    child: Text("Trabalho 1"),
                  ),
                  Container(
                    padding: EdgeInsets.only(left: 28),
                    child: Text("Trabalho 2"),
                  ),
                ],
              ),
              SizedBox(
                height: 5,
              ),
              Row(
                children: [
                  Padding(padding: EdgeInsets.only(left: 5)),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.all(Radius.circular(
                        5.0,
                      ) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 60)),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.all(Radius.circular(
                        5.0,
                      ) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 60)),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.all(Radius.circular(
                        5.0,
                      ) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                  Padding(padding: EdgeInsets.only(left: 60)),
                  Container(
                    padding: EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: Colors.green[700],
                      borderRadius: BorderRadius.all(Radius.circular(
                        5.0,
                      ) //                 <--- border radius here
                          ),
                    ),
                    child: Text(
                      "0",
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
