import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';
import 'package:loginhomemt/controller/core/custom_function.dart';
import 'package:loginhomemt/controller/core/sizes.dart';

class TestimonalWidget extends StatelessWidget {
  const TestimonalWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: AppColors.white,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Testimonal',
              style:
                  CustomFunctions.style(fontWeight: FontWeight.w600, size: 17),
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: 2,
              itemBuilder: (context, index) {
                return _buildTestimonal();
              },
            ),
          ],
        ),
      ),
    );
  }
}

Widget _buildTestimonal() {
  return Container(
    margin: const EdgeInsets.only(bottom: 8),
    height: 120,
    width: double.infinity,
    decoration: BoxDecoration(
        color: AppColors.grey.withAlpha(300), borderRadius: AppSizes.radius10),
    child: Row(
      children: [
        AppSizes.width10,
        Stack(
          clipBehavior: Clip.none,
          children: [
            const CircleAvatar(
              radius: 35,
              backgroundImage: AssetImage('assets/images/download.png'),
            ),
            Positioned(
              top: -0,
              right: -0,
              child: CircleAvatar(
                radius: 12,
                backgroundColor: AppColors.orange,
              ),
            )
          ],
        ),
        AppSizes.width10,
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            RichText(
              text: TextSpan(
                text: 'Joan Hook',
                style: CustomFunctions.style(
                    fontWeight: FontWeight.w600, size: 16),
                children: [
                  TextSpan(
                    text: '    Chennai',
                    style: CustomFunctions.style(
                        fontWeight: FontWeight.w500,
                        size: 12,
                        color: AppColors.grey),
                  )
                ],
              ),
            ),
            const SizedBox(
              width: 250,
              child: Text(
                "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to ",
                maxLines: 3,
              ),
            ),
          ],
        )
      ],
    ),
  );
}
