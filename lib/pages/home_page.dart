import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Container(
      color: Colors.purple,
      child: Stack(
        children: [
          Transform.translate(
            offset: Offset(-100, -50),
            child: Container(
              width: 300,
              height: 300,
              decoration: BoxDecoration(boxShadow: [
                BoxShadow(color: Colors.deepPurple, blurRadius: 2)
              ], borderRadius: BorderRadius.circular(300)),
            ),
          ),
          Column(
            children: [
              _header(),
              _hour(),
              Expanded(
                child: Stack(
                  children: [
                    ClipRRect(
                      borderRadius:
                          BorderRadius.vertical(top: Radius.circular(32)),
                      child: Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                        ),
                        child: SingleChildScrollView(
                          child: Column(
                            children: [
                              ...List.generate(46, (index) => _weatherTile())
                            ],
                          ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: AlignmentDirectional.bottomCenter,
                      child: Container(
                        height: 100,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.home_outlined,
                                  size: 32,
                                  color: Colors.pink,
                                )),
                            FloatingActionButton(
                              elevation: 0,
                              backgroundColor: Colors.pink,
                              onPressed: () {},
                              child: Icon(Icons.add),
                            ),
                            IconButton(
                                onPressed: () {},
                                icon: Icon(
                                  Icons.calendar_today,
                                  color: Colors.pink,
                                )),
                          ],
                        ),
                        decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius:
                                BorderRadius.vertical(top: Radius.circular(42)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(100, 200, 200, 200),
                                offset: Offset(0, -4),
                                blurRadius: 8,
                              )
                            ]),
                      ),
                    )
                  ],
                ),
              )
            ],
          )
        ],
      ),
    ));
  }

  _header() {
    return Stack(
      children: [
        Container(
          height: 100,
          width: double.infinity,
          decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(bottomLeft: Radius.circular(64))),
          child: Padding(
            padding: const EdgeInsets.only(top: 32.0, left: 24),
            child: ListTile(
              horizontalTitleGap: 0,
              leading: Icon(
                Icons.cloud,
                color: Colors.pink,
                size: 24,
              ),
              title: Text('What to wear'),
            ),
          ),
        ),
        Align(
          alignment: AlignmentDirectional.centerEnd,
          child: Container(
            width: 80,
            height: 120,
            decoration: BoxDecoration(
                color: Colors.pink,
                borderRadius:
                    BorderRadius.only(bottomLeft: Radius.circular(42))),
            child: Center(
              child: Icon(Icons.menu, color: Colors.white),
            ),
          ),
        )
      ],
    );
  }

  _hour() {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 32.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Row(
            children: [
              Icon(
                Icons.arrow_upward,
                color: Colors.white,
                size: 26,
              ),
              Text(
                '04:30',
                style: TextStyle(color: Colors.white, fontSize: 22),
              )
            ],
          ),
          Row(
            children: [
              Icon(
                Icons.arrow_downward,
                color: Colors.white,
                size: 26,
              ),
              Text(
                '20:31',
                style: TextStyle(color: Colors.white, fontSize: 22),
              )
            ],
          )
        ],
      ),
    );
  }

  _weatherTile() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 42, horizontal: 16),
      decoration: BoxDecoration(color: Colors.white, boxShadow: [
        BoxShadow(
            color: Color.fromARGB(100, 200, 200, 200),
            blurRadius: 12,
            offset: Offset(0, 2))
      ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Text(
            'Naple',
            style: TextStyle(fontSize: 26, color: Colors.black54),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                '22º',
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
              Text('11:25'),
            ],
          ),
          Icon(
            Icons.whatshot,
            size: 32,
            color: Colors.purple,
          )
        ],
      ),
    );
  }
}
