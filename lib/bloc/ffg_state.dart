part of 'ffg_bloc.dart';

abstract class FfgState extends Equatable {
  const FfgState();
}

class FfgInitial extends FfgState {
  @override
  List<Object> get props => [];
}
