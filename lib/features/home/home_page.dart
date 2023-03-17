import 'package:flutter/material.dart';

import '../../core/widgets/app_bar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      appBar: CustomAppBar(
        showActionIcon: true,
        leading: Container(),
        title: "Mega Mall",
      ),
      body: const Center(),
    );
  }
}
