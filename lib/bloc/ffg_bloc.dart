import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:equatable/equatable.dart';

part 'ffg_event.dart';
part 'ffg_state.dart';

class FfgBloc extends Bloc<FfgEvent, FfgState> {
  @override
  FfgState get initialState => FfgInitial();

  @override
  Stream<FfgState> mapEventToState(
    FfgEvent event,
  ) async* {
    // TODO: implement mapEventToState
  }
}
