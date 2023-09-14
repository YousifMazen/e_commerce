import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/constants/values.dart';
import 'package:e_commerce/widgets/cart_item.dart';
import 'package:flutter/material.dart';

class CartScreen extends StatefulWidget {
  const CartScreen({super.key});

  @override
  State<CartScreen> createState() => _CartScreenState();
}

class _CartScreenState extends State<CartScreen> {
  List<int> itemCounts = [0, 0, 0, 0, 0, 0];

  void incrementCount(int index) {
    setState(() {
      itemCounts[index]++;
    });
  }

  void decrementCount(int index) {
    if (itemCounts[index] > 0) {
      setState(() {
        itemCounts[index]--;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 251, 250, 252),
      appBar: AppBar(),
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: itemCounts.length,
                itemBuilder: (context, index) {
                  return CartItem(
                    count: itemCounts[index],
                    onIncrement: () => incrementCount(index),
                    onDecrement: () => decrementCount(index),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                width: double.infinity,
                height: 60,
                alignment: Alignment.center,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
                child: TextField(
                  textAlignVertical: TextAlignVertical.center,
                  decoration: InputDecoration(
                    enabledBorder: InputBorder.none,
                    hintText: 'Enter promo code',
                    hintStyle: const TextStyle(
                      fontFamily: 'Roboto',
                      fontSize: 14,
                      color: Color.fromARGB(178, 35, 29, 37),
                    ),
                    prefixIcon: const Icon(Icons.percent_rounded),
                    prefixIconColor: const Color(0xFFFE5A01),
                    suffixIcon: Padding(
                      padding: const EdgeInsets.fromLTRB(0, 3, 9, 3),
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          elevation: 0,
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(21),
                          ),
                        ),
                        onPressed: () {},
                        child: const Text(
                          'Apply',
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            fontSize: 12,
                            color: Color(0xFFFFFFFF),
                          ),
                        ),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              width: double.infinity,
              height: 280,
              decoration: const BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(15),
                    topRight: Radius.circular(15)),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  const Padding(
                    padding: EdgeInsets.symmetric(
                      horizontal: 25,
                      vertical: 25,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Total Amount',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff222226),
                                ),
                              ),
                              Text(
                                '524,000 \$',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff222226),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(bottom: 5),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text(
                                'Deivery',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff222226),
                                ),
                              ),
                              Text(
                                '2,000 \$',
                                style: TextStyle(
                                  fontSize: 15,
                                  color: Color(0xff222226),
                                ),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              'Offer',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffFF0000),
                              ),
                            ),
                            Text(
                              '-4000 \$',
                              style: TextStyle(
                                fontSize: 15,
                                color: Color(0xffFF0000),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const Divider(
                    indent: 25,
                    endIndent: 25,
                  ),
                  const Padding(
                    padding: EdgeInsets.only(bottom: 24, top: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 20),
                          child: Text(
                            'Grand Total',
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w700,
                              color: Color(0xffFE5A01),
                            ),
                          ),
                        ),
                        Text(
                          '\$ 300,00',
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w700,
                            color: Color(0xffFE5A01),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    width: 320,
                    height: 50,
                    margin: const EdgeInsets.only(bottom: 40),
                    child: ElevatedButton(
                      onPressed: () => Navigator.of(context)
                          .pushNamed(RoutesNames.locationDetect),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xff231D25),
                        elevation: 0,
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(Values.inputs_br),
                        ),
                      ),
                      child: const Text(
                        'Checkout',
                        style: TextStyle(
                          fontSize: 25,
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
