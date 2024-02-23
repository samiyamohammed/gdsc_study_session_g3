import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  // ignore: use_key_in_widget_constructors
  const MyApp({Key? key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          leading: const Icon(Icons.sort, color: Colors.black),
          title: const Text(
            'GDSC BOOKSTORE',
            style: TextStyle(
                fontWeight: FontWeight.w700,
                fontSize: 18,
                color: Color.fromRGBO(31, 33, 45, 1)),
          ),
        ),
        body: ListView(
          children: [
            Padding(
              padding: const EdgeInsets.fromLTRB(15.0, 2.0, 5.0, 2.0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(4.0),
                        child: Container(
                          width: 284.0,
                          height: 60.0,
                          decoration: BoxDecoration(
                            color: const Color.fromRGBO(243, 246, 253, 1),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Row(
                            children: [
                              Expanded(
                                child: Padding(
                                  padding: EdgeInsets.all(2.0),
                                  child: TextField(
                                    decoration: InputDecoration(
                                      border: InputBorder.none,
                                      hintText: 'Looking for ...',
                                      hintStyle: TextStyle(
                                          color:
                                              Color.fromRGBO(120, 130, 157, 1),
                                          fontSize: 14.0,
                                          fontWeight: FontWeight.w400),
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: EdgeInsets.all(2.0),
                                child: Icon(Icons.search,
                                    color: Color.fromARGB(103, 20, 17, 17),
                                    size: 30.0),
                              ),
                            ],
                          ),
                        ),
                      ),
                      const SizedBox(width: 20.0),
                      Container(
                        width: 50,
                        height: 60,
                        decoration: BoxDecoration(
                          color: Colors.blue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Padding(
                          padding: EdgeInsets.all(7.0),
                          child: Icon(Icons.tune, color: Colors.white),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(height: 2.0),
                  // ignore: sized_box_for_whitespace
                  Container(
                    width: 363.0,
                    height: 210.0,
                    child: const Card(
                      color: Colors.blue,
                      elevation: 1.0,
                      child: Column(
                        children: [
                          Padding(
                            padding: EdgeInsets.fromLTRB(265.0, 1.0, 3.0, 0.0),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text('Sep 23, 2023',
                                    style: TextStyle(
                                        fontSize: 12.0, color: Colors.white)),
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(70.0, 3.0, 50, 0.0),
                            child: Row(
                              children: [
                                Icon(Icons.pause,
                                    color: Colors.white, size: 25.0),
                                SizedBox(
                                  width: 27.0,
                                ),
                                Padding(
                                  padding: EdgeInsets.fromLTRB(5, 15, 5, 5),
                                  child: Text('Today a reader \n tommorow a',
                                      style: TextStyle(
                                        fontSize: 19,
                                        color: Color.fromRGBO(225, 225, 221, 1),
                                        fontWeight: FontWeight.w500,
                                        letterSpacing: 0.09,
                                      )),
                                ),
                                SizedBox(width: 27.0),
                                Icon(Icons.pause,
                                    color: Colors.white, size: 25.0)
                              ],
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(30.0, 0.0, 40.0, 0.0),
                            child: Text(
                              'LEADER',
                              style: TextStyle(
                                  fontSize: 45.0,
                                  color: Color.fromRGBO(248, 248, 247, 1),
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 2.0),
                            ),
                          ),
                          Padding(
                            padding: EdgeInsets.fromLTRB(120.0, 3.0, 50.0, 3.0),
                            child: Row(
                              children: [
                                ImageIcon(AssetImage('assets/images/icon1.png'),
                                    color: Colors.white, size: 25.0),
                                SizedBox(width: 10.0),
                                Icon(Icons.bookmark,
                                    color: Colors.white, size: 25.0),
                                SizedBox(width: 10.0),
                                Icon(Icons.share,
                                    color: Colors.white, size: 25.0)
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  const Padding(
                    padding: EdgeInsets.fromLTRB(1.0, 2.0, 255.0, 2.0),
                    child: Text('Categories',
                        style: TextStyle(
                            color: Color.fromRGBO(51, 51, 51, 1),
                            fontSize: 24.0,
                            fontWeight: FontWeight.w400)),
                  ),
                  const SizedBox(
                    height: 20.0,
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Wrap(
                      spacing: 10.0,
                      runSpacing: 15.0,
                      children: [
                        Container(
                          width: 110,
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Padding(
                                  padding:
                                      EdgeInsets.fromLTRB(15.0, 4.0, 7.0, 4.0),
                                  child: ImageIcon(
                                    AssetImage('assets/images/healthcare.png'),
                                    color: Colors.black,
                                  )),
                              Text('Health',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 4.0, 7.0, 4.0),
                                child: ImageIcon(
                                  AssetImage('assets/images/microscope.png'),
                                  color: Colors.black,
                                ),
                              ),
                              Text('Science',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width: 110,
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 4.0, 7.0, 4.0),
                                child: ImageIcon(
                                  AssetImage('assets/images/history-book.png'),
                                  color: Colors.black,
                                ),
                              ),
                              Text('History',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                  ))
                            ],
                          ),
                        ),
                        Container(
                          width: 132,
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 4.0, 7.0, 4.0),
                                child: ImageIcon(AssetImage('assets/images/cpu.png'),
                                    color: Colors.black),
                              ),
                              Text('Technology',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                  )),
                            ],
                          ),
                        ),
                        Container(
                          width: 141,
                          height: 30.0,
                          decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10)),
                          child: const Row(
                            children: [
                              Padding(
                                padding:
                                    EdgeInsets.fromLTRB(15.0, 4.0, 7.0, 4.0),
                                child: ImageIcon(
                                  AssetImage('images/life (1).png'),
                                  color: Colors.black,
                                ),
                              ),
                              Text('Philosophy',
                                  style: TextStyle(
                                    fontFamily: 'R.font.montserrat',
                                    fontWeight: FontWeight.w400,
                                    fontSize: 12,
                                    color: Color.fromRGBO(51, 51, 51, 1),
                                  ))
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),

                  Stacked(),

                  NewsClass(),

                  Stacked2(),
                  //const BottomNav (),
                ],
              ),
            ),
          ],
        ),
        bottomNavigationBar: BottomNavigationBar(items: const [
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/web-content.png'),
                size: 25.0,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/open-book.png'),
                size: 25.0,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/home-button 1.png'),
                size: 25.0,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/book.png'),
                size: 25.0,
                color: Colors.black,
              ),
              label: ''),
          BottomNavigationBarItem(
              icon: ImageIcon(
                AssetImage('assets/images/user (2) 1.png'),
                size: 25.0,
                color: Colors.black,
              ),
              label: ''),
        ]),
      ),
    );
  }
}

// ignore: must_be_immutable
class Ratecontainer extends StatelessWidget {
  // const Ratecontainer({super.key});
  Ratecontainer(this.rate, {super.key});
  List<String> rate = ['5.0', '4.5'];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 26,
        height: 36,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(4)),
        child: Column(
          children: [
            const Icon(Icons.star, color: Colors.white, size: 15),
            for (var i = 0; i < rate.length; i++)
              Text(rate[i],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400))
          ],
        ));
  }
}

