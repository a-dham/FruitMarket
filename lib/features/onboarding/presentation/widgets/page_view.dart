import 'package:flutter/material.dart';
import 'package:fruits/features/onboarding/presentation/widgets/page_view_item.dart';

class Pageview extends StatelessWidget {
  const Pageview({
    Key? key,
    required this.pageController,
  }) : super(key: key);
  final PageController? pageController;

  @override
  Widget build(BuildContext context) {
    return PageView(
      controller: pageController,
      children: const [
        PageviewItem(
          image: 'assets/images/1.png',
          title: 'E Shopping',
          subtitle: 'Explore top organic fruits & grap them',
        ),
        PageviewItem(
          image: 'assets/images/2.png',
          title: 'Delivery on the way',
          subtitle: 'Get your order by speed delivery',
        ),
        PageviewItem(
          image: 'assets/images/3.png',
          title: 'Delivery Arrived',
          subtitle: 'Order is arrived at your place',
        )
      ],
    );
  }
}
