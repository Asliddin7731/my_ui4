import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: const Text('Cars',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 24,
                fontWeight: FontWeight.w500)),
        actions: [
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.notifications_none,
              color: Colors.black87,
            ),
          ),
          IconButton(
            onPressed: () {},
            icon: const Icon(
              Icons.shopping_cart,
              color: Colors.black87,
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              SizedBox(
                height: 40,
                child: ListView(
                  scrollDirection: Axis.horizontal,
                  children: [
                    singleTab(true, 'All'),
                    singleTab(false, 'Red'),
                    singleTab(false, 'Blue'),
                    singleTab(false, 'Green'),
                    singleTab(false, 'Grey'),
                  ],
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              makeItem('assets/images/im_car1.jpg'),
              makeItem('assets/images/im_car2.jpg'),
              makeItem('assets/images/im_car3.jpg'),
              makeItem('assets/images/im_car4.png'),
              makeItem('assets/images/im_car5.jpg'),
            ],
          ),
        ),
      ),
    );
  }

  Widget singleTab(bool type, String text) {
    return AspectRatio(
      aspectRatio: 2.2 / 1,
      child: Container(
        alignment: Alignment.center,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            color: type ? Colors.grey[200] : Colors.white),
        margin: const EdgeInsets.only(right: 10),
        child: Text(
          text,
          style: TextStyle(color: Colors.black87, fontSize: type ? 15 : 14),
        ),
      ),
    );
  }

  Widget makeItem(String image) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        image: DecorationImage(image: AssetImage(image), fit: BoxFit.cover),
      ),
      height: 250,
      width: double.infinity,
      margin: const EdgeInsets.only(bottom: 20),
      child: Container(
        padding: const EdgeInsets.all(20),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20),
          gradient: LinearGradient(
            begin: Alignment.bottomRight,
            colors: [
              Colors.black87.withOpacity(0.9),
              Colors.black87.withOpacity(0.6),
              Colors.black87.withOpacity(0.3),
              Colors.black87.withOpacity(0.2),
            ],
          ),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Expanded(child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('My Car',style: TextStyle(color: Colors.white, fontSize: 22, fontWeight: FontWeight.bold),),
                    SizedBox(height: 5,),
                    Text('Electric',style: TextStyle(color: Colors.white, fontSize: 16, fontWeight: FontWeight.bold),),
                  ],
                )
                ),
                Container(
                  alignment: Alignment.center,
                  height: 35,
                  width: 35,
                  decoration: const BoxDecoration(
                      shape: BoxShape.circle, color: Colors.white),
                  child: const Icon(Icons.favorite_border),
                )
              ],
            ),
            Text('100\$', style: TextStyle(color: Colors.white,fontSize: 22 ,fontWeight: FontWeight.bold),)
          ],
        ),
      ),
    );
  }
}
