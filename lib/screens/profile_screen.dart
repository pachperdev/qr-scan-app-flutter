import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Expanded(
          child: Container(
            margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            width: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const CircleAvatar(
                  radius: 120,
                  backgroundImage: NetworkImage(
                      'https://avatars.githubusercontent.com/u/86799932?v=4'),
                ),
                const SizedBox(height: 20),
                const Text(
                  "Mauricio Pacheco",
                  style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 10),
                const Text("Flutter Developer", style: TextStyle(fontSize: 18)),
                const SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    _CustomElevatedButton(
                      icon: FontAwesomeIcons.github,
                      colors: Colors.grey,
                      text: "GitHub",
                      url: Uri.parse('https://github.com/pachperdev'),
                    ),
                    _CustomElevatedButton(
                      icon: FontAwesomeIcons.linkedin,
                      colors: Colors.blueGrey,
                      text: "LinkedIn",
                      url: Uri.parse('https://www.linkedin.com/in/pachperdev/'),
                    ),
                    _CustomElevatedButton(
                      icon: FontAwesomeIcons.instagram,
                      colors: Colors.pinkAccent,
                      text: "Instagram",
                      url: Uri.parse(
                          'https://www.instagram.com/mauricio_pachper_'),
                    ),
                  ],
                ),
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 10, vertical: 25),
                  child: const Text(
                      'Ingeniero electrónico y experto en desarrollo de aplicaciones móviles con Flutter. Con habilidades en el diseño y construcción de aplicaciones innovadoras que resuelven problemas reales. Me esfuerzo por mantenerme actualizado con las últimas tendencias en tecnología para ofrecer soluciones de calidad a mis clientes. ¡Conéctate conmigo para llevar tu idea de aplicación al siguiente nivel!',
                      style: TextStyle(fontSize: 18)),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class _CustomElevatedButton extends StatelessWidget {
  final IconData icon;
  final Color colors;
  final String text;
  final Uri url;
  const _CustomElevatedButton({
    Key? key,
    required this.icon,
    required this.colors,
    required this.text,
    required this.url,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      icon: FaIcon(icon),
      onPressed: () async {
        if (!await launchUrl(url)) {
          throw Exception('Could not launch $url');
        }
      },
      style: ButtonStyle(
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(50),
          ),
        ),
        backgroundColor: MaterialStateProperty.all<Color>(colors),
        padding: MaterialStateProperty.all(
          const EdgeInsets.symmetric(vertical: 15, horizontal: 10),
        ),
      ),
      label: Text(
        text,
      ),
    );
  }
}
