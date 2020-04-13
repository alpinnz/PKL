import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import './src/app.dart';
import 'src/blocs/authentication/authentication_bloc.dart';
import 'src/models/user/user_repository.dart';

void main() {
  BlocSupervisor.delegate = SimpleBlocDelegate();
  final userRepository = UserRepository();
  runApp(
    BlocProvider<AuthenticationBloc>(
      create: (context) {
        return AuthenticationBloc(userRepository: userRepository)
          ..add(AppStarted());
      },
      child: App(userRepository: userRepository),
    ),
  );
}

