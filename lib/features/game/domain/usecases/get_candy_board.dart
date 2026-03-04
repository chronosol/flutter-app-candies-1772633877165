import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../entities/candy_board.dart';

final getCandyBoardProvider = Provider<GetCandyBoard>((ref) => GetCandyBoard());

class GetCandyBoard {
  Future<CandyBoard> call() async {
    await Future.delayed(const Duration(seconds: 2));
    return const CandyBoard(board: [
      [1, 2, 3, 4, 5],
      [6, 7, 8, 9, 0],
      [1, 2, 3, 4, 5],
      [6, 7, 8, 9, 0],
      [1, 2, 3, 4, 5],
    ]);
  }
}
