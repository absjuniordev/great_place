import 'package:flutter/material.dart';
import 'package:great_places/utils/app_routes.dart';

class PalcesListScreen extends StatelessWidget {
  const PalcesListScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Meus Lugares'),
        actions: [
          IconButton(
            icon: const Icon(Icons.add),
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.PLACE_FORM);
            },
          )
        ],
      ),
      body: const Center(
        child: CircularProgressIndicator(
          color: Colors.amber,
        ),
      ),
    );
  }
}
