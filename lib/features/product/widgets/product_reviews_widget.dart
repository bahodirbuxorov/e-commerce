import 'package:flutter/material.dart';

import '../../../core/constants/color.dart';

class ProductReviewsWidget extends StatelessWidget {
  const ProductReviewsWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(

      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        // Reviews Title
        const Text(
          "Reviews",
          style: TextStyle(
            height: 2,
            color: CustomColor.whiteColor,
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 15),

        // Ratings Overview
        const Text(
          "4.5 Ratings",
          style: TextStyle(
            color: CustomColor.whiteColor,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 8),
        const Text(
          "213 Reviews",
          style: TextStyle(
            color: CustomColor.boldgreyColor,
            fontSize: 16,
          ),
        ),
        const SizedBox(height: 16),

        // Individual Reviews
        _buildReview(
          avatar: "assets/images/avatar.png",
          name: "Alex Morgan",
          review:
          "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.",
          date: "12 days ago",
          rating: 4,
        ),
        const SizedBox(height: 16),
        _buildReview(
          avatar: "assets/images/avatar.png",
          name: "Alex Morgan",
          review:
          "Gucci transcribes its heritage, creativity, and innovation into a plenitude of collections. From staple items to distinctive accessories.",
          date: "12 days ago",
          rating: 4,
        ),
        const SizedBox(height: 16),
      ],
    );
  }

  Widget _buildReview({
    required String avatar,
    required String name,
    required String review,
    required String date,
    required int rating,
  }) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          contentPadding: EdgeInsets.zero,
          leading: CircleAvatar(
            backgroundImage: AssetImage(avatar),
            radius: 20,
          ),
          title: Text(
            name,
            style: const TextStyle(
              color: CustomColor.whiteColor,
              fontSize: 16,
              fontWeight: FontWeight.bold,
            ),
          ),
          trailing: Row(
            mainAxisSize: MainAxisSize.min,
            children: List.generate(
              5,
                  (index) => Icon(
                index < rating ? Icons.star : Icons.star_border,
                color: CustomColor.buttonColor,
                size: 18,
              ),
            ),
          ),
        ),
        const SizedBox(height: 8),
        Text(
          review,
          style: const TextStyle(
            color: Colors.white70,
            fontSize: 14,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          date,
          style: const TextStyle(
            color: CustomColor.whiteColor, // Updated to use white color
            fontSize: 12,
          ),
        ),
      ],
    );
  }
}
