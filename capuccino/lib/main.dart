import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Capuccino',
      theme: ThemeData(),
      home: const DetailPage(),
    );
  }
}

class DetailPage extends StatelessWidget {
  const DetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const AppBarSection(
            titleText: 'Detail',
            returnBackIcon: 'assets/images/arrow-left.jpg',
            favouriteIcon: 'assets/images/Heart.jpg'),
      ),
      body: const SingleChildScrollView(
        child: Column(
          children: [
            ItemImageSection(image: 'assets/images/Rectangle 1706.jpg'),
            ItemRatingSection(
              itemText: 'Capuccino',
              itemOption: 'with Chocolate',
              ratingValue: '4.8',
              numOfPeople: '(230)',
              beanIcon: 'assets/images/bean.jpg',
              milkIcon: 'assets/images/milk.jpg',
            )
          ],
        ),
      ),
    );
  }
}

class AppBarSection extends StatelessWidget {
  const AppBarSection({
    super.key,
    required this.titleText,
    required this.returnBackIcon,
    required this.favouriteIcon,
  });

  final String titleText;
  final String returnBackIcon;
  final String favouriteIcon;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 15.0),
          child: Image.asset(
            returnBackIcon,
          ),
        ),
        Text(
          titleText,
          style: const TextStyle(
            color: Colors.black,
            fontFamily: "Sora",
            fontWeight: FontWeight.bold,
            fontSize: 20.0,
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(right: 15.0),
          child: Image.asset(
            favouriteIcon,
          ),
        ),
      ],
    );
  }
}

class ItemImageSection extends StatelessWidget {
  const ItemImageSection({super.key, required this.image});

  final String image;

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(15.0),
        child: Image.asset(
          image,
        ),
      ),
    );
  }
}

class ItemRatingSection extends StatelessWidget {
  const ItemRatingSection(
      {super.key,
      required this.itemText,
      required this.itemOption,
      required this.ratingValue,
      required this.numOfPeople,
      required this.beanIcon,
      required this.milkIcon});

  final String itemText;
  final String itemOption;
  final String ratingValue;
  final String numOfPeople;
  final String beanIcon;
  final String milkIcon;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 30, right: 30),
      child: Row(
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  itemText,
                  style: const TextStyle(
                    color: Colors.black,
                    fontFamily: "Sora",
                    fontWeight: FontWeight.bold,
                    fontSize: 22,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0, bottom: 8.0),
                  child: Text(
                    itemOption,
                    style: const TextStyle(
                      color: Colors.black,
                      fontFamily: "Sora",
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: Colors.yellow,
                    ),
                    const SizedBox(width: 2.0),
                    Text(
                      ratingValue,
                      style: const TextStyle(
                        color: Colors.black,
                        fontFamily: "Sora",
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                    const SizedBox(width: 3.0),
                    Text(
                      numOfPeople,
                      style: const TextStyle(
                        color: Colors.grey,
                        fontFamily: "Sora",
                        fontSize: 15.0,
                      ),
                    )
                  ],
                )
              ],
            ),
          ),
          Row(
            children: [
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.asset(beanIcon),
              ),
              const SizedBox(width: 10.0),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: Colors.grey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.asset(milkIcon),
              )
            ],
          ),
        ],
      ),
    );
  }
}
