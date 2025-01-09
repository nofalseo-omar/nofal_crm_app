import 'package:flutter/material.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';

class StarRating extends StatelessWidget {
  final double rating; // Accepts rating as a double (e.g., 3.5)
  final int maxRating; // Max rating is 5 by default, can be customized
  final Color filledColor; // Color for filled stars
  final Color emptyColor; // Color for empty stars

  const StarRating({
    super.key,
    required this.rating,
    this.maxRating = 5,
    this.filledColor = const Color(0xffE4D21F),
    this.emptyColor = const Color(0xffB5B5B5),
  });

  @override
  Widget build(BuildContext context) {
    return FittedBox(
      child: Row(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          ...List.generate(maxRating, (index) {
            if (index < rating) {
              return Icon(
                Icons.star_rounded,
                color: filledColor,
                size: 14,
              );
            } else if (index < rating && rating - index < 1) {
              // For half star if needed
              return Icon(
                Icons.star_half_rounded,
                color: filledColor,
                size: 14,
              );
            } else {
              return Icon(
                Icons.star_rounded,
                color: emptyColor,
                size: 14,
              );
            }
          }),
          const SizedBox(width: 8),
          Text(
            "($rating)",
            style: context.f24700!
                .copyWith(color: AppColors.darkGray, fontSize: 12),
          ),
        ],
      ),
    );
  }
}
