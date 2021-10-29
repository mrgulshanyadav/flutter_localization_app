import 'package:flutter/material.dart';
import 'package:flutter_localization_app/Translator.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  // default language to english
  LanguagesEnum selectedLanguage = LanguagesEnum.English;

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Container(
          child: Center(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Home: ' + Translator().translate(selectedLanguage, 'Home'),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'About us: ' + Translator().translate(selectedLanguage, 'About us'),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                Text(
                  'More: ' + Translator().translate(selectedLanguage, 'More'),
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),


                SizedBox(height: 150,),
                Text(
                  ' -- Convert To -- ',
                  style: TextStyle(
                    fontSize: 14,
                    color: Colors.black,
                  ),
                ),
                SizedBox(height: 15,),
                TextButton(
                  onPressed: () {
                    // change selected language to english
                    setState(() {
                      selectedLanguage = LanguagesEnum.English;
                    });
                  },
                  child: Text('English'),
                ),
                TextButton(
                  onPressed: () {
                    // change selected language to hindi
                    setState(() {
                      selectedLanguage = LanguagesEnum.Hindi;
                    });
                  },
                  child: Text('Hindi'),
                ),
                TextButton(
                  onPressed: () {
                    // change selected language to french
                    setState(() {
                      selectedLanguage = LanguagesEnum.French;
                    });
                  },
                  child: Text('French'),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}
