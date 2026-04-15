import 'package:flutter/material.dart';

class DirtyBadge extends StatelessWidget {
  const DirtyBadge({super.key, required this.changed, this.label});

  final bool changed;
  final String? label;

  @override
  Widget build(BuildContext context) {
    final color = changed ? Colors.orange.shade700 : Colors.grey.shade400;
    final label = this.label;
    return Row(
      mainAxisSize: MainAxisSize.min,
      children: [
        Icon(
          changed ? Icons.circle : Icons.circle_outlined,
          size: 10,
          color: color,
        ),
        if (label != null) ...[
          const SizedBox(width: 4),
          Text(label, style: TextStyle(color: color, fontSize: 11)),
        ],
      ],
    );
  }
}
