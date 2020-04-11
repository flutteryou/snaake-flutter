import 'dart:math';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:snaake/game/blocs/game_bloc.dart';
import 'package:snaake/game/flame/flame_manager.dart';
import 'package:snaake/game/screens/game_screen.dart';

void main() => runApp(MainApp());

class MainApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider(
        create: (context) => GameBloc(
          flameManager: FlameManager(),
          random: Random(),
        ),
        child: GameScreen(),
      ),
    );
  }
}