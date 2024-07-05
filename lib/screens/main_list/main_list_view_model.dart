import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_mvvm_architecture/screens/main_list/main_list_state.dart';

class MainListViewModel extends Cubit<MainListState> {
  MainListViewModel() : super(const MainListState());

  setShowDetails(bool showDetails) {
    emit(state.copyWith(
      showDetails: showDetails,
    ));
  }
}
