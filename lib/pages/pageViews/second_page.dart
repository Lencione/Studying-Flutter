import 'package:flutter/material.dart';

class SecondPage extends StatelessWidget {
  const SecondPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 200,
          width: MediaQuery.of(context).size.width,
          decoration: const BoxDecoration(
            color: Colors.amber,
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
                  color: Colors.black,
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
