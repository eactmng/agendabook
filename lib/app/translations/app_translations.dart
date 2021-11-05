import 'package:agendabook/app/translations/en_US/en_us_translations.dart';
import 'package:agendabook/app/translations/es_MX/es_mx_translations.dart';
import 'package:agendabook/app/translations/pt_BR/pt_br_translations.dart';

import 'ko_KR/ko_kr_translations.dart';

abstract class AppTranslation {
  static Map<String, Map<String, String>> translations = {
    'ko_KR': koKR,
    'en_US': enUs,
    'pt_BR': ptBR,
    'es_mx': esMx
  };
}
