sealed class SignUpStates {}

class SignUpIntial extends SignUpStates {}

class SignUpLoading extends SignUpStates {}

class SignUpSuccess extends SignUpStates {}

class SignUpError extends SignUpStates {
  String? errorMessage;
  SignUpError({required this.errorMessage});
}
