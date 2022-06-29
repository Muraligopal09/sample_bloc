part of 'joke_bloc.dart';

@immutable
abstract class JokeState extends Equatable {}

class JokeInitial extends JokeState {
  @override
  List<Object?> get props => [];
}

class JokeLoadingState extends JokeState {
  @override
  List<Object?> get props => [];
}

class JokeLoadedState extends JokeState {
  final JokeModel jkmodel;

  JokeLoadedState(this.jkmodel);

  @override
  List<Object?> get props => [jkmodel];
}

class JokeErrorState extends JokeState {
  final String error;

  JokeErrorState(this.error);

  @override
  List<Object?> get props => [error];
}
