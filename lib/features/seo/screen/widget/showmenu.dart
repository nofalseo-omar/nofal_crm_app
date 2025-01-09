import 'package:flutter/material.dart';

RelativeRect calRect(TapDownDetails details, BuildContext context) {
  final RenderBox overlay =
      Overlay.of(context).context.findRenderObject() as RenderBox;

  // Get the tap position
  final Offset position = details.globalPosition;

  // Convert the tap position into a RelativeRect
  return RelativeRect.fromLTRB(
    position.dx, // Left
    position.dy, // Top
    overlay.size.width - position.dx, // Right
    overlay.size.height - position.dy, // Bottom
  );
}
