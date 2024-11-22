import 'package:fl_components/widgets/custom_card_tipo_2.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MemeScreen extends StatelessWidget {
  CustomCardTipo2 cardTipo2;

  MemeScreen({super.key, required this.cardTipo2});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text('TRENDING MEMES'),
          //backgroundColor: Colors.blueAccent,
        ),
        body: cardTipo2);
  }
}
