import 'package:flutter/material.dart';
import 'package:stateful_widget_assignment/models/product_model.dart';

class ProductName extends StatelessWidget {
  const ProductName({
    super.key,
    required this.product,
  });

  final Product product;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            product.name,
            style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
          ),
          IconButton(
              style: const ButtonStyle(
                tapTargetSize:
                    MaterialTapTargetSize.shrinkWrap, // the '2023' part
              ),
              padding: EdgeInsets.zero,
              constraints: const BoxConstraints(),
              onPressed: () {},
              icon: const Icon(
                Icons.more_vert,
                color: Colors.grey,
              )),
        ],
      ),
    );
  }
}
