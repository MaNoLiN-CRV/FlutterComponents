import 'package:flutter/material.dart';
import 'package:fl_components/widgets/custom_card_tipo_2.dart';
import 'package:fl_components/screens/meme_screen.dart';

class Listview2Screen extends StatelessWidget {
  final options = const <String, String>{
    'Falete':
        'https://s1.ppllstatics.com/lagacetadesalamanca/www/multimedia/2023/10/22/falete-isabel-pantoja-U68628864412cSx-1920x1080@Gaceta%20Salamanca.jpg',
    'McLovin':
        'https://is1-ssl.mzstatic.com/image/thumb/Music126/v4/e0/b2/4e/e0b24e9e-9811-f07f-45cd-e2c2b9876fba/artwork.jpg/1200x1200bb.jpg',
    'Hasbulla':
        'https://static01.nyt.com/images/2023/04/20/fashion/20HASBULLA/20HASBULLA-articleLarge.jpg?quality=100&auto=webp&disable=upscale'
  };

  const Listview2Screen({super.key});

  @override
  Widget build(BuildContext context) {
    final keys = options.keys.toList();
    return Scaffold(
      appBar: AppBar(
        title: const Text('MEMES DEL MOMENTO'),
        backgroundColor: Colors.deepPurple[900],
      ),
      body: ListView.separated(
        itemBuilder: (context, index) {
          final title = keys[index];
          final imageUrl = options[title]!;

          return ListTile(
            trailing: const Icon(Icons.trending_up_outlined),
            title: Text(title),
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => MemeScreen(
                    cardTipo2: CustomCardTipo2(
                      nombre: title,
                      imageUrl: imageUrl,
                    ),
                  ),
                ),
              );
            },
          );
        },
        separatorBuilder: (context, index) => const Divider(),
        itemCount: options.length,
      ),
    );
  }
}
