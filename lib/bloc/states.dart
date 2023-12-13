abstract class States {}
class InitialState extends States {}
class AddLoadingState extends States {}
class AddSuccessState extends States {}
class AddErrorState extends States {
  final String error;
  AddErrorState(this.error);
}

class GetLoadingState extends States {}
class GetSuccessState extends States {}
class GetErrorState extends States {}