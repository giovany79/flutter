import 'dart:convert';
import 'package:challenge_chapter_2/Doctor.dart';

import 'dart:io';

import 'package:challenge_chapter_2/nutritionist.dart';

import 'lawyer.dart';

excersiceFour(){

  print('Enter your message:');
  String? line = stdin.readLineSync(encoding: utf8);

  print('Enter your step:');
  int steps = int.parse(stdin.readLineSync()!);

  print('Enter the illnes:');
  String? illnes = stdin.readLineSync(encoding: utf8);

  print('Enter your heigh(mts):');
  double heigh = double.parse(stdin.readLineSync()!);

  print('Enter your weight(kgm):');
  int weight = int.parse(stdin.readLineSync()!);

  print('Enter your client name:');
  String? clientName = stdin.readLineSync(encoding: utf8);

  print('Enter your case:');
  String? event = stdin.readLineSync(encoding: utf8);

  Doctor doctor = Doctor("Nutritionist");

  Nutritionist nutricionist = Nutritionist("UdeA");

  Lawyer lawyer = Lawyer("Penalist", "UdeA");

  doctor.setSpeciatilty(illnes);
  doctor.talk(line);
  doctor.walk(steps);
  doctor.treatement(illnes!);
  nutricionist.getIMC(heigh, weight);
  lawyer.represent(clientName!, event!);
}