abstract class PasswordStates {}

class PasswordInitState extends PasswordStates {}

class OTPVerificationLoading extends PasswordStates {}

class OTPVerificationFinished extends PasswordStates {}

class OTPVerificationError extends PasswordStates {}
