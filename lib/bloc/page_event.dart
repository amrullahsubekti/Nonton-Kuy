part of 'page_bloc.dart';

@immutable
abstract class PageEvent {}

class GoToSplashPage extends PageEvent {
  List<Object> get props => [];
}

class GoToLoginPage extends PageEvent {
  List<Object> get props => [];
}

class GoToMainPage extends PageEvent {
  List<Object> get props => [];
}

class GoToRegistrationPage extends PageEvent {
  final RegistrationData registrationData;
  GoToRegistrationPage(this.registrationData);
  List<Object> get props => [];
}

class GoToPreferencePage extends PageEvent {
  final RegistrationData registrationData;
  GoToPreferencePage(this.registrationData);
  List<Object> get props => [];
}

class GoToAccountConfirmationPage extends PageEvent {
  final RegistrationData registrationData;
  GoToAccountConfirmationPage(this.registrationData);
  List<Object> get props => [];
}
