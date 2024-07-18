// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
//import 'package:stec/page/home.dart';
import 'package:stec/page/login.dart';

class loginPag extends StatefulWidget {
  const loginPag({super.key});

  @override
  State<loginPag> createState() => loginPagState();
}

class loginPagState extends State<loginPag> {
  final _formKey = GlobalKey<FormState>();
  bool _isObscure = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
      ),
      extendBodyBehindAppBar: true,
      body: Stack(
        children: [
          Image.asset(
            'assets/index.jpg',
            fit: BoxFit.cover,
            width: double.infinity,
            height: 450,
          ),
          Padding(
            padding: const EdgeInsets.only(top: 200.0),
            child: Container(
              padding: const EdgeInsets.fromLTRB(20.0, 30.0, 20.0, 15.0),
              decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30.0),
                      topRight: Radius.circular(30.0))),
              height: double.infinity,
              width: double.infinity,
              child: SingleChildScrollView(
                child: Form(
                  key: _formKey,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Iniciar Sessão',
                        style: TextStyle(
                            fontSize: 22.0,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                      SizedBox(height: 7),
                      Text(
                        'Por favor, inicie sessão com o seu telefone e palavra-passe.',
                        style: TextStyle(
                            fontSize: 13.0,
                            fontWeight: FontWeight.normal,
                            color: Colors.black),
                      ),
                      SizedBox(height: 10),
                      Container(
                        width: double.infinity,
                        height: 55,
                        child: TextFormField(
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entr com Telefone';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                            label: const Text(
                              'Telefone',
                              style: TextStyle(fontSize: 14),
                            ),
                            hintText: 'Digite o Telefone',
                            helperStyle: const TextStyle(
                              color: Colors.black26,
                            ),
                            border: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Color.fromARGB(31, 236, 10, 10),
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            enabledBorder: OutlineInputBorder(
                              borderSide: const BorderSide(
                                color: Colors.black12,
                              ),
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 17),
                      Container(
                        width: double.infinity,
                        height: 55,
                        child: TextFormField(
                          obscureText: _isObscure,
                          validator: (value) {
                            if (value == null || value.isEmpty) {
                              return 'Entrar com Senha';
                            }
                            return null;
                          },
                          decoration: InputDecoration(
                              suffixIcon: IconButton(
                                icon: Icon(_isObscure
                                    ? Icons.visibility
                                    : Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    _isObscure = !_isObscure;
                                  });
                                },
                              ),
                              label: const Text(
                                'Senha',
                                style: TextStyle(fontSize: 14),
                              ),
                              hintText: 'Digite a Senha',
                              helperStyle: const TextStyle(
                                color: Colors.black26,
                              ),
                              border: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Colors.black12,
                                ),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              enabledBorder: OutlineInputBorder(
                                borderSide: const BorderSide(
                                  color: Color.fromARGB(31, 3, 95, 49),
                                ),
                                borderRadius: BorderRadius.circular(10),
                              )),
                        ),
                      ),
                      SizedBox(
                        height: 17,
                      ),
                      GestureDetector(
                          onTap: () {
                            // Handle forgotten password logic here
                            print('Esqueceu a senha?');
                          },
                          child: Container(
                            alignment: Alignment.centerRight,
                            child: Text(
                              'Esqueceu a senha?',
                              style: TextStyle(
                                  color: Color.fromARGB(255, 2, 4, 5),
                                  fontWeight: FontWeight.w500),
                            ),
                          )

                          /*const */
                          ),
                      SizedBox(
                        height: 17,
                      ),
                      SizedBox(
                        height: 46,
                        width: double.infinity,
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.pushReplacement(
                              context,
                              MaterialPageRoute(builder: (context) => Login()),
                            );
                          },
                          style: ButtonStyle(
                            backgroundColor: MaterialStateProperty.all<Color>(
                                Color.fromARGB(255, 27, 165, 32)),
                            foregroundColor:
                                MaterialStateProperty.all<Color>(Colors.white),
                            elevation: MaterialStateProperty.all<double>(20),
                            shape: MaterialStateProperty.all<
                                RoundedRectangleBorder>(
                              RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(16),
                              ),
                            ),
                          ),
                          child: const Text(
                            'Entrar',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 17),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
