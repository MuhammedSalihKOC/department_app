import 'package:flutter/material.dart';
import 'people_page.dart';
import 'infrastructure_page.dart';
import 'about_page.dart';
import 'courses_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 4,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Department Application'),
          bottom: const TabBar(
            isScrollable: true,
            tabs: [
              Tab(icon: Icon(Icons.info_outline), text: 'HAKKINDA'),
              Tab(icon: Icon(Icons.people), text: 'KİŞİLER'),
              Tab(icon: Icon(Icons.account_tree), text: 'ALTYAPI'),
              Tab(icon: Icon(Icons.menu_book), text: 'DERSLER'),
            ],
          ),
        ),
        body: const TabBarView(
          children: [
            AboutPage(),
            PeoplePage(),
            InfrastructurePage(),
            CoursesPage(),
          ],
        ),
      ),
    );
  }
}