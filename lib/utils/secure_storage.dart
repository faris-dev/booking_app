import 'dart:convert';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class SecureStorage {
  static final _storage = FlutterSecureStorage();

  // *********************WRITE VALUE TO SECURE_STORAGE********************************

  static Future setStorage({required String key, required var value}) async {
    await _storage.write(key: key, value: value);
    print(getStorage(key));
  }

  // *********************GET VALUE FROM SECURE_STORAGE********************************

  static Future<String> getStorage(String key) async {
    var data = await _storage.read(key: key);
    return data != null ? data : "";
  }

  // *********************WRITE ARRAY TO SECURE_STORAGE********************************
  static Future setStorageArray(
      {required String key, required List<dynamic> value}) async {
    final val = json.encode(value);
    await _storage.write(key: key, value: val);
  }

  // *********************GET ARRAY FROM SECURE_STORAGE********************************

  static Future<List<dynamic>?> getStorageArray(String key) async {
    final val = await _storage.read(key: key);
    return val == null ? null : List<dynamic>.from(json.decode(val));
  }
}
