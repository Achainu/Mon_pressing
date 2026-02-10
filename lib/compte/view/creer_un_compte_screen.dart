import 'package:flutter/material.dart';

class CreerUnCompteScreen extends StatefulWidget {
  const CreerUnCompteScreen({super.key});

  @override
  State<CreerUnCompteScreen> createState() => _CreerUnCompteScreenState();
}

class _CreerUnCompteScreenState extends State<CreerUnCompteScreen> {

  final _formKey = GlobalKey<FormState>();

  final nomCtrl = TextEditingController();
  final telCtrl = TextEditingController();
  final adresseCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final passCtrl = TextEditingController();
  final confirmCtrl = TextEditingController();

  InputDecoration champStyle({
    required String hint,
    required IconData icon,
  }) {
    return InputDecoration(
      hintText: hint,
      prefixIcon: Icon(icon, color: Colors.blue),
      filled: true,
      fillColor: Colors.grey.shade100,
      contentPadding:
          const EdgeInsets.symmetric(vertical: 18, horizontal: 16),
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

  void validerCompte() {
    if (_formKey.currentState!.validate()) {
      print("Nom: ${nomCtrl.text}");
      print("Tel: ${telCtrl.text}");
      print("Adresse: ${adresseCtrl.text}");
      print("Email: ${emailCtrl.text}");

      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(content: Text("Formulaire valide ✅")),
      );
    }
  }

  @override
  void dispose() {
    nomCtrl.dispose();
    telCtrl.dispose();
    adresseCtrl.dispose();
    emailCtrl.dispose();
    passCtrl.dispose();
    confirmCtrl.dispose();
    super.dispose();
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

            /// ✅ FORM AJOUTÉ
            child: Form(
              key: _formKey,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [

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

                  /// NOM
                  titreChamp("Nom"),
                  TextFormField(
                    controller: nomCtrl,
                    decoration: champStyle(
                      hint: "Entrez votre nom",
                      icon: Icons.person,
                    ),
                    validator: (v) =>
                        v!.isEmpty ? "Nom requis" : null,
                  ),

                  const SizedBox(height: 20),

                  /// TEL
                  titreChamp("Numéro de téléphone"),
                  TextFormField(
                    controller: telCtrl,
                    keyboardType: TextInputType.phone,
                    decoration: champStyle(
                      hint: "Entrez votre numéro",
                      icon: Icons.phone,
                    ),
                    validator: (v) =>
                        v!.length < 8 ? "Numéro invalide" : null,
                  ),

                  const SizedBox(height: 20),

                  /// ADRESSE
                  titreChamp("Adresse"),
                  TextFormField(
                    controller: adresseCtrl,
                    decoration: champStyle(
                      hint: "Entrez votre adresse",
                      icon: Icons.home,
                    ),
                    validator: (v) =>
                        v!.isEmpty ? "Adresse requise" : null,
                  ),

                  const SizedBox(height: 20),

                  /// EMAIL
                  titreChamp("Email"),
                  TextFormField(
                    controller: emailCtrl,
                    keyboardType: TextInputType.emailAddress,
                    decoration: champStyle(
                      hint: "Entrez votre email",
                      icon: Icons.email,
                    ),
                    validator: (v) {
                      if (v == null || v.isEmpty) return "Email requis";
                      if (!v.contains("@")) return "Email invalide";
                      return null;
                    },
                  ),

                  const SizedBox(height: 20),

                  /// PASS
                  titreChamp("Mot de passe"),
                  TextFormField(
                    controller: passCtrl,
                    obscureText: true,
                    decoration: champStyle(
                      hint: "Mot de passe",
                      icon: Icons.lock,
                    ),
                    validator: (v) =>
                        v!.length < 6 ? "6 caractères minimum" : null,
                  ),

                  const SizedBox(height: 20),

                  /// CONFIRM
                  titreChamp("Confirmez le mot de passe"),
                  TextFormField(
                    controller: confirmCtrl,
                    obscureText: true,
                    decoration: champStyle(
                      hint: "Confirmer",
                      icon: Icons.lock_outline,
                    ),
                    validator: (v) =>
                        v != passCtrl.text ? "Mot de passe différent" : null,
                  ),

                  const SizedBox(height: 30),

                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: validerCompte,
                      style: ElevatedButton.styleFrom(
                        padding:
                            const EdgeInsets.symmetric(vertical: 16),
                        backgroundColor: Colors.blue,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(12),
                        ),
                      ),
                      child: const Text(
                        "Valider Compte",
                        style: TextStyle(
                            fontSize: 18, color: Colors.white),
                      ),
                    ),
                  ),

                  const SizedBox(height: 40),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