// ignore: must_be_immutable
class Imagecontainer extends StatelessWidget {
  // const Ratecontainer({super.key});
  Imagecontainer(this.image, {super.key});
  List<String> image = [
    'assets/images/i1.jpg',
    'assets/images/i2.jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(4), border: Border.all()),
        child: Column(
          children: [
            for (var i = 0; i < image.length; i++)
              Image(image: AssetImage(image[i]))
          ],
        ));
  }
}

class Stacked extends StatelessWidget {
  final List<String> images = [
    'assets/images/i1.jpg',
    'assets/images/i2.jpg',
    'assets/images/i3.jpg',
    'assets/images/i1.jpg',
    'assets/images/i2.jpg',
    'assets/images/i3.jpg',
  ];
  final List<String> rates = ['5.0', '4.5', '4.0', '5.0', '4.5', '4.0'];
  final List<String> texts = [
    'Papillion Based On true story',
    'Yebedel kasa Novel',
    'Mahlet by \n Adam Reta'
        'Papillion Based On true story',
    'Yebedel kasa Novel',
    'Mahlet by Adam Reta'
  ];

   Stacked({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Recommendation',
                  style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400)),
              Icon(
                Icons.chevron_right,
                size: 25,
              )
            ],
          ),
        ),
        SizedBox(
          height: 250,
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: images.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: SizedBox(
                  height: 170.0,
                  child: Column(
                    children: [
                      Stack(
                        children: [
                          Imagecontainer([images[index]]),
                          Positioned(
                            top: 7,
                            right: 9,
                            child: Ratecontainer([rates[index]]),
                          ),
                          //const SizedBox(width: 15.0),
                        ],
                      ),
                      // ignore: sized_box_for_whitespace
                      Container(
                        width: 120,
                        height: 45,
                        child: Text(
                          texts[index],
                          style: const TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.w400,
                              color: Color.fromRGBO(51, 51, 51, 1)),
                        ),
                      ),
                    ],
                  ),
                ),
              );
            },
          ),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class Ratecontainer2 extends StatelessWidget {
  // const Ratecontainer({super.key});
  Ratecontainer2(this.rate, {super.key});
  List<String> rate = ['5.0', '4.5'];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 26,
        height: 36,
        decoration: BoxDecoration(
            color: Colors.orange, borderRadius: BorderRadius.circular(4)),
        child: Column(
          children: [
            const Icon(Icons.star, color: Colors.white, size: 15),
            for (var i = 0; i < rate.length; i++)
              Text(rate[i],
                  style: const TextStyle(
                      color: Colors.white,
                      fontSize: 10,
                      fontWeight: FontWeight.w400))
          ],
        ));
  }
}

