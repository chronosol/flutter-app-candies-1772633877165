import 'package:freezed_annotation/freezed_annotation.dart';

part 'candy_board.freezed.dart';

@freezed
class CandyBoard with _$CandyBoard {
  const factory CandyBoard({required List<List<int>> board}) = _CandyBoard;
}
