import 'package:flutter/material.dart';
import 'second_screen.dart';

class FirstScreen extends StatefulWidget {
  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  final _formKey = GlobalKey<FormState>();
  String? name;
  String? email;
  String? phone;
  String? address;
  bool isMale = false;
  bool isFemale = false;

  List<Map<String, dynamic>> userData = [];

  void _saveForm() {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      final newUser = {
        'name': name!,
        'email': email!,
        'phone': phone!,
        'address': address!,
        'isMale': isMale,
      };

      setState(() {
        userData.add(newUser);
      });

      _formKey.currentState!.reset();
      setState(() {
        isMale = false;
        isFemale = false;
      });

      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Dados salvos!')),
      );
    }
  }

  void _navigateToSecondScreen() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SecondScreen(userData: userData),
      ),
    );
  }

  void _onMaleChanged(bool? value) {
    setState(() {
      isMale = value ?? false; // Se o valor for nulo, define como false
      if (isMale) {
        isFemale = false;
      }
    });
  }

  void _onFemaleChanged(bool? value) {
    setState(() {
      isFemale = value ?? false; // Se o valor for nulo, define como false
      if (isFemale) {
        isMale = false;
      }
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Cadastro')),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Form(
          key: _formKey,
          child: Column(
            children: <Widget>[
              TextFormField(
                decoration: InputDecoration(labelText: 'Nome'),
                onSaved: (value) {
                  name = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu nome';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Email'),
                keyboardType: TextInputType.emailAddress,
                onSaved: (value) {
                  email = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu email';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Telefone'),
                keyboardType: TextInputType.phone,
                onSaved: (value) {
                  phone = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu telefone';
                  }
                  return null;
                },
              ),
              TextFormField(
                decoration: InputDecoration(labelText: 'Endereço'),
                onSaved: (value) {
                  address = value;
                },
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return 'Por favor, insira seu endereço';
                  }
                  return null;
                },
              ),
              Row(
                children: <Widget>[
                  Text('Masculino'),
                  Checkbox(
                    value: isMale,
                    onChanged: _onMaleChanged,
                  ),
                  Text('Feminino'),
                  Checkbox(
                    value: isFemale,
                    onChanged: _onFemaleChanged,
                  ),
                ],
              ),
              SizedBox(height: 20),
              ElevatedButton(
                onPressed: _saveForm,
                child: Text('Salvar'),
              ),
              ElevatedButton(
                onPressed: _navigateToSecondScreen,
                child: Text('Ver Dados Salvos'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
