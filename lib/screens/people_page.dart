import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';

class Instructor {
  final String adSoyad;
  final String unvan;
  final String eposta;
  final String gsm;
  final String fotoUrl;

  const Instructor({
    required this.adSoyad,
    required this.unvan,
    required this.eposta,
    required this.gsm,
    required this.fotoUrl,
  });
}

class PeoplePage extends StatelessWidget {
  const PeoplePage({super.key});

  static final List<Instructor> _instructors = [
    const Instructor(
      adSoyad: 'Dr. Öğr. Üyesi Murat ÖZTÜRK',
      unvan: 'Doktor Öğretim Üyesi',
      eposta: 'murat.ozturk@eskisehir.edu.tr',
      gsm: '0505 412 87 36',
      fotoUrl: 'https://i.pravatar.cc/150?img=12',
    ),
    const Instructor(
      adSoyad: 'Doç. Dr. Emre KARAHAN',
      unvan: 'Doçent Doktor',
      eposta: 'emre.karahan@eskisehir.edu.tr',
      gsm: '0532 624 29 15',
      fotoUrl: 'https://i.pravatar.cc/150?img=15',
    ),
    const Instructor(
      adSoyad: 'Doç. Dr. Üyesi Hakan YILDIZ',
      unvan: 'Doçent Doktor',
      eposta: 'hakan.yildiz@eskisehir.edu.tr',
      gsm: '0541 287 23 82',
      fotoUrl: 'https://i.pravatar.cc/150?img=16',
    ),
    const Instructor(
      adSoyad: 'Prof. Dr. Serkan DEMİRCİ',
      unvan: 'Profesör',
      eposta: 'serkan.demirci@eskisehir.edu.tr',
      gsm: '0584 318 40 27',
      fotoUrl: 'https://i.pravatar.cc/150?img=11',
    ),
  ];

  Future<void> _confirmAndCall(BuildContext context, Instructor instructor) async {
    final result = await showDialog<bool>(
      context: context,
      builder: (context) => AlertDialog(
        title: const Text('Numara Ara'),
        content: Text('"${instructor.adSoyad}" kişisini aramak ister misiniz?\nGSM: ${instructor.gsm}'),
        actions: [
          TextButton(
            onPressed: () => Navigator.pop(context, false),
            child: const Text('Hayır'),
          ),
          TextButton(
            onPressed: () => Navigator.pop(context, true),
            child: const Text('Evet'),
          ),
        ],
      ),
    );

    if (result == true) {
      final uri = Uri(scheme: 'tel', path: instructor.gsm.replaceAll(' ', ''));
      await launchUrl(uri);
    }
  }

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: _instructors.length,
      separatorBuilder: (_, __) => const SizedBox(height: 12),
      itemBuilder: (context, index) {
        final hoca = _instructors[index];
        return Card(
          color: const Color(0xFFF2F4F7),
          child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                CircleAvatar(
                  radius: 28,
                  backgroundImage: NetworkImage(hoca.fotoUrl),
                ),
                const SizedBox(width: 12),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(hoca.adSoyad, style: const TextStyle(fontWeight: FontWeight.bold)),
                      const SizedBox(height: 4),
                      Text(hoca.unvan),
                      const SizedBox(height: 6),
                      Text('Mail: ${hoca.eposta}', style: const TextStyle(fontSize: 12)),
                      const SizedBox(height: 2),
                      Text('GSM: ${hoca.gsm}', style: const TextStyle(fontSize: 12)),
                      const SizedBox(height: 8),
                      Align(
                        alignment: Alignment.centerRight,
                        child: ElevatedButton(
                          onPressed: () => _confirmAndCall(context, hoca),
                          child: const Text('ARA'),
                        ),
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}


