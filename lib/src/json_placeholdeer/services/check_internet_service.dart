import 'package:connectivity_plus/connectivity_plus.dart';

class CheckInternetService {
  Future<bool> isConnected() async {
    final connectivityResult = await (Connectivity().checkConnectivity());

    return connectivityResult == ConnectivityResult.ethernet ||
        connectivityResult == ConnectivityResult.mobile ||
        connectivityResult == ConnectivityResult.wifi;
  }
}
