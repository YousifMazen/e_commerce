import 'package:e_commerce/constants/routes_names.dart';
import 'package:e_commerce/constants/values.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 251, 250, 252),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 0,
        selectedItemColor: const Color(0xFFFE5A01),
        unselectedItemColor: const Color(0xFFC4C4C4),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.money_off),
            label: 'Offers',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite_outline),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.add_shopping_cart_sharp),
            label: 'Hollan Go',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        onTap: (int index) {
          switch (index) {
            case 0:
              break;
            case 1:
              // Navigate to the Offers screen
              Navigator.of(context).pushNamed(
                RoutesNames.offers,
              );
              break;
            case 2:
              // Navigate to the Favorite screen
              Navigator.of(context).pushNamedAndRemoveUntil(
                RoutesNames.favorite,
                (route) => false,
              );
              break;
            case 3:
              // Navigate to the Hollan Go screen
              Navigator.of(context).pushNamedAndRemoveUntil(
                RoutesNames.hollanGo,
                (route) => false,
              );
              break;
            case 4:
              // Navigate to the Profile screen
              Navigator.of(context).pushNamedAndRemoveUntil(
                RoutesNames.profile,
                (route) => false,
              );
              break;
          }
        },
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [
              // Header
              Column(
                children: [
                  Stack(
                    alignment: AlignmentDirectional.center,
                    children: [
                      Container(
                        width: double.infinity,
                        height: 244,
                        child: Image.asset('assets/home_header.png',
                            fit: BoxFit.cover),
                      ),
                      Positioned(
                        top: 54,
                        child: Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                color: const Color(0xFFF2F2F2),
                                borderRadius:
                                    BorderRadius.circular(Values.inputs_br),
                              ),
                              width: 320,
                              child: Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: TextField(
                                  textAlignVertical: TextAlignVertical.center,
                                  decoration: InputDecoration(
                                    enabledBorder: InputBorder.none,
                                    hintText: 'Search',
                                    prefixIcon: const Icon(Icons.search),
                                    prefixIconColor: const Color(0xFF959FA8),
                                    suffixIcon: IconButton(
                                      onPressed: () {},
                                      icon: const Icon(Icons.filter_list),
                                    ),
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF959FA8),
                                      fontSize: 14,
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            Stack(
                              children: [
                                Container(
                                  width: 51,
                                  margin: const EdgeInsets.only(left: 7),
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF2F2F2),
                                    borderRadius:
                                        BorderRadius.circular(Values.inputs_br),
                                  ),
                                  child: IconButton(
                                    onPressed: () => Navigator.of(context)
                                        .pushNamed(RoutesNames.cart),
                                    icon: const Icon(
                                      Icons.shopping_bag_outlined,
                                      size: 30,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  top: 5,
                                  right: 7,
                                  child: Container(
                                    padding: const EdgeInsets.all(2),
                                    decoration: const BoxDecoration(
                                      color: Color(0xFFFE5A01),
                                      shape: BoxShape.circle,
                                    ),
                                    constraints: const BoxConstraints(
                                      minWidth: 16,
                                      minHeight: 16,
                                    ),
                                    child: const Center(
                                      child: Text(
                                        '4',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        left: 23,
                        child: Padding(
                          padding: const EdgeInsets.only(top: 75),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              Text(
                                'Holland Bazar',
                                style: TextStyle(
                                  fontSize: 28,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                              Text(
                                'Powered By TFC',
                                style: TextStyle(
                                  fontSize: 8,
                                  fontWeight: FontWeight.w700,
                                  color: Colors.white,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Offers
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    const Text(
                      'Offers',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w500,
                        color: Color(0xFF40484E),
                        height: 1.4,
                      ),
                    ),
                    TextButton(
                      onPressed: () => Navigator.of(context).pushNamed(
                        RoutesNames.offers,
                      ),
                      child: const Text(
                        'See all >',
                        style: TextStyle(
                          color: Color(0xFFFE5A01),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Offers list
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Row(
                      children: [
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                        Container(
                          decoration: BoxDecoration(
                            color: const Color(0xFFFE5A01),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          margin: const EdgeInsets.symmetric(horizontal: 6),
                          width: 195,
                          height: 195,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              const SizedBox(
                height: 39,
              ),
              // Shortcuts
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Padding(
                    padding: const EdgeInsets.only(left: 11),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.3,
                                  color: const Color(0xFF707070),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/home_header.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Past Order',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.3,
                                  color: const Color(0xFF707070),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/intro2.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Free Delivery',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.3,
                                  color: const Color(0xFF707070),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/beverages.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Beverages',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.3,
                                  color: const Color(0xFF707070),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/breakfast.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Breakfast ',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                        Column(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                border: Border.all(
                                  width: 0.3,
                                  color: const Color(0xFF707070),
                                ),
                                borderRadius: BorderRadius.circular(12),
                              ),
                              margin: const EdgeInsets.symmetric(horizontal: 6),
                              width: 75,
                              height: 75,
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(12),
                                child: Image.asset(
                                  'assets/intro1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                            const Padding(
                              padding: EdgeInsets.only(top: 5),
                              child: Text(
                                'Beverages',
                                style: TextStyle(
                                  fontSize: 10,
                                  color: Color(0xFF40484E),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              // Frequently ordered
              Padding(
                padding: const EdgeInsets.fromLTRB(28, 20, 28, 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Frequently Ordered',
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFF40484E),
                            height: 1.4,
                          ),
                        ),
                        Text(
                          'Suggestions based on your order history',
                          style: TextStyle(
                            fontSize: 9,
                            fontWeight: FontWeight.w500,
                            color: Color(0xFFBABABA),
                            height: 1.4,
                          ),
                        ),
                      ],
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'See all >',
                        style: TextStyle(
                          color: Color(0xFFFE5A01),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              // Frequently ordered list
              Padding(
                padding: const EdgeInsets.only(bottom: 60),
                child: Align(
                  alignment: AlignmentDirectional.centerStart,
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Padding(
                      padding: const EdgeInsets.only(left: 11),
                      child: Row(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            width: 160,
                            height: 240,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 131,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF7EAE7),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Image.asset(
                                        'assets/idk.png',
                                        fit: BoxFit.contain,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, bottom: 4),
                                        child: Text(
                                          '15%',
                                          style: TextStyle(
                                            color: Color(0xFF28AE61),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 6),
                                        child: Text(
                                          'Lorem Ipsum',
                                          style: TextStyle(
                                            color: Color(0xFF392F2D),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          '400 g',
                                          style: TextStyle(
                                            color: Color(0xFF999594),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              '\$ 4.75',
                                              style: TextStyle(
                                                color: Color(0xFFFB7552),
                                                fontSize: 15,
                                              ),
                                            ),
                                            Row(
                                              children: const [
                                                Text(
                                                  '4.9',
                                                  style: TextStyle(
                                                    color: Color(0xFFE2D7D4),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xFFFFA60F),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            width: 160,
                            height: 240,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 131,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF7EAE7),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Image.asset(
                                        'assets/organic-broccoli.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, bottom: 4),
                                        child: Text(
                                          '15%',
                                          style: TextStyle(
                                            color: Color(0xFF28AE61),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 6),
                                        child: Text(
                                          'Lorem Ipsum',
                                          style: TextStyle(
                                            color: Color(0xFF392F2D),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          '400 g',
                                          style: TextStyle(
                                            color: Color(0xFF999594),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              '\$ 4.75',
                                              style: TextStyle(
                                                color: Color(0xFFFB7552),
                                                fontSize: 15,
                                              ),
                                            ),
                                            Row(
                                              children: const [
                                                Text(
                                                  '4.9',
                                                  style: TextStyle(
                                                    color: Color(0xFFE2D7D4),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xFFFFA60F),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: BorderRadius.circular(14),
                            ),
                            margin: const EdgeInsets.symmetric(horizontal: 6),
                            width: 160,
                            height: 240,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Center(
                                  child: Padding(
                                    padding: const EdgeInsets.all(4.0),
                                    child: Container(
                                      width: double.infinity,
                                      height: 131,
                                      decoration: BoxDecoration(
                                        color: const Color(0xFFF7EAE7),
                                        borderRadius: BorderRadius.circular(14),
                                      ),
                                      child: Image.asset(
                                        'assets/intro1.png',
                                        fit: BoxFit.cover,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      const Padding(
                                        padding:
                                            EdgeInsets.only(top: 10, bottom: 4),
                                        child: Text(
                                          '15%',
                                          style: TextStyle(
                                            color: Color(0xFF28AE61),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 6),
                                        child: Text(
                                          'Lorem Ipsum',
                                          style: TextStyle(
                                            color: Color(0xFF392F2D),
                                            fontSize: 12,
                                          ),
                                        ),
                                      ),
                                      const Padding(
                                        padding: EdgeInsets.only(bottom: 10),
                                        child: Text(
                                          '400 g',
                                          style: TextStyle(
                                            color: Color(0xFF999594),
                                            fontSize: 10,
                                          ),
                                        ),
                                      ),
                                      Padding(
                                        padding:
                                            const EdgeInsets.only(bottom: 15),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            const Text(
                                              '\$ 4.75',
                                              style: TextStyle(
                                                color: Color(0xFFFB7552),
                                                fontSize: 15,
                                              ),
                                            ),
                                            Row(
                                              children: const [
                                                Text(
                                                  '4.9',
                                                  style: TextStyle(
                                                    color: Color(0xFFE2D7D4),
                                                    fontSize: 14,
                                                  ),
                                                ),
                                                Icon(
                                                  Icons.star,
                                                  color: Color(0xFFFFA60F),
                                                ),
                                              ],
                                            )
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
