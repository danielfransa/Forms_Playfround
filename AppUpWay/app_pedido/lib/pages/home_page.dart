import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final _controller = TextEditingController();
  var estadoTextField = '';
  //lista pães
  static List<String> paes = [
    'Três Queijos',
    'Integral',
    'Queijo com Orégano',
    'Italiano'
  ];
  String? _paesSelecionados = paes.first;
  List<String> _paesSelecionados1 = [];

  //lista recheio
  static List<String> recheios = [
    'Frango Teriaki',
    'Costelinha Barbecue',
    'Bacon Ranch',
  ];
  String? _recheioSelecionados = recheios.first;
  List<String> _recheiosSelecionados = [];

  //lista do adicional
  static List<String> adicional = [
    'Bacon',
    'Salame',
    'Rosbife',
  ];
  String? _adicionalSelecionados = adicional.first;
  List<String> _adicionaisSelecionados = [];
  //Swich dobro recheio
  bool _estadoSwith = false;
  //quente ou frio
  static List<String> quenteFrio = [
    'Quente',
    'Frio',
  ];
  String? _quenteFrioSelecionados = quenteFrio.first;
  List<String> _quenteFriosSelecionados = [];
  //lista saladas
  static List<String> salada = [
    'Tomate',
    'Alface',
    'Cebola',
    'Rúcula',
    'Pícles',
    'Azeitona',
  ];
  String? _saladaSelecionados = salada.first;
  List<String> _saladasSelecionados = [];
  //lista molhos
  static List<String> molho = [
    'Maionese',
    'Katchup',
    'Mostarda',
    'Mostada com Mel',
    'Barbecue',
    'Maionese temperada',
    'Chipotle',
  ];
  String? _molhoSelecionados = molho.first;
  String? _molhoSelecionados1 = molho.first;
  String? _molhoSelecionados2 = molho.first;
  List<String> _molhosSelecionados = [];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: Text(
            'UpWay',
            style: Theme.of(context).textTheme.headline1,
          ),
          centerTitle: true,
          backgroundColor: Colors.green),
      body: SingleChildScrollView(
        child: Column(
          children: [
            //escolha o tipo de pão
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Escolha o tipo de pão",
                  style: Theme.of(context).textTheme.headline2,
                )),
            Column(
              children: paes
                  .map((p) => ListTile(
                        leading: Radio<String>(
                          value: p,
                          groupValue: _paesSelecionados,
                          onChanged: (value) {
                            setState(() {
                              _paesSelecionados = value;
                            });
                          },
                        ),
                        title: Text(p),
                      ))
                  .toList(),
            ),
            const Divider(
              indent: 22,
              endIndent: 22,
              height: 15,
              thickness: 1,
              color: Colors.green,
            ),
            //escolha o recheio
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Escolha o tipo de recheio",
                  style: Theme.of(context).textTheme.headline2,
                )),
            Column(
              children: recheios
                  .map((r) => ListTile(
                        leading: Radio<String>(
                          value: r,
                          groupValue: _recheioSelecionados,
                          onChanged: (value) {
                            setState(() {
                              _recheioSelecionados = value;
                            });
                          },
                        ),
                        title: Text(r),
                      ))
                  .toList(),
            ),
            const Divider(
              indent: 22,
              endIndent: 22,
              height: 15,
              thickness: 1,
              color: Colors.green,
            ),
            //escolha o adicional
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Algum adicional?",
                  style: Theme.of(context).textTheme.headline2,
                )),
            Row(
                children: adicional
                    .map((a) => Expanded(
                          child: Row(
                            children: [
                              Checkbox(
                                  value: _adicionaisSelecionados.contains(a),
                                  onChanged: ((selected) {
                                    setState(() {
                                      if (selected!) {
                                        _adicionaisSelecionados.add(a);
                                      } else {
                                        _adicionaisSelecionados.remove(a);
                                      }
                                    });
                                  })),
                              Expanded(child: Text(a))
                            ],
                          ),
                        ))
                    .toList()),
            const Divider(
              indent: 22,
              endIndent: 22,
              height: 15,
              thickness: 1,
              color: Colors.green,
            ),
            //dobro recheio
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Dobro de recheio",
                  style: Theme.of(context).textTheme.headline2,
                )),
            Row(
              children: [
                Text('Recheio '),
                Switch(
                    value: _estadoSwith,
                    onChanged: (((value) {
                      print('Switch: $_estadoSwith');
                      setState(() {
                        _estadoSwith = value;
                      });
                    }))),
              ],
            ),
            const Divider(
              indent: 22,
              endIndent: 22,
              height: 15,
              thickness: 1,
              color: Colors.green,
            ),
            //Quente ou Frio
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Quente ou Frio?",
                  style: Theme.of(context).textTheme.headline2,
                )),
            DropdownButton(
                value: _quenteFrioSelecionados,
                //isExpanded: true,
                items: quenteFrio
                    .map((q) => DropdownMenuItem(value: q, child: Text(q)))
                    .toList(),
                onChanged: ((value) {
                  setState(() {
                    _quenteFrioSelecionados = value;
                  });
                })),
            const Divider(
              indent: 22,
              endIndent: 22,
              height: 15,
              thickness: 1,
              color: Colors.green,
            ),
            //Escolha da Salada
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Escolha a Salada",
                  style: Theme.of(context).textTheme.headline2,
                )),
            Column(
                children: salada
                    .map((s) => Row(
                          children: [
                            Checkbox(
                                value: _saladasSelecionados.contains(s),
                                onChanged: ((selected) {
                                  setState(() {
                                    if (selected!) {
                                      _saladasSelecionados.add(s);
                                    } else {
                                      _saladasSelecionados.remove(s);
                                    }
                                  });
                                })),
                            Expanded(child: Text(s))
                          ],
                        ))
                    .toList()),
            const Divider(
              indent: 22,
              endIndent: 22,
              height: 15,
              thickness: 1,
              color: Colors.green,
            ),
            //Escolha dos Molhos
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Escolha os molhos",
                  style: Theme.of(context).textTheme.headline2,
                )),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Primeiro molho",
                  style: Theme.of(context).textTheme.headline3,
                )),
            DropdownButton(
                value: _molhoSelecionados,
                //isExpanded: true,
                items: molho
                    .map((m) => DropdownMenuItem(value: m, child: Text(m)))
                    .toList(),
                onChanged: ((value) {
                  setState(() {
                    _molhoSelecionados = value;
                  });
                })),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Segundo molho",
                  style: Theme.of(context).textTheme.headline3,
                )),
            DropdownButton(
                value: _molhoSelecionados1,
                //isExpanded: true,
                items: molho
                    .map((m) => DropdownMenuItem(value: m, child: Text(m)))
                    .toList(),
                onChanged: ((value) {
                  setState(() {
                    _molhoSelecionados1 = value;
                  });
                })),
            Padding(
                padding: EdgeInsets.symmetric(vertical: 8, horizontal: 16),
                child: Text(
                  "Terceiro molho",
                  style: Theme.of(context).textTheme.headline3,
                )),
            DropdownButton(
                value: _molhoSelecionados2,
                //isExpanded: true,
                items: molho
                    .map((m) => DropdownMenuItem(value: m, child: Text(m)))
                    .toList(),
                onChanged: ((value) {
                  setState(() {
                    _molhoSelecionados2 = value;
                  });
                })),
          ],
        ),
      ),
    );
  }
}
