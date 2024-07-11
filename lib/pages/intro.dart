import 'package:ecommerce/pages/home.dart';
import 'package:flutter/material.dart';

class IntroPage extends StatelessWidget {
  const IntroPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      body: Center(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 25.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              //logo
              Padding(
                padding: const EdgeInsets.all(25.0),
                child: Image.asset(
                  'lib/images/adidas2.png',
                  height: 240,
                ),
              ),
              const SizedBox(
                height: 48,
              ),
              const Text(
                "Impossible is Nothing",
                style: TextStyle(fontSize: 28, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Brand new sneakers and custom kicks made with premium quality",
                style: TextStyle(fontSize: 16, color: Colors.grey),
                textAlign: TextAlign.center,
              ),

              //title

              // subtitle

              // start new
              const SizedBox(
                height: 48,
              ),
              GestureDetector(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const HomePage(),
                    )),
                child: Container(
                  decoration: BoxDecoration(
                      color: Colors.grey[900],
                      borderRadius: BorderRadius.circular(12)),
                  padding: const EdgeInsets.all(25.0),
                  child: const Center(
                      child: Text(
                    "Shop Now",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16),
                  )),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
