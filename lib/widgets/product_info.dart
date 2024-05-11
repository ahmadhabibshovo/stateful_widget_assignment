import 'package:flutter/material.dart';
import 'package:stateful_widget_assignment/models/product_model.dart';

class ProductInfo extends StatelessWidget {
  const ProductInfo({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Color: ',
        style: const TextStyle(color: Colors.grey),
        children: <TextSpan>[
          TextSpan(
            text: product.color,
            style: const TextStyle(color: Colors.black),
          ),
          TextSpan(
            text: '     Size: ',
            style: const TextStyle(color: Colors.grey),
            children: <TextSpan>[
              TextSpan(
                text: product.size,
                style: const TextStyle(color: Colors.black),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
