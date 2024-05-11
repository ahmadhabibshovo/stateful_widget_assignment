import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:stateful_widget_assignment/models/product_model.dart';
import 'package:stateful_widget_assignment/widgets/congrats_dialog.dart';
import 'package:stateful_widget_assignment/widgets/rounded_icon_button.dart';

class ProductCountAndPrice extends StatefulWidget {
  const ProductCountAndPrice({
    super.key,
    required this.product,
    required this.stateUpdate,
  });

  final Product product;
  final Function() stateUpdate;

  @override
  State<ProductCountAndPrice> createState() => _ProductCountAndPriceState();
}

class _ProductCountAndPriceState extends State<ProductCountAndPrice> {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            RoundedIconButton(
              onPressed: () {
                widget.product.less();
                widget.stateUpdate();
                setState(() {});
              },
              icon: Icons.remove,
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Text(
                widget.product.itemCount.toString(),
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    fontFamily: GoogleFonts.inter().fontFamily),
              ),
            ),
            RoundedIconButton(
              onPressed: () {
                widget.product.add();
                widget.stateUpdate();
                setState(() {});
                if ((widget.product.itemCount) % 5 == 0) {
                  congratsDialog(context,
                      message:
                          'You have added \n${widget.product.itemCount}\n ${widget.product.name} on your bag!');
                }
              },
              icon: Icons.add,
            )
          ],
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Text(
            "${widget.product.price}\$",
            style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                fontFamily: GoogleFonts.inter().fontFamily),
          ),
        )
      ],
    );
  }
}
