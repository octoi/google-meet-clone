import 'package:flutter/material.dart';

class Participant {
  String name;
  Color color;

  Participant({
    required this.name,
    required this.color,
  });
}

List<Participant> roomUsers = [
  Participant(name: "Panda", color: Colors.blueGrey),
  Participant(name: "Tiger", color: Colors.brown),
  Participant(name: "Dog", color: Colors.pink),
  Participant(name: "Fox", color: Colors.purple),
  Participant(name: "Elephant", color: Colors.cyan),
];
