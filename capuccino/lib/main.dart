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
            ItemImageSection(image: 'assets/images/Rectangle 1706.jpg')
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
