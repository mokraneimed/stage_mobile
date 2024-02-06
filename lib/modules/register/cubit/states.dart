import 'cubit.dart';

abstract class RegisterStates {}

class RegisterLoadingState extends RegisterStates {}

class RegisterFinishedState extends RegisterStates {}

class RegisterInitialState extends RegisterStates {}

class RegisterErrorState extends RegisterStates {}

class RegisterNextStepState extends RegisterStates {
  int current_step;

  RegisterNextStepState(this.current_step);
}

class RegisterPreviousStepState extends RegisterStates {
  int current_step;

  RegisterPreviousStepState(this.current_step);
}

class RegisterRoleState extends RegisterStates {
  Role? role;

  RegisterRoleState(this.role);
}
