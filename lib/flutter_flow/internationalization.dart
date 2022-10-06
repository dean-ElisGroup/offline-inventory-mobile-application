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
  // Landing_Page
  {
    '831ld5kf': {
      'en': 'Please select an option',
      'de': 'Bitte wähle eine Option',
      'fr': 'veuillez sélectionner une option',
      'pt': 'Por favor selecione uma opção',
    },
    '66uxnyn3': {
      'en': 'Orders',
      'de': 'Aufträge',
      'fr': 'Ordres',
      'pt': 'Pedidos',
    },
    'uesclyft': {
      'en': 'View Orders',
      'de': 'Bestellungen anzeigen',
      'fr': 'Afficher les commandes',
      'pt': 'Ver pedidos',
    },
    'jzv7vupq': {
      'en': 'Send Orders',
      'de': 'Bestellungen senden',
      'fr': 'Envoyer des commandes',
      'pt': 'Enviar pedidos',
    },
    '2rdppstu': {
      'en': 'Settings',
      'de': 'Einstellungen',
      'fr': 'Réglages',
      'pt': 'Definições',
    },
    'qaaggo2a': {
      'en': 'Logout',
      'de': 'Ausloggen',
      'fr': 'Se déconnecter',
      'pt': 'Sair',
    },
    'r3q04hsm': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'pt': 'Casa',
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
      'de': 'Lieferadresse auswählen',
      'fr': 'Sélectionnez l&#39;adresse de livraison',
      'pt': 'Selecione o endereço de entrega',
    },
    '9zjjmymi': {
      'en': 'Orders',
      'de': 'Aufträge',
      'fr': 'Ordres',
      'pt': 'Pedidos',
    },
  },
  // Point_Of_Service_Group
  {
    '2egxu8it': {
      'en': 'Point of Service Group',
      'de': 'Point-of-Service-Gruppe',
      'fr': 'Groupe de point de service',
      'pt': 'Grupo de Ponto de Atendimento',
    },
    'yump08wx': {
      'en': 'Delivery address',
      'de': 'Lieferadresse',
      'fr': 'Adresse de livraison',
      'pt': 'Endereço de entrega',
    },
    '61jj7cic': {
      'en': 'Select point of service group',
      'de': 'Point-of-Service-Gruppe auswählen',
      'fr': 'Sélectionnez un groupe de points de service',
      'pt': 'Selecione o grupo de ponto de serviço',
    },
    'wwbth8aa': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'pt': 'Casa',
    },
  },
  // Point_of_Service
  {
    'xkm1blj5': {
      'en': 'Point of Service',
      'de': 'Servicestelle',
      'fr': 'Point de service',
      'pt': 'Ponto de serviço',
    },
    'iax5dttp': {
      'en': 'Delivery address',
      'de': 'Lieferadresse',
      'fr': 'Adresse de livraison',
      'pt': 'Endereço de entrega',
    },
    '0mhcu8dx': {
      'en': 'Point of service group',
      'de': 'Point-of-Service-Gruppe',
      'fr': 'Groupe de point de service',
      'pt': 'Grupo de ponto de serviço',
    },
    'p0ixjwfv': {
      'en': 'Select point of service',
      'de': 'Servicestelle auswählen',
      'fr': 'Sélectionnez le point de service',
      'pt': 'Selecione o ponto de atendimento',
    },
    'spf68vtu': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'pt': 'Casa',
    },
  },
  // Article_Entry
  {
    'rms3uobx': {
      'en': 'Order entry',
      'de': 'Auftragserfassung',
      'fr': 'La saisie des commandes',
      'pt': 'Entrada de pedido',
    },
    'lss4rtgz': {
      'en': 'Enter counted qty',
      'de': 'Gezählte Menge eingeben',
      'fr': 'Entrez la quantité comptée',
      'pt': 'Insira a quantidade contada',
    },
    '2su3z5bc': {
      'en': 'Qty',
      'de': 'Menge',
      'fr': 'Qté',
      'pt': 'Quantidade',
    },
    'nqn32a7t': {
      'en': 'Sheet Single',
      'de': '[ Artikelname ]',
      'fr': '[ Nom d&#39;article ]',
      'pt': '[ Nome do artigo ]',
    },
    'fdvogtq2': {
      'en': '112254',
      'de': '[Artikel-ID]',
      'fr': '[ Identifiant de l&#39;article ]',
      'pt': '[ID do artigo]',
    },
    '8s79twv3': {
      'en': '1 / 3',
      'de': '[ 0 / 0 ]',
      'fr': '[ 0 / 0 ]',
      'pt': '[0/0]',
    },
    'gk4kwxq4': {
      'en': 'SOL Qty',
      'de': 'SOL Menge',
      'fr': 'Qté SOL',
      'pt': 'SOL Qtd.',
    },
    'a0id8l3r': {
      'en': 'Order qty',
      'de': 'Bestellmenge',
      'fr': 'Quantité de commande',
      'pt': 'Quantidade do pedido',
    },
    'rt748xh9': {
      'en': '120',
      'de': '[SOL Menge]',
      'fr': '[ Quantité SOL ]',
      'pt': '[ SOL qtd ]',
    },
    '506frxhc': {
      'en': '0',
      'de': '0',
      'fr': '0',
      'pt': '0',
    },
    '7jb4w0c7': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'pt': 'Casa',
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
    'x6b64wx6': {
      'en': 'Select order',
      'de': '',
      'fr': '',
      'pt': '',
    },
    '9p5xfj3g': {
      'en': '[orderId]',
      'de': '',
      'fr': '',
      'pt': '',
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
    'v1ybuqyo': {
      'en': 'Select order to send',
      'de': '',
      'fr': '',
      'pt': '',
    },
    'txsltr5f': {
      'en': '[orderId]',
      'de': '',
      'fr': '',
      'pt': '',
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
    'wppp594p': {
      'en': '[SOL User name]',
      'de': '[SOL-Benutzername]',
      'fr': '[Nom d&#39;utilisateur SOL]',
      'pt': '[Nome de usuário SOL]',
    },
    '1qjhsg3w': {
      'en': 'Switch to Dark Mode',
      'de': 'Wechseln Sie in den dunklen Modus',
      'fr': 'Passer en mode sombre',
      'pt': 'Mudar para o modo escuro',
    },
    'wus7hb9t': {
      'en': 'Logout',
      'de': 'Wechseln Sie in den dunklen Modus',
      'fr': 'Passer en mode sombre',
      'pt': 'Mudar para o modo escuro',
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
  // Settings_1
  {
    'ug4q66wi': {
      'en': 'Andrea Davis',
      'de': 'Andrea Davis',
      'fr': 'Andréa Davis',
      'pt': 'Andrea Davis',
    },
    '5un06ab1': {
      'en': 'andrea@domainname.com',
      'de': 'andrea@domainname.com',
      'fr': 'andrea@nomdomaine.com',
      'pt': 'andrea@domainname.com',
    },
    'dzotfsny': {
      'en': 'Active',
      'de': 'Aktiv',
      'fr': 'Actif',
      'pt': 'Ativo',
    },
    'hmxlx2kk': {
      'en': 'Switch to Dark Mode',
      'de': 'Wechseln Sie in den dunklen Modus',
      'fr': 'Passer en mode sombre',
      'pt': 'Mudar para o modo escuro',
    },
    'xr2t5nh0': {
      'en': 'Switch to Light Mode',
      'de': 'Wechseln Sie in den Lichtmodus',
      'fr': 'Passer en mode lumière',
      'pt': 'Mudar para o modo de luz',
    },
    'rd8ws00r': {
      'en': 'Edit Profile',
      'de': 'Profil bearbeiten',
      'fr': 'Editer le profil',
      'pt': 'Editar Perfil',
    },
    '1m8baet1': {
      'en': 'Account Settings',
      'de': 'Account Einstellungen',
      'fr': 'Paramètres du compte',
      'pt': 'Configurações da conta',
    },
    '614scjzc': {
      'en': 'Log Out',
      'de': 'Ausloggen',
      'fr': 'Se déconnecter',
      'pt': 'Sair',
    },
    'x6p4n3ps': {
      'en': '__',
      'de': '__',
      'fr': '__',
      'pt': '__',
    },
  },
  // Amend_ArticleEntry
  {
    '2mzkhscy': {
      'en': 'Amend order',
      'de': 'Bestellung ändern',
      'fr': 'Modifier la commande',
      'pt': 'Alterar ordem',
    },
    'wf4mjljn': {
      'en': 'Home',
      'de': 'Heim',
      'fr': 'Maison',
      'pt': 'Casa',
    },
  },
  // orderdate
  {
    '88cyuz9z': {
      'en': 'Order date',
      'de': 'Bestelldatum',
      'fr': 'Date de commande',
      'pt': 'Data do pedido',
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
    'wly08vla': {
      'en': 'Allow permission to recieve notifications.',
      'de': 'Erlauben Sie die Berechtigung, Benachrichtigungen zu erhalten.',
      'fr': 'Autoriser l&#39;autorisation de recevoir des notifications.',
      'pt': 'Permitir permissão para receber notificações.',
    },
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
