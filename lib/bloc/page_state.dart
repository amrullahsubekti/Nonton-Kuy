part of 'page_bloc.dart';

@immutable
abstract class PageState {}

class OnInitialPage extends PageState {
  List<Object> get props => [];
}

class OnLoginPage extends PageState {
  List<Object> get props => [];
}

class OnSplashPage extends PageState {
  List<Object> get props => [];
}

class OnMainPage extends PageState {
  List<Object> get props => [];
}

class OnRegistrationPage extends PageState {
  final RegistrationData registrationData;
  OnRegistrationPage(this.registrationData);
  List<Object> get props => [];
}

class OnPreferencePage extends PageState {
  final RegistrationData registrationData;
  OnPreferencePage(this.registrationData);
  List<Object> get props => [];
}

class OnAccountConfirmationPage extends PageState {
  final RegistrationData registrationData;
  OnAccountConfirmationPage(this.registrationData);
  List<Object> get props => [];
}
