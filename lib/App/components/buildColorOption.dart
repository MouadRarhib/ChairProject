import 'package:ecomapp/App/modules/product_details.dart/controller/product_details_controller.dart';
import 'package:ecomapp/utils/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ColorOptionWidget extends StatelessWidget {
  final Color color;
  final bool isSelected;

  ColorOptionWidget({required this.color, required this.isSelected});

  @override
  Widget build(BuildContext context) {
    ProductDetailsController detailsController =
        Get.put(ProductDetailsController());

    return GestureDetector(
      onTap: () {
        // Update the selected color when tapped
        detailsController.selectedColor.value = color;
      },
      child: Container(
        height: 30,
        width: 30,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          color: color,
          border: Border.all(
            color: isSelected ? AppColors.mainColor : Colors.transparent,
            width: 5,
          ),
        ),
      ),
    );
  }
}
