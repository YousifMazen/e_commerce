import 'package:e_commerce/constants/routes_names.dart';
import 'package:flutter/material.dart';

class OffersScreen extends StatelessWidget {
  OffersScreen({super.key});
  final List<Map<String, dynamic>> items = [
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$4.75",
      "discount": "-15%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "300 g",
      "price": "\$2.75",
      "discount": "-12%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "200 g",
      "price": "\$5.75",
      "discount": "-32%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$4.55",
      "discount": "-15%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "100 g",
      "price": "\$4.35",
      "discount": "-10%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$9.23",
      "discount": "-15%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$4.75",
      "discount": "-15%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$4.75",
      "discount": "-15%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$4.75",
      "discount": "-15%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$4.75",
      "discount": "-15%",
    },
    {
      "name": "Lorem Ipsum",
      "weight": "400 g",
      "price": "\$4.75",
      "discount": "-15%",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(250, 251, 250, 252),
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        currentIndex: 1,
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
              Navigator.of(context).pushNamedAndRemoveUntil(
                RoutesNames.home,
                (route) => false,
              );
              break;
            case 1:
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
                        height: 375,
                        child: Image.asset(
                          'assets/offers.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              // Offers
              Container(
                decoration: const BoxDecoration(
                  color: Color(0xFFE1E1E1),
                ),
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      TextButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamedAndRemoveUntil(
                          RoutesNames.home,
                          (route) => false,
                        ),
                        child: const Text(
                          '< Back',
                          style: TextStyle(
                            color: Color(0xFFFE5A01),
                          ),
                        ),
                      ),
                      const Text(
                        'Offers',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFF40484E),
                          height: 1.4,
                        ),
                      ),
                      const Text(
                        'Offers',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontSize: 13,
                          fontWeight: FontWeight.w500,
                          color: Color(0xFFE1E1E1),
                          height: 1.4,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // Offers list
              Align(
                alignment: AlignmentDirectional.centerStart,
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Container(
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                        horizontal: 18,
                        vertical: 13,
                      ),
                      child: Row(
                        children: [
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                side: const BorderSide(
                                  color: Color(0xFF707070),
                                  width: 0.3,
                                ),
                              ),
                              child: const Text(
                                'Free Delivery',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xFF4A4B4D),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                side: const BorderSide(
                                  color: Color(0xFF707070),
                                  width: 0.3,
                                ),
                              ),
                              child: const Text(
                                'Bundles',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xFF4A4B4D),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                side: const BorderSide(
                                  color: Color(0xFF707070),
                                  width: 0.3,
                                ),
                              ),
                              child: const Text(
                                '10-20%',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xFF4A4B4D),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                side: const BorderSide(
                                  color: Color(0xFF707070),
                                  width: 0.3,
                                ),
                              ),
                              child: const Text(
                                '30-40%',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xFF4A4B4D),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(right: 8),
                            child: OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(15),
                                ),
                                side: const BorderSide(
                                  color: Color(0xFF707070),
                                  width: 0.3,
                                ),
                              ),
                              child: const Text(
                                '50-60%',
                                style: TextStyle(
                                  fontWeight: FontWeight.w600,
                                  fontSize: 12,
                                  color: Color(0xFF4A4B4D),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                child: Padding(
                  padding: const EdgeInsets.all(12),
                  child: GridView.builder(
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: items.length,
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      mainAxisSpacing: 12,
                      mainAxisExtent: 200,
                    ),
                    itemBuilder: (context, index) {
                      return Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        margin: const EdgeInsets.symmetric(horizontal: 6),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Center(
                              child: Padding(
                                padding: const EdgeInsets.all(4.0),
                                child: Container(
                                  width: double.infinity,
                                  height: 97,
                                  decoration: BoxDecoration(
                                    color: const Color(0xFFF7EAE7),
                                    borderRadius: BorderRadius.circular(14),
                                  ),
                                  child: Image.asset(
                                    'assets/organic-broccoli.png',
                                    fit: BoxFit.contain,
                                  ),
                                ),
                              ),
                            ),
                            Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 10),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.only(
                                        top: 10, bottom: 4),
                                    child: Text(
                                      "${items.elementAt(index)['discount']}",
                                      style: const TextStyle(
                                        color: Color(0xFF28AE61),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 6),
                                    child: Text(
                                      "${items.elementAt(index)['name']}",
                                      style: const TextStyle(
                                        color: Color(0xFF392F2D),
                                        fontSize: 12,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 10),
                                    child: Text(
                                      "${items.elementAt(index)['weight']}",
                                      style: const TextStyle(
                                        color: Color(0xFF999594),
                                        fontSize: 10,
                                      ),
                                    ),
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(bottom: 15),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text(
                                          "${items.elementAt(index)['price']}",
                                          style: const TextStyle(
                                            color: Color(0xFFFB7552),
                                            fontSize: 13,
                                          ),
                                        ),
                                        Row(
                                          children: const [
                                            Text(
                                              '4.9',
                                              style: TextStyle(
                                                color: Color(0xFFE2D7D4),
                                                fontSize: 12,
                                              ),
                                            ),
                                            Icon(
                                              Icons.star,
                                              color: Color(0xFFFFA60F),
                                              size: 15,
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
                      );
                    },
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
