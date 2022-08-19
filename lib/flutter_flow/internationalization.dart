import 'package:flutter/material.dart';
import 'package:flutter/foundation.dart';

class FFLocalizations {
  FFLocalizations(this.locale);

  final Locale locale;

  static FFLocalizations of(BuildContext context) =>
      Localizations.of<FFLocalizations>(context, FFLocalizations)!;

  static List<String> languages() => ['en', 'fr', 'de', 'pt'];

  String get languageCode => locale.toString();
  int get languageIndex => languages().contains(languageCode)
      ? languages().indexOf(languageCode)
      : 0;

  String getText(String key) =>
      (kTranslationsMap[key] ?? {})[locale.toString()] ?? '';

  String getVariableText({
    String? enText = '',
    String? frText = '',
    String? deText = '',
    String? ptText = '',
  }) =>
      [enText, frText, deText, ptText][languageIndex] ?? '';
}

class FFLocalizationsDelegate extends LocalizationsDelegate<FFLocalizations> {
  const FFLocalizationsDelegate();

  @override
  bool isSupported(Locale locale) =>
      FFLocalizations.languages().contains(locale.toString());

  @override
  Future<FFLocalizations> load(Locale locale) =>
      SynchronousFuture<FFLocalizations>(FFLocalizations(locale));

  @override
  bool shouldReload(FFLocalizationsDelegate old) => false;
}

Locale createLocale(String language) => language.contains('_')
    ? Locale.fromSubtags(
        languageCode: language.split('_').first,
        scriptCode: language.split('_').last,
      )
    : Locale(language);

final kTranslationsMap = <Map<String, Map<String, String>>>[
  // Welcome
  {
    '1n3douax': {
      'en': 'Hello!',
      'de': 'Hallo!',
      'fr': 'Bonjour!',
      'pt': 'Olá!',
    },
    'r2ndg8gp': {
      'en': 'User Id',
      'de': 'Benutzeridentifikation',
      'fr': 'Identifiant d&#39;utilisateur',
      'pt': 'ID do usuário',
    },
    'efx1wkit': {
      'en': 'User Id',
      'de': 'Benutzeridentifikation',
      'fr': 'Identifiant d&#39;utilisateur',
      'pt': 'ID do usuário',
    },
    'eduyxa81': {
      'en': 'Password',
      'de': 'Passwort',
      'fr': 'Mot de passe',
      'pt': 'Senha',
    },
    '1amcflbj': {
      'en': 'Password',
      'de': 'Passwort',
      'fr': 'Mot de passe',
      'pt': 'Senha',
    },
    'mxt1psma': {
      'en': 'Login',
      'de': 'Anmeldung',
      'fr': 'Connexion',
      'pt': 'Conecte-se',
    },
    'shdzl7vv': {
      'en': 'Logout',
      'de': 'Ausloggen',
      'fr': 'Se déconnecter',
      'pt': 'Sair',
    },
  },
  // Delivery_Address
  {
    'r6dcx1kc': {
      'en': '[Some hint text...]',
      'de': '[Einige Hinweistexte...]',
      'fr': '[Quelque texte d&#39;indice...]',
      'pt': '[Algum texto de dica...]',
    },
    'civ5rda5': {
      'en': 'Delivery address',
      'de': 'Lieferadresse',
      'fr': 'Adresse de livraison',
      'pt': 'Endereço de entrega',
    },
    '9zjjmymi': {
      'en': 'Delivery\naddress',
      'de': 'Lieferadresse',
      'fr': 'Adresse de livraison',
      'pt': 'Endereço de entrega',
    },
  },
  // View_Orders
  {
    't4631jeu': {
      'en': 'View orders',
      'de': 'Bestellungen ansehen',
      'fr': 'Afficher les commandes',
      'pt': 'Ver pedidos',
    },
    'm0i5gzdg': {
      'en': 'View orders',
      'de': 'Bestellungen ansehen',
      'fr': 'Afficher les commandes',
      'pt': 'Ver pedidos',
    },
  },
  // Send_Orders
  {
    '1v59ekij': {
      'en': 'Send orders',
      'de': 'Bestellungen senden',
      'fr': 'Envoyer des commandes',
      'pt': 'Enviar pedidos',
    },
    'bqy8c55a': {
      'en': 'Send orders',
      'de': 'Bestellungen senden',
      'fr': 'Envoyer des commandes',
      'pt': 'Enviar pedidos',
    },
  },
  // Settings
  {
    'bhqh0yr9': {
      'en': 'Logout',
      'de': 'Ausloggen',
      'fr': 'Se déconnecter',
      'pt': 'Sair',
    },
    'xn92fvtg': {
      'en': 'Select language',
      'de': 'Sprache auswählen',
      'fr': 'Choisir la langue',
      'pt': 'Selecione o idioma',
    },
    'vg65ze38': {
      'en': 'Settings',
      'de': 'Einstellungen',
      'fr': 'Réglages',
      'pt': 'Definições',
    },
    'c88utr23': {
      'en': 'Settings',
      'de': 'Einstellungen',
      'fr': 'Réglages',
      'pt': 'Definições',
    },
  },
  // Language
  {
    '1gmj1y79': {
      'en': 'Select your language',
      'de': 'Wähle deine Sprache',
      'fr': 'choisissez votre langue',
      'pt': 'selecione sua lingua',
    },
    '5h7ebin4': {
      'en': 'Select language',
      'de': 'Sprache auswählen',
      'fr': 'Choisir la langue',
      'pt': 'Selecione o idioma',
    },
    '4kppvw8i': {
      'en': 'Language',
      'de': 'Sprache',
      'fr': 'Langue',
      'pt': 'Linguagem',
    },
  },
  // Miscellaneous
  {
    '66skwipu': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'dhsvt6af': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'evjus85i': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'a0w4jc2q': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'f0nrc6j2': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'mskjsig0': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    't194g2tf': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'rqpi2tlw': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'psoeitz0': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'y829c2n1': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'm2v998vf': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '1xh1ug8l': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'wctw4wt9': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '55vvmlrm': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '0sbjtb91': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'jbxuuss0': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'io5zlq4z': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '2kbdloje': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'fa851zjn': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'uxkgjbzf': {
      'en': '',
      'de': '',
      'fr': '',
      'pt': '',
    },
  },
].reduce((a, b) => a..addAll(b));
