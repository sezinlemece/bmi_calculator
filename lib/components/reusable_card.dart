import 'package:flutter/material.dart';

class ReusableCard extends StatelessWidget {
  const ReusableCard(
      {Key? key,
      required this.color,
      required this.cardChild,
      required this.onPress})
      : super(key: key);

  //const ve final ile değiştirilemez değişkenler atanır. ikisinin farkı:
  // örn değişken olarak DataTime.now() atamak istersek; Final da atama yapabiliriz ancak const da yapamayız.
  final Color color;
  final Widget cardChild;
  final VoidCallback onPress;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPress,
      child: Container(
        child: cardChild,
        margin: const EdgeInsets.all(15.0),
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(10.0),
        ),
      ),
    );
  }
}
