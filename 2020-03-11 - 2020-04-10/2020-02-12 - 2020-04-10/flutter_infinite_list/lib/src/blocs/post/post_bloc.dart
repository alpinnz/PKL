import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;

import './../../models/models.dart';

part 'post_event.dart';
part 'post_state.dart';
part 'post_delegate.dart';

class PostBloc extends Bloc<PostEvent, PostState> {

  final http.Client httpClient;

  PostBloc({@required this.httpClient});


  @override
  PostState get initialState => PostInitial();

  @override
  Stream<PostState> mapEventToState(
    PostEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
