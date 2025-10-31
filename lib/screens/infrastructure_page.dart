import 'package:flutter/material.dart';
import 'image_viewer_page.dart';

class Derslik {
  final String ad;
  final int kapasite;
  final String imageUrl;

  const Derslik({required this.ad, required this.kapasite, required this.imageUrl});
}

class InfrastructurePage extends StatelessWidget {
  const InfrastructurePage({super.key});

  static const List<Derslik> _derslikler = [
    Derslik(ad: 'Derslik-B1', kapasite: 36, imageUrl: 'images/derslik1.jpg'),
    Derslik(ad: 'Derslik-B2', kapasite: 15, imageUrl: 'images/derslik2.jpg'),
    Derslik(ad: 'Derslik-B3', kapasite: 18, imageUrl: 'images/derslik3.jpg'),
    Derslik(ad: 'Derslik-B4', kapasite: 24, imageUrl: 'images/derslik4.jpg'),
    Derslik(ad: 'Derslik-B5', kapasite: 15, imageUrl: 'images/derslik5.jpg'),
    Derslik(ad: 'Derslik-B6', kapasite: 18, imageUrl: 'images/derslik6.jpg'),
    Derslik(ad: 'Derslik-B7', kapasite: 54, imageUrl: 'images/derslik7.jpg'),
  ];

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.symmetric(vertical: 8),
      itemCount: _derslikler.length,
      separatorBuilder: (_, __) => const Divider(height: 1),
      itemBuilder: (context, index) {
        final derslik = _derslikler[index];
        return ListTile(
          title: Text(derslik.ad, style: const TextStyle(fontWeight: FontWeight.bold)),
          subtitle: Text('Kapasite: ${derslik.kapasite}'),
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(
                builder: (_) => ImageViewerPage(imageUrl: derslik.imageUrl),
              ),
            );
          },
        );
      },
    );
  }
}


