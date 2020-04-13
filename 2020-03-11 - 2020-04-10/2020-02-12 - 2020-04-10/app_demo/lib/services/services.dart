import 'dart:async';

import 'package:app_demo/services/routes.dart';


Future<void> services() async {
  try {
    await Routes.createRoutes();

    print('Services setup has success');
    
  } catch (error) {
    print('Services setup has failed');
  }
}
