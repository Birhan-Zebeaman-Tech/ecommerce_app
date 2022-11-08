import 'package:bloc/bloc.dart';

part 'bottom_nav_state.dart';

class BottomNavCubit extends Cubit<BottomNavState> {
  BottomNavCubit() : super(BottomNavState(bottomNavIndex: 0));
  void setBottomNavIndex(int indexValue) {
    emit(BottomNavState(bottomNavIndex: state.bottomNavIndex = indexValue));
  }
}
