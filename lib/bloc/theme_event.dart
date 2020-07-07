part of 'theme_bloc.dart';

@immutable
abstract class ThemeEvent {}

class ChangeTheme extends ThemeEvent {
  final ThemeData themeData;

  ChangeTheme(this.themeData);

  @override
  List<Object> get props => [themeData];
}
