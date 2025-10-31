import 'package:flutter/material.dart';

class CoursesPage extends StatelessWidget {
  const CoursesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> sampleCourses = [
      'Mobil Programlama I',
      'Yazılım Mimarileri',
      'Veri Yapıları',
      'Veritabanı Sistemleri',
    ];

    return ListView.separated(
      padding: const EdgeInsets.all(16),
      itemCount: sampleCourses.length,
      separatorBuilder: (_, __) => const SizedBox(height: 8),
      itemBuilder: (context, index) => Card(
        child: ListTile(
          leading: const Icon(Icons.menu_book_outlined),
          title: Text(sampleCourses[index]),
        ),
      ),
    );
  }
}


