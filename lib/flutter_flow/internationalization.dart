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
      'en': '',
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
      'en': '',
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
    'civ5rda5': {
      'en': 'Delivery address',
      'de': 'Lieferadresse',
      'fr': 'Adresse de livraison',
      'pt': 'Endereço de entrega',
    },
    'w6umobmn': {
      'en': 'Select delivery address',
      'de': '',
      'fr': '',
      'pt': '',
    },
    's2i2bz2y': {
      'en': '[Delivery Address Name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'wq790kah': {
      'en': '[Delivery Address Id]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '9zjjmymi': {
      'en': 'Orders',
      'de': 'Lieferadresse',
      'fr': 'Adresse de livraison',
      'pt': 'Endereço de entrega',
    },
  },
  // Point_Of_Service_Group
  {
    '2egxu8it': {
      'en': 'Point of Service Group',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'yump08wx': {
      'en': 'Delivery address',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'n4vjbddo': {
      'en': '[ Delivery Address Name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '61jj7cic': {
      'en': 'Select point of service group',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'cgy6knin': {
      'en': '[POS Group]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'wwbth8aa': {
      'en': 'Home',
      'de': '',
      'fr': '',
      'pt': '',
    },
  },
  // Point_of_Service
  {
    'xkm1blj5': {
      'en': 'Point of Service',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'iax5dttp': {
      'en': 'Delivery address',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '2pyniyrh': {
      'en': '[Delivery Address Name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '0mhcu8dx': {
      'en': 'Point of service group',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'o24tibia': {
      'en': '[Point of service Group]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'p0ixjwfv': {
      'en': 'Select point of service',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'sor49i55': {
      'en': '[POS]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'spf68vtu': {
      'en': 'Home',
      'de': '',
      'fr': '',
      'pt': '',
    },
  },
  // Article_Entry
  {
    'rms3uobx': {
      'en': 'Order entry',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'gvuzgfdl': {
      'en': 'Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '9i0gyh28': {
      'en': '[Article name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'wbqesoow': {
      'en': '[Article Id]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'hzla3afi': {
      'en': '[SOL qty]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '91s9wd8y': {
      'en': '0',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'jni213sv': {
      'en': 'Enter counted qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'i33juxw8': {
      'en': 'Full order',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'aye52e43': {
      'en': 'SOL Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '77u7z3kz': {
      'en': 'Order Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'j505si21': {
      'en': '[0 / 3]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'ckqvflzu': {
      'en': 'Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'zulqsn6k': {
      'en': '[Article name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'yqple5at': {
      'en': '[Article Id]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'ifq4gyml': {
      'en': '[SOL qty]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'ld3finek': {
      'en': '0',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'b3mg3285': {
      'en': 'Enter counted qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '6cp7cuuu': {
      'en': 'Full order',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '83k4b38d': {
      'en': 'SOL Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '19chbnyg': {
      'en': 'Order Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '45r97khb': {
      'en': '[0 / 3]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'zu71zt6v': {
      'en': 'Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '859vguea': {
      'en': '[Article name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'uxtyh8ri': {
      'en': '[Article Id]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'q9uglr8c': {
      'en': '[SOL qty]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '980bijnn': {
      'en': '0',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'm6ad5h8r': {
      'en': 'Enter counted qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'dmhfmv42': {
      'en': 'Full order',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'pjb6zed4': {
      'en': 'SOL Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'tg5f68qm': {
      'en': 'Order Qty',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'jth3xbhm': {
      'en': '[0 / 3]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'bvu01xwb': {
      'en': '[Point of Service]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'nsnizlli': {
      'en': '[Delivery Address Name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '7jb4w0c7': {
      'en': 'Home',
      'de': '',
      'fr': '',
      'pt': '',
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
    'ph7krbld': {
      'en': '[SOL User name]',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'memchm9e': {
      'en': 'Switch to Dark Mode',
      'de': '',
      'fr': '',
      'pt': '',
    },
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
  // Landing_Page
  {
    '831ld5kf': {
      'en': 'Select an option',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'f93jrieh': {
      'en': 'Button',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'r3q04hsm': {
      'en': 'Home',
      'de': '',
      'fr': '',
      'pt': '',
    },
  },
  // Settings_1
  {
    'ug4q66wi': {
      'en': 'Andrea Davis',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '5un06ab1': {
      'en': 'andrea@domainname.com',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'dzotfsny': {
      'en': 'Active',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'hmxlx2kk': {
      'en': 'Switch to Dark Mode',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'xr2t5nh0': {
      'en': 'Switch to Light Mode',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'rd8ws00r': {
      'en': 'Edit Profile',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '1m8baet1': {
      'en': 'Account Settings',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '614scjzc': {
      'en': 'Log Out',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'x6p4n3ps': {
      'en': '__',
      'de': '',
      'fr': '',
      'pt': '',
    },
  },
  // orderdate
  {
    '88cyuz9z': {
      'en': 'Order date',
      'de': '',
      'fr': '',
      'pt': '',
    },
  },
  // OrderDateRow
  {
    'hoivgb8s': {
      'en': '[Some hint text...]',
      'de': '[Einige Hinweistexte...]',
      'fr': '[Quelque texte d&#39;indice...]',
      'pt': '[Algum texto de dica...]',
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
