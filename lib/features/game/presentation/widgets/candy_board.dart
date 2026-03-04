import 'package:flutter/material.dart';
import '../../domain/entities/candy_board.dart';

class CandyBoard extends StatelessWidget {
  final CandyBoard board;

  const CandyBoard({Key? key, required this.board}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 5,
        childAspectRatio: 1.0,
      ),
      itemCount: board.board.length * board.board[0].length,
      itemBuilder: (context, index) {
        final row = index ~/ board.board[0].length;
        final col = index % board.board[0].length;
        return Container(
          margin: const EdgeInsets.all(4.0),
          decoration: BoxDecoration(
            color: Colors.primaries[board.board[row][col] % 18].shade300,
            borderRadius: BorderRadius.circular(8.0),
          ),
        );
      },
    );
  }
}
