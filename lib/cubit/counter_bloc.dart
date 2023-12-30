import 'package:basketball_points/cubit/counter_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class CounterBloc extends Cubit<CounterState> {
  CounterBloc() : super(CounterAIncreamentState());
}
