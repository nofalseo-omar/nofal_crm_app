import 'package:nofal_crm_app/core/services/cache/cash_helper.dart';
import 'package:nofal_crm_app/core/services/cache/cash_keys.dart';

class SharedKeys {
  static const String countryCode = "countryCode";
  static const String isDoctor = "isDoctor";
  static const String doctorDetails = "doctor_details";
}

bool companyOrClient =
    CashHelper.getData(CacheKeys.userType) == 'company_or_technical'
        ? true
        : false;
