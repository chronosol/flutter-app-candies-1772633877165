import 'package:go_router/go_router.dart';
import '../../features/game/presentation/screens/game_screen.dart';

final GoRouter appRouter = GoRouter(
  routes: <GoRoute>[
    GoRoute(
      path: '/',
      builder: (context, state) => const GameScreen(),
    ),
  ],
);
