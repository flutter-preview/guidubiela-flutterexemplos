import 'package:flutter/material.dart';

/*void main() {
  runApp(
    MaterialApp(
      title: 'Named Routes Demo',
      initialRoute: '/',
      routes: {
        '/': (context) => FirstScreen(),
        '/second': (context) => SecondScreen(),
      },
    )
  );
}

class FirstScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("First Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          child: Text('Launch screen'),
          onPressed: () {
            Navigator.pushNamed(context, '/second');
          },
        )
      ),
    );
  }
}

class SecondScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Screen"),
      ),
      body: Center(
        child: ElevatedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}*/
/*void main() => runApp(ExemploInicial());

class ExemploInicial extends StatefulWidget {
  ExemploInicial({Key? key}) : super(key: key);
  @override
  _ExemploInicial createState() => _ExemploInicial();
}*/

/*
class _ExemploInicial extends State {
  var _currentPage = 0;
  var _pages = {
    Text("Página 1 - Anúncios"),
    Text("Página 2 - Aniversário"),
    Text("Página 3 - Contatos")
  };
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: _pages.elementAt(_currentPage)
        ),
        bottomNavigationBar: BottomNavigationBar(
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.announcement), label: "Anúncios"
            ),
            BottomNavigationBarItem(
              icon:  Icon(Icons.cake, color: Colors.red,), label: "Anivesário"
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mail), label: "Contatos" 
            )
          ],
          currentIndex: _currentPage,
          fixedColor: Colors.yellow,
          onTap: (int inIndex) {
            setState(() {
              _currentPage = inIndex;
            });
          },
        ),
      ),
    );
  }
}*/

/*class ExemploInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3, // abas
        child: Scaffold(
          appBar: AppBar(
            title: Text("Tela 1"),
            bottom: TabBar(tabs: [
              Tab(icon: Icon(Icons.announcement)),
              Tab(icon: Icon(Icons.cake)),
              Tab(icon: Icon(Icons.mail)),
            ]),
          ),
          body: TabBarView(
            children: [
              Center(child: Text("Anúncios")),
              Center(child: Text("Aniversário")),
              Center(child: Text("Contatos")),
            ],
          ),
        ),
      )
    );
  }
}*/

/*class _ExemploInicial extends State {
  var _currentStep = 0;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stepper(
          type: StepperType.horizontal,
          currentStep: _currentStep,
          onStepContinue: 
            _currentStep < 2 ? () =>
              setState(() => _currentStep -= 1) : null,
          steps: [
            Step(
              title: Text("Get ready"),
              isActive: true,
              content: Text("Let's begin!"),
            ),
            Step(
              title: Text("Get set"),
              isActive: true,
              content: Text("Ok, quase lá")
            ),
            Step(
              title: Text("Go!"),
              isActive: true,
              content: Text("E fim!")
            )
          ]
        )
      ),
    );
  }
}*/

/*class LoginData {
  String username = "";
  String password = "";
}

class _ExemploInicial extends State {
  LoginData _loginData = new LoginData();
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(50.0),
          child: Form(
            key: this._formKey,
            child: Column(
              children: [
                TextFormField(
                  keyboardType: TextInputType.emailAddress,
                  validator: (String? inValue) {
                    if (inValue!.length == 0) {
                      return "Por favor entre com o usuário";
                    }
                    return null;
                  },
                  onSaved: (String? inValue) {
                    this._loginData.username = inValue!;
                  },
                  decoration: InputDecoration(
                    hintText: "nome@servidor.com",
                    labelText: "Username (e-mail)"
                  ),
                ),
                TextFormField(
                  obscureText: true,
                  validator: (String? inValue) {
                    if (inValue!.length < 8) {
                      return "Senha deve ser maior ou igual a 8 caracteres";
                    }
                    return null;
                  },
                  onSaved: (String? inValue) {
                    this._loginData.password = inValue!;
                  },
                  decoration: InputDecoration(
                    hintText: "Senha",
                    labelText: "Senha"
                  ),
                ),
                ElevatedButton(
                  child: Text("Login"),
                  onPressed: () {
                    if (_formKey.currentState!.validate()) {
                      _formKey.currentState!.save();
                      print("Usuário: ${_loginData.username}");
                      print("Senha: ${_loginData.password}");
                    }
                  },
                )
              ],
            )
          )
        ),
      )
    );
  }
}*/

