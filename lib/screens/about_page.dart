import 'package:flutter/material.dart';

class AboutPage extends StatelessWidget {
  const AboutPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Text(
            'Bölüm Hakkında',
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
          ),
          SizedBox(height: 12),
          Text(
            'Bu uygulama, bölüm hakkında temel bilgileri, öğretim üyelerini ve altyapıyı tanıtmak için hazırlanmıştır.',
          ),
        ],
      ),
    );
  }
}


