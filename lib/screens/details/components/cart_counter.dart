import 'package:flutter/material.dart';
import 'package:online_shop_app/constants.dart';
class CartCounter extends StatefulWidget {
  const CartCounter({Key? key}) : super(key: key);

  @override
  State<CartCounter> createState() => _CartCounterState();
}

class _CartCounterState extends State<CartCounter> {
  int numOfItems = 1;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        buildOutlineButton(
          icon: Icon(Icons.remove),
          press: () {
            setState(() {
              numOfItems > 1 ? numOfItems-- : 1;
            });
          },
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: kDefaultPadding/2),
          child: Text(
            numOfItems.toString().padLeft(2,"0"),
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        buildOutlineButton(
          icon: Icon(Icons.add),
          press: () {
            setState(() {
              numOfItems++;
            });
          },
        )
      ],
    );
  }
}

class buildOutlineButton extends StatelessWidget {
  final Icon icon;
  final VoidCallback press;
  const buildOutlineButton({Key? key, required this.icon, required this.press})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 32,
      width: 40,
      child: OutlineButton(
        padding: EdgeInsets.zero,
        onPressed: press,
        child: icon,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(13)),
      ),
    );
  }
}
