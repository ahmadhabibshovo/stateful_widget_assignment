import 'package:flutter/material.dart';
import 'package:stateful_widget_assignment/models/product_model.dart';
import 'package:stateful_widget_assignment/widgets/product_count_and_price.dart';
import 'package:stateful_widget_assignment/widgets/product_info.dart';
import 'package:stateful_widget_assignment/widgets/product_name.dart';

class ProductCard extends StatelessWidget {
  const ProductCard({
    super.key,
    required this.product,
    required this.stateUpdate,
  });

  final Product product;
  final Function() stateUpdate;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 120,
      clipBehavior: Clip.hardEdge,
      margin: const EdgeInsets.fromLTRB(20, 0, 20, 15),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(15),
        color: const Color(0xffffffff),
      ),
      child: Row(
        children: [
          Image(image: AssetImage(product.image)),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductName(product: product),
                  ProductInfo(product: product),
                  const SizedBox(
                    height: 15,
                  ),
                  ProductCountAndPrice(
                    product: product,
                    stateUpdate: stateUpdate,
                  ),
                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
