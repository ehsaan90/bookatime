/*
  Authors : initappz (Rahul Jograna)
  Website : https://initappz.com/
  App Name : Ultimate Salon Full App Flutter V3
  This App Template Source code is licensed as per the
  terms found in the Website https://initappz.com/license
  Copyright and Good Faith Purchasers © 2024-present initappz.
*/
import 'package:owner/app/backend/api/api.dart';
import 'package:owner/app/helper/shared_pref.dart';
import 'package:get/get.dart';
import 'package:owner/app/util/constance.dart';

class StylistParser {
  final SharedPreferencesManager sharedPreferencesManager;
  final ApiService apiService;

  StylistParser({required this.sharedPreferencesManager, required this.apiService});

  Future<Response> getBySalonId(var body) async {
    var response = await apiService.postPrivate(AppConstants.getBySalonId, body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  Future<Response> salonDestroy(var body) async {
    var response = await apiService.postPrivate(AppConstants.destroySalon, body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }

  String getUid() {
    return sharedPreferencesManager.getString('uid') ?? '';
  }

  Future<Response> onUpdateService(var body) async {
    var response = await apiService.postPrivate(AppConstants.updateSalon, body, sharedPreferencesManager.getString('token') ?? '');
    return response;
  }
}