/*class _ExemploInicial extends State {
  GlobalKey<FormState> _formKey = new GlobalKey<FormState>();
  var _checkboxValue = false;
  var _switchValue = false;
  var _sliderValue = .3;
  var _radioValue = 1;

  @override 
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          padding: EdgeInsets.all(35.0),
          child: Form(
            key: this._formKey,
            child: Column(
              children: [
                Row(
                  children: [
                    Text("Opção checkbox: "),
                    Checkbox(
                      value: _checkboxValue,
                      onChanged: (bool? inValue) {
                        setState(() {
                          _checkboxValue = inValue!;
                          print("Checkbox: " + _checkboxValue.toString());
                        });
                      } 
                    )
                  ]
                ),
                Row(
                  children: [
                    Text("Opção switch: "),
                    Switch(
                      value: _switchValue,
                      onChanged: (bool inValue) {
                        setState(() {
                          _switchValue = inValue;
                          print("Switch: " + _switchValue.toString());
                        });
                      }
                    ),
                  ],
                ),
                Row(
                  children: [
                    Text("Volume: "),
                    Slider(
                      min: 0,
                      max: 20,
                      value: _sliderValue,
                      onChanged: (inValue) {
                        setState(() => _sliderValue = inValue);
                        print("Slider: " + _sliderValue.toString());
                      }
                    ),
                  ]
                ),
                Row(
                  children: [
                    Radio(
                      value: 1,
                      groupValue: _radioValue,
                      onChanged: (int? inValue) {
                        setState(() {
                          _radioValue = inValue!;
                          print("Radio: " + _radioValue.toString());
                        });
                      }
                    ),
                    Text("Opção 1"),
                  ],
                )
              ],
            ),
          )
        )
      )
    );
  }
}*/


import "dart:async";

void main() => runApp(ExemploInicial());

class ExemploInicial extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(home: Scaffold(body: Home(),));
  }
}

/*class Home extends StatelessWidget {
  Future<void> _selectDate(inContext) async {
    DateTime? selectDate = await showDatePicker(
      context: inContext,
      initialDate: DateTime.now(),
      firstDate: DateTime.now().subtract(Duration(days: 10)),
      lastDate: DateTime.now().add(Duration(days: 1095))
    );
    print(selectDate);
  } 

  Future<void> _selectTime(inContext) async {
    TimeOfDay? selectTime = await showTimePicker(
      context: inContext,
      initialTime: TimeOfDay.now()
    );     
    print(selectTime);
  }

  @override
  Widget build(BuildContext inContext) {
    return Scaffold(
      body: Column(
        children: [
          Container(height: 50),
          ElevatedButton(
            onPressed: () => _selectDate(inContext),
            child: Text("Selecionar a data")
          ),
          ElevatedButton(
            onPressed: () => _selectTime(inContext),
            child: Text("Selecionar a hora")
          ),
        ]
      ),
    );
  }
}*/

/*class Home extends StatelessWidget {
   @override
   Widget build(BuildContext context) {
    Future _showIt() async {
      switch (await showDialog(
        context: context,
        builder: (BuildContext inContext) {
          return SimpleDialog(
            title: Text("Qual sua cor favorita?"),
            children: [
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(inContext, "Azul");
                },
                child: Text("Azul"),
              ),
              SimpleDialogOption(
                onPressed: () {
                  Navigator.pop(inContext, "Verde");
                },
                child: Text("Verde"),
              )
            ],
          );
        }
      )) {
        case "Azul":
          print("Azul");
        break;
        case "Verde":
          print("Verde");
        break;
      }
    }
    return Scaffold(
      body: Center(
        child: ElevatedButton(
          child: Text("Show"),
          onPressed: _showIt,
        )
      )
    );
   }
}*/

/*class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    _showIt() {
      return showDialog(
        context: inContext,
        barrierDismissible: false,
        builder: (BuildContext context) {
          return AlertDialog(
            title: Text("Nós viemos em paz!"),
            content: Center(
              child: Text("Ohh garra!")
            ),
            actions: [
              TextButton(
                onPressed: () {
                  Navigator.of(context).pop();
                },
                child: Text("Atire, atire")
              )
            ],
          );
        }
      );
    }

    return Scaffold(
      body:  Center(
        child: ElevatedButton(
          child: Text("Show"),
          onPressed: _showIt,
        ),
      ),
    );
  }
}*/

/*class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    _showIt() {
      ScaffoldMessenger.of(inContext).showSnackBar(
        SnackBar(
          backgroundColor: Colors.red,
          duration: Duration(seconds: 5),
          content: Text("Toasty"),
          action: SnackBarAction(
            label: "Snack",
            onPressed: () {
              print("Chomp!");
            },
          ),
        )
      );
    }

    return Scaffold(
      body:  Center(
        child: ElevatedButton(
          child: Text("Show"),
          onPressed: _showIt,
        ),
      ),
    );
  }
}*/

class Home extends StatelessWidget {
  @override
  Widget build(BuildContext inContext) {
    _showIt () {
      showModalBottomSheet(
        context: inContext,
        builder: (BuildContext inContext) {
          return new Column(
            mainAxisSize: MainAxisSize.min,
            children: [
              Text("Qual a sua cor favorita?"),
              TextButton(
                child: Text("Azul"),
                onPressed: () {
                  Navigator.of(inContext).pop();
                  print("Azul");
                }
              ),
              TextButton(
                child: Text("Verde"),
                onPressed: () {
                  Navigator.of(inContext).pop();
                  print("Verde");
                }
              ),
              TextButton(
                child: Text("Vermelho"),
                onPressed: () {
                  Navigator.of(inContext).pop();
                  print("Vermelho");
                }
              )
            ],
          );
        }
      );
    }

    return Scaffold(
      body:  Center(
        child: ElevatedButton(
          child: Text("Show"),
          onPressed: _showIt,
        ),
      ),
    );

  }
}
//



