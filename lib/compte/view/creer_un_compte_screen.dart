import 'package:flutter/material.dart';

class CreerUnCompteScreen extends StatelessWidget {
  const CreerUnCompteScreen({super.key});

  InputDecoration champStyle({
    required String hint,
    required IconData icon,
  }) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: Icon(icon, color: Colors.blue),
      filled: true,
      fillColor: Colors.grey.shade100,
      contentPadding: const EdgeInsets.symmetric(
        vertical: 18,
        horizontal: 16,
      ),
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: BorderSide.none,
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: Colors.blue, width: 2),
      ),
    );
  }

  Widget titreChamp(String texte) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 8),
      child: Text(
        texte,
        style: const TextStyle(
          fontSize: 16,
          color: Colors.blue,
          fontWeight: FontWeight.w600,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      resizeToAvoidBottomInset: true,
      body: SafeArea(
        child: SingleChildScrollView(
          keyboardDismissBehavior:
              ScrollViewKeyboardDismissBehavior.onDrag,
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [

                /// Titre
                const Center(
                  child: Text(
                    "Entrez vos informations\npour créer un compte",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 24,
                      fontWeight: FontWeight.bold,
                      color: Colors.blue,
                    ),
                  ),
                ),

                const SizedBox(height: 30),

                /// Nom
                titreChamp("Nom"),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.name,
                  decoration: champStyle(
                    hint: "Entrez votre nom",
                    icon: Icons.person,
                  ),
                ),

                const SizedBox(height: 20),

                /// Téléphone
                titreChamp("Numéro de téléphone"),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.phone,
                  decoration: champStyle(
                    hint: "Entrez votre numéro",
                    icon: Icons.phone,
                  ),
                ),

                const SizedBox(height: 20),

                /// Adresse
                titreChamp("Adresse"),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.streetAddress,
                  decoration: champStyle(
                    hint: "Entrez votre adresse",
                    icon: Icons.home,
                  ),
                ),

                const SizedBox(height: 20),

                /// Email
                titreChamp("Email"),
                TextField(
                  textInputAction: TextInputAction.next,
                  keyboardType: TextInputType.emailAddress,
                  decoration: champStyle(
                    hint: "Entrez votre email",
                    icon: Icons.email,
                  ),
                ),

                const SizedBox(height: 20),

                /// Mot de passe
                titreChamp("Mot de passe"),
                TextField(
                  obscureText: true,
                  textInputAction: TextInputAction.next,
                  decoration: champStyle(
                    hint: "Mot de passe",
                    icon: Icons.lock,
                  ),
                ),

                const SizedBox(height: 20),

                /// Confirmation
                titreChamp("Confirmez le mot de passe"),
                TextField(
                  obscureText: true,
                  textInputAction: TextInputAction.done,
                  decoration: champStyle(
                    hint: "Confirmer le mot de passe",
                    icon: Icons.lock_outline,
                  ),
                ),

                const SizedBox(height: 30),

                /// Bouton
                SizedBox(
                  width: double.infinity,
                  child: ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(vertical: 16),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(12),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      "Valider Compte",
                      style: TextStyle(fontSize: 18, color: Colors.white),
                    ),
                  ),
                ),

                const SizedBox(height: 40),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
