sealed class SignInStates {}

class SignInIntial extends SignInStates {}

class SignInLoading extends SignInStates {}

class SignInSuccess extends SignInStates {}

class SignInError extends SignInStates {
  String errorMessage;
  SignInError({required this.errorMessage});
}
