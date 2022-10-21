part of 'constants.dart';

mixin AppDecorations {
  static const List<BoxShadow> basicShadows = [
    BoxShadow(
      offset: Offset(0, 2),
      blurRadius: 24,
      color: Color.fromRGBO(0, 0, 0, 0.08),
    ),
    BoxShadow(
      blurRadius: 2,
      color: Color.fromRGBO(0, 0, 0, 0.08),
    ),
  ];
}
