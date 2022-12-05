import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.blue,
          ),
          child: const Center(
            child: Text(
              'Olá mundo!',
              style: TextStyle(
                color: Colors.redAccent,
                fontSize: 30,
              ),
            ),
          ),
        ),
        Row(
          children: [
            Center(
              child: Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: Colors.grey,
                ),
                child: const Center(
                  child: Text(
                    'Test',
                    style: TextStyle(
                      color: Colors.amberAccent,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
