import 'package:flutter/material.dart';
import 'package:travel_app/model/Destination.dart';
import 'package:travel_app/model/popularDestini.dart';

class Homepage extends StatefulWidget {
  static String id = 'Homepage';

  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  int current = 0;
  List<Destination> destinations = [
    Destination(
        image:
            "https://images.pexels.com/photos/346885/pexels-photo-346885.jpeg?auto=compress&cs=tinysrgb&w=600",
        text: "Hanoi"),
    Destination(
        image:
            "https://images.pexels.com/photos/386009/pexels-photo-386009.jpeg?auto=compress&cs=tinysrgb&w=600",
        text: "New York City"),
    Destination(
        image:
            "https://images.pexels.com/photos/586687/pexels-photo-586687.jpeg?auto=compress&cs=tinysrgb&w=600",
        text: "Oahu"),
    Destination(
        image:
            "https://images.pexels.com/photos/2174656/pexels-photo-2174656.jpeg?auto=compress&cs=tinysrgb&w=600",
        text: "San Francisco"),
  ];
  List<String> popularPictures = [
    'https://hblimg.mmtcdn.com/content/hubble/img/bali/mmt/destination/m_bali_l_393_629.jpg',
    'https://images.squarespace-cdn.com/content/v1/545ece7fe4b0edd3bdd2dbdf/db997447-ca1b-4a35-b870-113bfb25361c/Phi+Phi+Island+Thailand.jpg',
    'https://imageio.forbes.com/specials-images/dam/imageserve/1171238184/0x0.jpg?format=jpg&height=900&width=1600&fit=bounds',
    'https://i.pinimg.com/736x/57/e4/03/57e40361d7486e564ae934006094c498.jpg'
  ];
  List<String> texts = ['Wooden Path', 'Glencoe', 'Golasd', "Elgato"];
  List<String> subTexts = ['Vientiane', 'Scotland', 'Oren', "Losad"];
  List<String> prices = ['600', '800', '1000', "1200"];
  List<Popular> populars = [
    Popular(
        image:
            'https://hblimg.mmtcdn.com/content/hubble/img/bali/mmt/destination/m_bali_l_393_629.jpg',
        text: 'Wooden Path',
        country: 'Vientiane',
        cost: '600'),
    Popular(
        image:
            'https://images.squarespace-cdn.com/content/v1/545ece7fe4b0edd3bdd2dbdf/db997447-ca1b-4a35-b870-113bfb25361c/Phi+Phi+Island+Thailand.jpg',
        text:  'Glencoe',
        country:'Scotland',
        cost: '600'),

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        unselectedIconTheme: IconThemeData(
          size: 25,
          color: Colors.black,
        ),
        selectedIconTheme: IconThemeData(
          size: 30,
          color: Colors.blue,
        ),
        selectedFontSize: 15,
        selectedItemColor: Colors.blue, // Ensure this matches your label style color
        selectedLabelStyle: TextStyle(
          fontSize: 15,
          color: Colors.blue, // Ensure this matches selectedItemColor
          fontWeight: FontWeight.w500,
        ),
        unselectedLabelStyle: TextStyle(
          fontSize: 14,
          color: Colors.black,
        ),
        currentIndex: current,
        onTap: (v) {
          current = v;
          setState(() {});
        },
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.settings),
            label: 'Settings',
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Container(
          width: double.infinity,
          child: Column(children: [
            const SizedBox(height: 50),
            Container(
              padding: const EdgeInsets.all(10),
              margin: const EdgeInsets.symmetric(horizontal: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 220,
                    height: 80,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Hey Shanto',
                          style: TextStyle(color: Colors.grey, fontSize: 20),
                        ),
                        Text(
                          'Where to next?',
                          style: TextStyle(
                              color: Colors.black,
                              fontSize: 30,
                              fontWeight: FontWeight.bold),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    height: 55,
                    width: 55,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(50),
                        border: Border.all(color: Colors.grey)),
                    child: IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_outlined,
                        size: 30,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 15),
              width: double.maxFinite,
              padding: const EdgeInsets.all(10),
              height: 65,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                border: Border.all(color: Colors.grey),
              ),
              child: Row(
                children: const [
                  Icon(Icons.search, color: Colors.grey, size: 35),
                  SizedBox(width: 15),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search worldwide',
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 20),
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            sectionHeader('Trending Destinations'),
            const SizedBox(height: 10),
            Container(
              height: 200,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: destinations.length,
                itemBuilder: (context, index) {
                  return Container(
                    margin: EdgeInsets.symmetric(horizontal: 10),
                    child: WidgetVie(
                      pic: destinations[index].image,
                      tic: destinations[index].text,
                    ),
                  );
                },
              ),
            ),
            const SizedBox(height: 10),
            sectionHeader('Popular Destinations'),
            const SizedBox(height: 10),
            Container(
              margin: EdgeInsets.only(left: 10),
              height: 350,
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: popularPictures.length,
                itemBuilder: (context, index) {
                  return CardView(
                    pic: popularPictures[index],
                    tex: texts[index],
                    subTex: subTexts[index],
                    price: prices[index],
                  );
                },
              ),
            ),
          ]),
        ),
      ),
    );
  }

  Widget sectionHeader(String title) {
    return Padding(
      padding: const EdgeInsets.all(10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
                color: Colors.black, fontSize: 21, fontWeight: FontWeight.bold),
          ),
          const Text(
            'View all',
            style: TextStyle(color: Colors.grey, fontSize: 20),
          ),
        ],
      ),
    );
  }
}

class WidgetVie extends StatelessWidget {
  final String pic;
  final String tic;

  const WidgetVie({required this.pic, required this.tic, super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 0),
      width: 150,
      child: Column(
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              pic,
              height: 120,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            tic,
            style: const TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

class CardView extends StatelessWidget {
  final String pic;
  final String tex;
  final String subTex;
  final String price;

  const CardView(
      {required this.pic,
      required this.tex,
      required this.subTex,
      required this.price,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(right: 10),
      width: 250,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              pic,
              height: 200,
              width: double.infinity,
              fit: BoxFit.cover,
            ),
          ),
          const SizedBox(height: 10),
          Text(
            tex,
            style: const TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          ),
          Text(
            subTex,
            style: const TextStyle(fontSize: 16, color: Colors.grey),
          ),
          Text(
            '\$$price',
            style: const TextStyle(color: Colors.blue,fontSize: 16, fontWeight: FontWeight.bold),
          ),
        ],
      ),
    );
  }
}

