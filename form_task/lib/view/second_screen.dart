import 'package:flutter/material.dart';

class SecondScreen extends StatefulWidget {
  final List<Map<String, dynamic>> userData;

  SecondScreen({required this.userData});

  @override
  _SecondScreenState createState() => _SecondScreenState();
}

class _SecondScreenState extends State<SecondScreen> {
  void _deleteUserData(BuildContext context, Map<String, dynamic> user) {
    setState(() {
      widget.userData.remove(user);
    });
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(content: Text('Os dados do usuário foram excluídos!')),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Dados Salvos'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: ListView.builder(
          itemCount: widget.userData.length,
          itemBuilder: (context, index) {
            final user = widget.userData[index];
            return Card(
              margin: EdgeInsets.symmetric(vertical: 8.0),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Text(
                              'Gênero: ',
                              style: TextStyle(fontSize: 18),
                            ),
                            Icon(
                              user['isMale'] ? Icons.boy : Icons.girl,
                              size: 40,
                              color: user['isMale'] ? Colors.blue : Colors.pink,
                            ),
                          ],
                        ),
                        // Adicionando o botão de deletar no Card
                        IconButton(
                          icon: Icon(Icons.delete, color: Colors.red),
                          onPressed: () => _deleteUserData(context, user),
                        ),
                      ],
                    ),
                    SizedBox(height: 10),
                    Text(
                      'Nome: ${user['name']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Email: ${user['email']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Telefone: ${user['phone']}',
                      style: TextStyle(fontSize: 18),
                    ),
                    Text(
                      'Endereço: ${user['address']}',
                      style: TextStyle(fontSize: 18),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
