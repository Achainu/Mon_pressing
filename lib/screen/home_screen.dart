import 'package:flutter/material.dart';
import 'package:monpressing/screen/creee_compte_screen.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,

      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [

                const SizedBox(height: 40),

                /// ===== TITRE =====
                const Text(
                  "Bienvenue sur\nMonPressing",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 30,
                    fontWeight: FontWeight.bold,
                    color: Colors.blue,
                    height: 1.2,
                  ),
                ),

                const SizedBox(height: 30),

                /// ===== IMAGE =====
                Image.asset(
                  "images/Image_Accueil.png",
                  height: 300,
                  fit: BoxFit.contain,
                ),

                const SizedBox(height: 30),

                /// ===== SOUS TITRE =====
                const Text(
                  "Pressing à domicile rapide & pratique",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),

                const SizedBox(height: 40),

                /// ===== BOUTON SE CONNECTER =====
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    onPressed: () {},
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.blue,
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: Text(
                      "Se connecter",
                      style: TextStyle(fontSize: 16, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 15),

                /// ===== BOUTON CREER COMPTE =====
                SizedBox(
                  width: double.infinity,
                  child: OutlinedButton(
                    onPressed: () {},
                    style: OutlinedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CreeeCompteScreen())); 
                      },
                      child: Text(
                        "Créer un compte",
                        style: TextStyle(fontSize: 16, color: Colors.blue),
                      ),
                    ),
                  ),
                ),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
