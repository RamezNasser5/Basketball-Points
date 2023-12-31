import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterCubit extends Cubit<CounterState> {
  CounterCubit() : super(CounterAIncreamentState());
  int counterA = 0;
  int counterB = 0;
  void counterIncreament({required String team, required int buttonNumber}) {
    if (team == 'A') {
      counterA += buttonNumber;
      emit(CounterAIncreamentState());
    } else {
      counterB += buttonNumber;
      emit(CounterBIncreamentState());
    }
  }

  void counterReset() {
    counterA = 0;
    counterB = 0;
    emit(CounterResetState());
  }
}
