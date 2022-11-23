import 'dart:convert';
import 'dart:io';

import 'package:dart_calculadorasimples/dart_calculadorasimples.dart' as dart_calculadorasimples;

void main(List<String> arguments) {
  print("Calculadora simples");
  
 
  var numero1 = lerConsoleDouble('Informe o primeiro Número:');

  var numero2 = lerConsoleDouble('Informe o segundo Número:');
  
  var operacao =lerConsole('Informe a operaçã matemática(+, -, *, /):');
  calcular(operacao, numero1, numero2);

  print(numero1);
  print(numero2);
  print(operacao);

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
  // switch (operacao) {
  //   case "+":
  //   resultado = soma(numero1, numero2);
  //   break;
  //   case "-":
  //   resultado = sub(numero1, numero2);
  //   break;
  //   case "*":
  //   resultado = mult(numero1, numero2);
  //   break;
  //   case "/":
  //   resultado = div(numero1, numero2);
  //   break;
  //   default:
  //    print('Operação inválida');
  //    exit(0);
  // }
  // print("O resultado da operção é:$resultado");

  //=================Usando FUNÇÕES===============================================
}
double soma(double numero1, double numero2){
  return  numero1 + numero2;
}

double sub(double numero1, double numero2){
  return numero1 - numero2;
}

double mult(double numero1, double numero2){
  return numero1* numero2;
}

double div(double numero1, double numero2){
  if (numero2==0){
    print("Não é possivel dividir por zero!");
    exit(0);
  } else {
  return numero1/numero2;
  }
}

String lerConsole(String texto){
  var line = stdin.readLineSync(encoding:utf8);
  return line ?? "";
}

double lerConsoleDouble(String texto){
  var numero =double.tryParse(lerConsole(texto));
  if (numero == null){
    return 0.0;
  } else{
    return numero;
  }
}

void calcular (String operacao, double numero1, double numero2){
  double resultado  = 0;
  switch (operacao) {
    case "+":
    resultado = soma(numero1, numero2);
    break;
    case "-":
    resultado = sub(numero1, numero2);
    break;
    case "*":
    resultado = mult(numero1, numero2);
    break;
    case "/":
    resultado = div(numero1, numero2);
    break;
    default:
     print('Operação inválida');
     exit(0);
  }
  print("O resultado da operção é:$resultado");
}
