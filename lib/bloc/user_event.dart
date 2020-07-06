part of 'user_bloc.dart';

@immutable
abstract class UserEvent {}

class LoadUser extends UserEvent {
  final String id;
  LoadUser(this.id);

  List<Object> get props => [id];
}

class SignOut extends UserEvent {
  List<Object> get props => [];
}
