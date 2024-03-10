import 'package:flutter/material.dart';
import 'package:flutter_scroller_task_2/constants/color_constants.dart';

class TopModel {
  final String title;
  final String subtitle;
  final String author;
  final String readTime;
  final Color boxColor;
  final Color titleColor;
  final Color titleBackgroundColor;
  final Color textColor;
  final Color iconColor;

  TopModel(
      {required this.title,
      required this.subtitle,
      required this.author,
      required this.readTime,
      required this.boxColor,
      required this.titleColor,
      required this.titleBackgroundColor,
      required this.textColor,
      required this.iconColor});

  static List<TopModel> topModel = [
    TopModel(
        title: "Design Thinking",
        subtitle: "Making design thinking inclusive",
        author: "John Doe",
        readTime: "5 min read",
        boxColor: const Color(0xFF7E6DD2),
        titleColor: const Color(0xFFAA97FF),
        titleBackgroundColor: AppColors().white,
        textColor: AppColors().white,
        iconColor: AppColors().white),
    TopModel(
        title: "User Experience Design",
        subtitle: "Creating delightful user experiences",
        author: "Jane Smith",
        readTime: "7 min read",
        boxColor: const Color(0xFFFFD264),
        titleColor: const Color(0xFFFFD264),
        titleBackgroundColor: AppColors().black,
        textColor: AppColors().black,
        iconColor: AppColors().black)
  ];
}
