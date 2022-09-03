// ignore_for_file: prefer_const_constructors, sort_child_properties_last

import 'dart:math';

import 'package:flutter/material.dart';

class TelaPrincipal extends StatefulWidget {
  const TelaPrincipal({Key? key}) : super(key: key);

  @override
  State<TelaPrincipal> createState() => _TelaPrincipalState();
}

class _TelaPrincipalState extends State<TelaPrincipal> {

  // Atributos
  var txtPeso = TextEditingController();
  var txtAltura = TextEditingController();

  // Chave única para validação do Form
  var formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Calcular IMC'),
        centerTitle: true,
        backgroundColor: Colors.purple.shade300,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(16),
        child: Center(
          child: Container(
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  Icon(
                    Icons.calculate_rounded,
                    size: 120,
                    color: Colors.purple.shade300,
                  ),
                  campoTexto('Peso', txtPeso),
                  campoTexto('Altura', txtAltura),
                  botao('Calcular'),
                  
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  // Campo de texto

  campoTexto(rotulo, variavel) {
    return Container(
      margin: EdgeInsets.only(bottom: 20),
      child: TextFormField(
        keyboardType: TextInputType.number,
        controller: variavel,
        style: TextStyle(
          fontSize: 20
        ),
        decoration: InputDecoration(
          labelText: rotulo,
          // icon: Icon(Icons.monitor_weight),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(15)
          ),
        ),

        // Validação

        validator: (value) {
          // Trocar virgula por ponto
          value = value!.replaceFirst(',', '.');

          if( double.tryParse(value) == null ) {
            // Se o usuário não digitar um valor numérico
            return 'Entre com um valor numérico';
          } else {
            // Se estiver tudo certo
            return null;
          }
        },
      ),
    );
  }


  //Botão

  botao(rotulo) {
    return Container(
      child: ElevatedButton(
        onPressed: (){

          // Iniciar o processo de validação

          if( formKey.currentState!.validate() ) {
            // Se o formulário for validado
            double peso = double.parse(txtPeso.text.replaceFirst(',', '.'));
            double altura = double.parse(txtAltura.text.replaceFirst(',', '.'));
            double imc = peso / (pow(altura, 2));
            caixaDialogo('O valor no IMC é: ${imc.toStringAsFixed(2)}');
          }
        }, 
        child: Text(
          rotulo,
          style: TextStyle(
            fontSize: 20
          ),
          ),
        style: ElevatedButton.styleFrom(
          minimumSize: Size(300, 60),
          primary: Colors.purple.shade300
        ),
        ),
    );
  }


  // Caixa de Diálogo

  caixaDialogo(msg) {
    return showDialog(
      context: context, 
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text('Resultado'),
          content: Text(
            msg,
            style: TextStyle(
              fontSize: 18
            ),
          ),
          actions: [
            TextButton(
              onPressed: (){
              Navigator.pop(context);
              setState(() {
                txtPeso.clear();
                txtAltura.clear();
              });
            }, child: Text("Ok")
            )
          ],
        );
      }
      );
  }
}
