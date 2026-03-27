import 'package:flutter/material.dart';
import 'dart:math';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _AppState();
}

class _AppState extends State<Home> {
  double financiamento = 0.0;
  double juros = 0.0;
  double parcelas = 0;
  double demais = 0.0;
  double valorFinal = 0.0;
  double valorParcela = 0.0;
  String resultado = "";

  void calcular() {
    valorFinal = financiamento * pow((1 + (juros / 100)), parcelas) + demais;
    valorParcela = valorFinal / parcelas;
    resultado =
        "Valor total a ser pago : R\$ ${valorFinal.toStringAsFixed(2)}\nValor a ser pago por parcela : R\$ ${valorParcela.toStringAsFixed(2)}";
  }

  void alert(BuildContext context, String msg) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          title: Text("Resultado"),
          content: Text(msg),
          actions: [
            ElevatedButton(
              onPressed: () {
                Navigator.of(context).pop();
              },
              child: Text("Ok"),
            ),
          ],
        );
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 255, 255, 255),
      appBar: AppBar(
        title: Center(
          child: Text(
            "Simulador de Financiamento",
            style: TextStyle(color: Colors.white, fontWeight: FontWeight.bold),
          ),
        ),
        backgroundColor: const Color.fromARGB(255, 91, 28, 28),
      ),
      body: Center(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            spacing: 20.0,
            children: [
              Text(
                "Valor do financiamento:",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite o valor",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                ),
                onChanged: (value) {
                  financiamento = double.parse(value);
                },
              ),
              Text(
                "Taxa de juros ao mês:",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite a taxa de juros",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                ),
                onChanged: (value) {
                  juros = double.parse(value);
                },
              ),
              Text(
                "Número de Parcelas:",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite o número de parcelas",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                ),
                onChanged: (value) {
                  parcelas = double.parse(value);
                },
              ),
              Text(
                "Demais taxas e custos:",
                style: TextStyle(
                  fontSize: 18.0,
                  fontWeight: FontWeight.bold,
                  color: const Color.fromARGB(255, 0, 0, 0),
                ),
              ),
              TextField(
                decoration: InputDecoration(
                  labelText: "Digite o total de taxas e custos adicionais",
                  labelStyle: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                    borderSide: BorderSide(
                      color: const Color.fromARGB(255, 0, 0, 0),
                      width: 1.0,
                    ),
                  ),
                ),
                onChanged: (value) {
                  demais = double.parse(value);
                },
              ),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color.fromARGB(255, 91, 28, 28),
                ),
                onPressed: () {
                  calcular();
                  alert(context, resultado);
                },
                child: Text("Calcular", style: TextStyle(color: Colors.white)),
              ),
              Center(
                child: Text(
                  "Valor Final: R\$ ${valorFinal.toStringAsFixed(2)}\nValor Final das parcelas: R\$ ${valorParcela.toStringAsFixed(2)}",
                  style: TextStyle(
                    color: const Color.fromARGB(255, 0, 0, 0),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
