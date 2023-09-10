import 'package:flutter/material.dart';

class CartItem extends StatelessWidget {
  final int count;
  final VoidCallback onIncrement;
  final VoidCallback onDecrement;

  const CartItem({
    Key? key,
    required this.count,
    required this.onIncrement,
    required this.onDecrement,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 100,
      margin: const EdgeInsets.symmetric(
        horizontal: 24,
        vertical: 18 / 2,
      ),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Row(
        children: [
          Padding(
            padding: const EdgeInsets.only(
              left: 21,
            ),
            child: Container(
              decoration: BoxDecoration(
                color: const Color(0xFFF7EAE7),
                borderRadius: BorderRadius.circular(14),
              ),
              child: Image.asset(
                'assets/idk.png',
                width: 67,
                height: 65,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.only(
              top: 19,
              bottom: 18,
              left: 15,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Padding(
                  padding: EdgeInsets.only(bottom: 5),
                  child: Text(
                    'Special Bulgogi',
                    style: TextStyle(
                      fontSize: 14,
                      color: Color(0xff231D25),
                    ),
                  ),
                ),
                const Padding(
                  padding: EdgeInsets.only(
                    bottom: 9,
                  ),
                  child: Text(
                    'Indian chicken',
                    style: TextStyle(
                      fontSize: 12,
                      color: Color(0xff919191),
                    ),
                  ),
                ),
                Row(
                  children: const [
                    Text(
                      '\$',
                      style: TextStyle(
                        color: Color(0xFFFE5A01),
                        fontSize: 12,
                      ),
                    ),
                    Text(
                      '286',
                      style: TextStyle(
                        fontSize: 15,
                        color: Color(0xff231D25),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
          const Spacer(),
          Padding(
            padding: const EdgeInsets.fromLTRB(0, 14, 18, 14),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                InkWell(
                  onTap: onIncrement,
                  child: const Icon(
                    Icons.add_circle,
                    color: Color(0xFFFE5A01),
                    size: 25,
                  ),
                ),
                Text(
                  '$count',
                  style: const TextStyle(
                    fontSize: 20,
                  ),
                ),
                InkWell(
                  onTap: onDecrement,
                  child: const Icon(
                    Icons.remove_circle,
                    color: Color(0xFFFE5A01),
                    size: 25,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
