import 'package:flutter/material.dart';

class PlaceholderGrafico extends StatelessWidget {
  const PlaceholderGrafico({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(32),
      child: Container(
        height: 320,
        width: double.infinity,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(16),
          boxShadow: [
            BoxShadow(
              color: const Color.fromARGB(176, 158, 158, 158).withOpacity(0.5),
              spreadRadius: 2,
              blurRadius: 5,
            ),
          ],
        ),
        child: const Center(
          child: Text(
            'Gráfico de desempenho (em breve)',
            style: TextStyle(color: Colors.grey),
          ),
        ),
      ),
    );
  }
}
