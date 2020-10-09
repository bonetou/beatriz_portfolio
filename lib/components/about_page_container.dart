import 'package:flutter/material.dart';
// ignore: avoid_web_libraries_in_flutter
import 'dart:html' as html;

void openInANewTab(url) {
  html.window.open(url, 'PlaceholderName');
}

class AboutPageContainer extends StatelessWidget {
  final EdgeInsets myPadding;
  final double imageHeigth;
  final double imageWidth;
  final double fontSizeText;
  
  AboutPageContainer({this.myPadding, this.imageHeigth, this.imageWidth, this.fontSizeText});
  final String imagePath = 'assets/others/profile_picture.jpeg';
  final String presentationText = 'Olá! Me Chamo Beatriz Severo, tenho 22 anos, vivo em Porto Alegre e sou estudante de Design de Produto da Universidade Federal do Rio Grande do Sul (UFRGS). Atualmente faço divulgação de meus trabalhos nas redes sociais e estou em constante busca de aprendizados externos além do que a universidade nos oferece, aprendendo por exemplo Isometric Illustration, Digital Comic e Animação.';
  final String curriculumLink = 'https://drive.google.com/file/d/1gwDHNV0xuIIQSG_Hs80dGpJGYQ8P-ym1/view?usp=sharing';
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: myPadding,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Center(
            child: Container(
              height: imageHeigth,
              width: imageWidth,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.all(Radius.circular(100)),
                  image: DecorationImage(
                      image: AssetImage(imagePath),
                      fit: BoxFit.cover)),
            ),
          ),
          SizedBox(height: 20),
          Text(
            presentationText,
            style: TextStyle(fontSize: fontSizeText),
            textAlign: TextAlign.justify,
          ),
          SizedBox(height: 20),
          InkWell(
            onTap: () {
              openInANewTab(curriculumLink);
            },
            child: Container(
              height: 40,
              width: 200,
              color: Colors.grey[200],
              child: Center(
                child: Text(
                  'MEU CURRÍCULO',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black87,
                  ),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
