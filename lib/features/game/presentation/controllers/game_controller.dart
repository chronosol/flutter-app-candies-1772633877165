import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../domain/entities/candy_board.dart';
import '../../domain/usecases/get_candy_board.dart';

final gameControllerProvider =
    AsyncNotifierProvider<GameController, CandyBoard>(GameController.new);

class GameController extends AsyncNotifier<CandyBoard> {
  @override
  Future<void> build() async {
    state = const AsyncLoading();
    try {
      final board = await ref.read(getCandyBoardProvider)();
      state = AsyncData(board);
    } catch (e, stack) {
      state = AsyncValue.error(e, stack);
    }
  }
}
