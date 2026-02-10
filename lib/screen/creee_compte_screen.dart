import 'package:flutter/material.dart';
import 'package:monpressing/compte/view/creer_un_compte_screen.dart';

class CreeeCompteScreen extends StatefulWidget {
  const CreeeCompteScreen({super.key});

  @override
  State<CreeeCompteScreen> createState() => _CreeeCompteScreenState();
}

class _CreeeCompteScreenState extends State<CreeeCompteScreen> {
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
                SizedBox(height: 40),
                Center(
                  child: Text(
                    "Créer un compte",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 30,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                      height: 1.2,
                    ),
                  ),
                ),
                SizedBox(height: 5), 

                Image.asset(
                  "images/ing_creer_compte.png",
                ),
                SizedBox(height: 20),
                Text(
                  "Bienvenue! Créez votre compte pour commencer à utiliser MonPressing.",
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.blue,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                SizedBox(height: 40),
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
                    child: InkWell(
                      onTap: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => const CreerUnCompteScreen())); 
                      },
                      child: Text(
                        "Créer un compte",
                        style: TextStyle(fontSize: 16, color: Colors.white),
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