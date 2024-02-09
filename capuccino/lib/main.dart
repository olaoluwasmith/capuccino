import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  static const Color black = Color(0xFF2F2D2C);
  static const Color yellow = Color(0xFFFBBE21);
  static const Color brown = Color(0xFFC67C4E);
  static const Color grey = Color(0xFF9B9B9B);
  static const Color lightgrey = Color(0xFFF5F5F5);

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
              beanIcon: 'assets/images/bean.png',
              milkIcon: 'assets/images/milk.png',
            ),
            ItemDescriptionSection(
                descriptionTitle: 'Description',
                description:
                    'A cappucino is an approximately 150ml (5 oz) beverage,'
                    'with 25ml of expresso coffee and 85ml of fresh milk the fo..',
                readMore: 'Read More')
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
            color: MyApp.black,
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
                    color: MyApp.black,
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
                      color: MyApp.black,
                      fontFamily: "Sora",
                      fontSize: 15.0,
                    ),
                  ),
                ),
                Row(
                  children: [
                    const Icon(
                      Icons.star,
                      color: MyApp.yellow,
                    ),
                    const SizedBox(width: 2.0),
                    Text(
                      ratingValue,
                      style: const TextStyle(
                        color: MyApp.black,
                        fontFamily: "Sora",
                        fontWeight: FontWeight.bold,
                        fontSize: 19.0,
                      ),
                    ),
                    const SizedBox(width: 3.0),
                    Text(
                      numOfPeople,
                      style: const TextStyle(
                        color: MyApp.grey,
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
                  color: MyApp.lightgrey,
                  borderRadius: BorderRadius.circular(15.0),
                ),
                child: Image.asset(beanIcon),
              ),
              const SizedBox(width: 10.0),
              Container(
                width: 50,
                height: 50,
                decoration: BoxDecoration(
                  color: MyApp.lightgrey,
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

class ItemDescriptionSection extends StatelessWidget {
  const ItemDescriptionSection(
      {super.key,
      required this.descriptionTitle,
      required this.description,
      required this.readMore});

  final String descriptionTitle;
  final String description;
  final String readMore;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(40.0, 10.0, 40.0, 40.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(bottom: 12.0),
            child: Text(
              descriptionTitle,
              style: const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.bold,
                fontFamily: "Sora",
                color: MyApp.black,
              ),
            ),
          ),
          RichText(
              text: TextSpan(
            children: [
              TextSpan(
                text: description,
                style: const TextStyle(
                  fontFamily: "Sora",
                  color: MyApp.grey,
                  letterSpacing: 1.5,
                ),
              ),
              TextSpan(
                  text: readMore,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontFamily: "Sora",
                    color: MyApp.brown,
                    letterSpacing: 1.5,
                  ))
            ],
          ))
        ],
      ),
    );
  }
}
