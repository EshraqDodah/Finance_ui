import 'package:carousel_slider/carousel_slider.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:finance_ui/core/styling/app_colors.dart';
import 'package:finance_ui/core/widgets/spacing_widgets.dart';
import 'package:finance_ui/features/home_page/widgets/card_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCarouselWidget extends StatefulWidget {
  const CustomCarouselWidget({super.key});

  @override
  State<CustomCarouselWidget> createState() => _CustomCarouselWidgetState();
}

class _CustomCarouselWidgetState extends State<CustomCarouselWidget> {
  int currentIndexPage = 0;
  List<Widget> cardItem = const [
    CardItemWidget(
      cardName: "X-Card",
      balance: "23400 JD",
      cardNumber: "****  3434",
      expiryDate: "12/24",
    ),
    CardItemWidget(
      cardName: "M-Card",
      balance: "3209 JD",
      cardNumber: "****  4545",
      expiryDate: "12/24",
      cardColor: Color(0xff4151A6),
    ),
    CardItemWidget(
      cardName: "Y-Card",
      balance: "3209 JD",
      cardNumber: "****  4545",
      expiryDate: "12/24",
      cardColor: Colors.red,
    ),
    CardItemWidget(
      cardName: "Z-Card",
      balance: "3209 JD",
      cardNumber: "****  4545",
      expiryDate: "12/24",
      cardColor: Colors.deepPurple,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CarouselSlider(
          options: CarouselOptions(
            height: 263.h,
            padEnds: false,
            viewportFraction: 0.67,
            enlargeCenterPage: true,
            enlargeFactor: 0.17,
            onPageChanged: (index, reason) {
              setState(() {
                currentIndexPage = index;
              });
            },
          ),
          items: cardItem,
        ),
        const HeightSpace(16),
        DotsIndicator(
          dotsCount: cardItem.length,
          position: currentIndexPage.toDouble(),
          decorator: DotsDecorator(
            color: AppColors.whiteLightColor,
            activeColor: AppColors.primaryColor,
            size: const Size.square(8.0),
            activeSize: const Size(16.0, 8.0),
            spacing: EdgeInsets.symmetric(horizontal: 4),
            activeShape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(5.0),
            ),
          ),
        ),
      ],
    );
  }
}