// ignore: must_be_immutable
class Imagecontainer2 extends StatelessWidget {
  // const Ratecontainer({super.key});
  Imagecontainer2(this.image, {super.key});
  List<String> image = [
    'assets/images/i7.jpg',
    'assets/images/i8.jpg',
    'assets/images/i9,jpg',
  ];
  @override
  Widget build(BuildContext context) {
    return Container(
        width: 120,
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(4)),
        child: Column(
          children: [
            for (var i = 0; i < image.length; i++)
              Image(image: AssetImage(image[i]))
          ],
        ));
  }
}

class Stacked2 extends StatelessWidget {
  final List<String> images = [
    'assets/images/i7.jpg',
    'assets/images/i8.jpg',
    'assets/images/i9.jpg',
    'assets/images/i7.jpg',
    'assets/images/i8.jpg',
    'assets/images/i9.jpg',
  ];
  final List<String> rates = ['5.0', '4.5', '4.0', '5.0', '4.5', '4.0'];
  final List<String> texts = [
    'Born a crime by Trevor Noha',
    'Evolution of the Learning brain',
    'Lela sew by Mihret Debebe'
        'Born a crime by Trevor Noha',
    'Evolution of the Learning brain',
    'Lela sew by Mihret Debebe'
  ];

   Stacked2({super.key});
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const Padding(
          padding: EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('Trending',
                  style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400)),
              Icon(
                Icons.chevron_right,
                size: 25,
              )
            ],
          ),
        ),
        SizedBox(
          height: 250.0,
          child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(4),
                  child: SizedBox(
                    height: 180,
                    child: Column(
                      children: [
                        Stack(
                          children: [
                            Imagecontainer([images[index]]),
                            Positioned(
                              top: 7,
                              right: 9,
                              child: Ratecontainer([rates[index]]),
                            ),
                            const SizedBox(width: 15.0),
                          ],
                        ),
                        // ignore: sized_box_for_whitespace
                        Container(
                            width: 120,
                            height: 45,
                            child: Text(texts[index],
                                style: const TextStyle(
                                    fontSize: 16,
                                    fontWeight: FontWeight.w400,
                                    color: Color.fromRGBO(51, 51, 51, 1)))),
                        const SizedBox(width: 15.0),
                      ],
                    ),
                  ),
                );
              }),
        ),
      ],
    );
  }
}

// ignore: must_be_immutable
class NewsClass extends StatelessWidget {
  //const NewsClass({super.key});
  // NewsClass(this.images, this.texts, {super.key});
  List<String> images = [
    'assets/images/i4.jpg',
    'assets/images/i5.jpg',
    'assets/images/i6.jpg',
    'assets/images/i4.jpg',
    'assets/images/i5.jpg',
    'assets/images/i6.jpg',
  ];

  List<String> texts = [
    'Rich Dad and Poor Dad Ro.a',
    'Piyassa Muhamud Ga tebkig',
    'Yetekolefebet Kulf',
    'Rich Dad and Poor Dad Ro.a',
    'Piyassa Muhamud Ga tebkig',
    'Yetekolefebet Kulf'
  ];

  NewsClass({super.key});
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text('News',
                  style: TextStyle(
                      color: Color.fromRGBO(51, 51, 51, 1),
                      fontSize: 24.0,
                      fontWeight: FontWeight.w400)),
              Icon(
                Icons.chevron_right,
                size: 25,
              )
            ],
          ),
          SizedBox(
            height: 250.0,
            child: ListView.builder(
              scrollDirection: Axis.horizontal,
              itemCount: images.length,
              itemBuilder: (context, index) {
                return Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: SizedBox(
                    height: 180.0,
                    child: Column(
                      children: [
                        Container(
                            width: 120,
                            height: 180,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(4),
                                border: Border.all()),
                            child: Image(image: AssetImage(images[index]))),
                        //SizedBox(height: 30.0),
                        // ignore: sized_box_for_whitespace
                        Container(
                          width: 120,
                          height: 45,
                          child: Text(
                            texts[index],
                            style: const TextStyle(
                                fontSize: 16,
                                fontWeight: FontWeight.w400,
                                color: Color.fromRGBO(51, 51, 51, 1)),
                          ),
                        ),
                      ],
                    ),
                  ),
                );
              },
            ),
          )
        ],
      ),
    );
  }
}

class MyHomePage extends StatefulWidget {
  // ignore: use_key_in_widget_constructors
  const MyHomePage({Key? key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    // ignore: prefer_const_constructors
    return Scaffold();
  }
}


