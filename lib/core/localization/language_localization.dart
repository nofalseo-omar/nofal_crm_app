import 'package:get/get.dart';
import 'package:nofal_crm_app/core/localization/arabic_language.dart';
import 'package:nofal_crm_app/core/localization/english_language.dart';

//Class that's responsible for Translation ->Localization part
class LanguageLocalization extends Translations {
  @override
  Map<String, Map<String, String>> get keys => {
        'ar': arabicLanguage,
        'en': englishLanguage,
      };
}
