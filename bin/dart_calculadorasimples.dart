import 'dart:convert';
import 'dart:io';

import 'package:dart_calculadorasimples/dart_calculadorasimples.dart' as dart_calculadorasimples;

void main(List<String> arguments) {
  print("Calculadora simples");
  
  print('Informe o primeiro Número:');
  var line = stdin.readLineSync(encoding:utf8);
  var numero1 = num.parse(line ?? "0");


   print('Informe o segundo Número:');
  line = stdin.readLineSync(encoding:utf8);
  var numero2 = num.parse(line?? "0");

  print('Informe a operaçã matemática(+, -, *, /):');
  line = stdin.readLineSync(encoding:utf8);
  var operacao = line?? "";

  print(numero1);
  print(numero2);
  print(operacao);

  num resultado  = 0;
//=========================USANDO IF ELSE=============================================
  // if (operacao =='+'){
  //   resultado = numero1 + numero2;
  // } else if (operacao=="-"){
  //   resultado = numero1 - numero2;
  // } else if(operacao== "*"){
  //   resultado = numero1 * numero2;
  // } else if (operacao=="/"){
  //   resultado = numero1 / numero2;
  // } else {
  //   print("operação inválida");
  //   exit(0);
  // }
  
  //=============================SWHITCH CASE============================================
  switch (operacao) {
    case "+":
    resultado = numero1+numero2;
    break;
    case "-":
    resultado = numero1-numero2;
    break;
    case "*":
    resultado = numero1*numero2;
    break;
    case "/":
    resultado = numero1/numero2;
    break;
    default:
     print('Operação inválida');
     exit(0);
  }
  print("O resultado da operção é:$resultado");
}

