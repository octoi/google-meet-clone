import 'dart:math';

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
  Participant(name: "Eagle", color: Colors.black54),
  Participant(name: "Panda", color: Colors.blueGrey),
  Participant(name: "Tiger", color: Colors.brown),
  Participant(name: "Dog", color: Colors.pink),
  Participant(name: "Fox", color: Colors.purple),
  Participant(name: "Elephant", color: Colors.cyan),
  Participant(name: "Eagle", color: Colors.black54),
  Participant(name: "Panda", color: Colors.blueGrey),
  Participant(name: "Tiger", color: Colors.brown),
  Participant(name: "Dog", color: Colors.pink),
  Participant(name: "Fox", color: Colors.purple),
  Participant(name: "Elephant", color: Colors.cyan),
  Participant(name: "Eagle", color: Colors.black54),
];

Participant getRandomUser() {
  final _random = Random();
  int randomNumber = _random.nextInt(roomUsers.length - 1);
  return roomUsers[randomNumber];
}

List<String> messages = [
  "hello world 👋",
  "this app is dope !!",
  "cool app man 😎",
  "i heard that it is made using flutter",
  "it's awesome",
  "hello world 👋",
  "this app is dope !!",
  "cool app man 😎",
  "i heard that it is made using flutter",
  "it's awesome",
  "hello world 👋",
  "this app is dope !!",
  "cool app man 😎",
  "i heard that it is made using flutter",
  "it's awesome",
];
