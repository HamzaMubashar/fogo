import 'package:flutter/material.dart';
import 'package:buttons_tabbar/buttons_tabbar.dart';

class VideoScreen extends StatelessWidget {
  const VideoScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(vertical: 45, horizontal: 30),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset('assets/icons/fogo_icon.png'),
              SizedBox(
                height: 20,
              ),
              DefaultTabController(
                length: 4,
                child: SingleChildScrollView(
                  child: SizedBox(
                    height: 650,
                    width: 700,
                    child: Column(
                      children: <Widget>[
                        ButtonsTabBar(
                          contentPadding: const EdgeInsets.symmetric(
                              horizontal: 15, vertical: 1),

                          backgroundColor: Colors.white,
                          unselectedBackgroundColor: Colors.white,
                          // unselectedBackgroundColor: Colors.grey[200],
                          borderWidth: 2,
                          borderColor: const Color(0xFFD10F0F),
                          splashColor: Colors.red[100],
                          unselectedBorderColor: Colors.grey[300]!,

                          // Add your tabs here
                          tabs: const [
                            Tab(
                              child: Text(
                                'Training\n   Drills',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'How to',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Different\n  Moves',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            ),
                            Tab(
                              child: Text(
                                'Counter\n Moves',
                                style: TextStyle(
                                    color: Colors.black, fontSize: 13),
                              ),
                            )
                          ],
                        ),
                        Expanded(
                          child: TabBarView(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 3,
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          childAspectRatio: 2 / 2.8),
                                  itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                        )
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.play_arrow_outlined),
                                      iconSize: 37,
                                      color: Color(0xFF1029ED),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 3,
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          childAspectRatio: 2 / 2.8),
                                  itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                        )
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.play_arrow_outlined),
                                      iconSize: 37,
                                      color: Color(0xFF1029ED),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 3,
                                  gridDelegate:
                                      SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          childAspectRatio: 2 / 2.8),
                                  itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                        )
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.play_arrow_outlined),
                                      iconSize: 37,
                                      color: Color(0xFF1029ED),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(5.0),
                                child: GridView.builder(
                                  physics: NeverScrollableScrollPhysics(),
                                  itemCount: 3,
                                  gridDelegate:
                                      const SliverGridDelegateWithMaxCrossAxisExtent(
                                          maxCrossAxisExtent: 200,
                                          mainAxisSpacing: 10,
                                          crossAxisSpacing: 10,
                                          childAspectRatio: 2 / 2.8),
                                  itemBuilder: (context, index) => Container(
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(7),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Colors.grey[300]!,
                                          spreadRadius: 2,
                                          blurRadius: 7,
                                        )
                                      ],
                                    ),
                                    child: IconButton(
                                      icon: Icon(Icons.play_arrow_outlined),
                                      iconSize: 37,
                                      color: Color(0xFF1029ED),
                                      onPressed: () {},
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
