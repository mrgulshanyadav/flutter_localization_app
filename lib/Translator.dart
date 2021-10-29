class Translator{

  // english language map object
  Map<String, dynamic> en = {
    "home": "Home",
    "about_us": "About us",
    "more": "More",
  };

  // 2nd language map object
  Map<String, dynamic> hi = {
    "home": "घर",
    "about_us": "हमारे बारे में",
    "more": "अधिक",
  };

  // 3rd language map object
  Map<String, dynamic> fr = {
    "home": "Accueil",
    "about_us": "À propos de nous",
    "more": "Suite",
  };

  // you can add any other language's map object in same way,
  // keeping key same in all languages map object and value different based on language

  dynamic to(LanguagesEnum selectedLanguage){
    // english language
    if(selectedLanguage==LanguagesEnum.English){
      return en;
    }
    // 2nd language
    else if(selectedLanguage==LanguagesEnum.Hindi){
      return hi;
    }
    // 3rd language
    else if(selectedLanguage==LanguagesEnum.French){
      return fr;
    }
    // any other language can be added in same way..
  }


  // to translate
  String translate(LanguagesEnum selectedLanguage, String text){
    // to map the text into key and then find that key's value from language's map object defined above.
    return to(selectedLanguage)[text.toString().toLowerCase().replaceAll(" ", "_")];
  }

}

// you can add more languages as much you want..
enum LanguagesEnum {English, Hindi, French}