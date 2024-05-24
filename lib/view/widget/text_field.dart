import 'package:flutter/material.dart';
import 'package:loginhomemt/controller/core/colors.dart';

class TextFormFieldWidget extends StatelessWidget {
  const TextFormFieldWidget(
      {super.key,
      required this.labelText,
      this.prefixIcn,
      this.suffixIcn,
      this.isPass = false});

  final IconData? prefixIcn;
  final IconData? suffixIcn;
  final String labelText;
  final bool isPass;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      child: TextFormField(
        decoration: InputDecoration(
          prefixIcon: Icon(prefixIcn),
          suffixIcon: IconButton(
            splashRadius: 4,
            onPressed: () {},
            icon: isPass == true
                ? const Icon(Icons.visibility_off)
                : const SizedBox(),
          ),
          label: Text(labelText),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10),
            borderSide: BorderSide(color: AppColors.grey),
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(8),
            borderSide: BorderSide(color: AppColors.grey),
          ),
        ),
        obscureText: true,
      ),
    );
  }
}
