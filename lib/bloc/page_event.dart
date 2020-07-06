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
