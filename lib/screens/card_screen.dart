import 'package:fl_components/widgets/widgets.dart';
import 'package:flutter/material.dart';

class CardScreen extends StatelessWidget {
   
  const CardScreen({Key? key}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Card Widget'),
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric( horizontal: 20, vertical: 10),
        children: const [
          CustomCardTipo1(),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://images8.alphacoders.com/110/1103710.jpg', nombre: 'The Mandalorian'),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://wallpapers.com/images/featured/este-es-el-camino-izbtugks4z4tg97i.jpg', nombre: 'Este es el camino'),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://images3.alphacoders.com/110/1108129.jpg', nombre: 'Grogu',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://images.alphacoders.com/106/1060932.jpg', nombre: 'Nave Mandaloriana',),
          SizedBox(height: 10),
          CustomCardTipo2(imageUrl: 'https://sm.ign.com/ign_latam/feature/w/why-some-m/why-some-mandalorians-can-remove-their-helmets-while-others_m4eb.jpg',),
        ],
      )
    );
  }
}

