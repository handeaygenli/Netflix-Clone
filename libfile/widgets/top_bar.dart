import 'package:flutter/material.dart';

class TopBar extends StatelessWidget {
  const TopBar({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 180,
      decoration: BoxDecoration(
        color: Colors.green,
        gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          colors: [
            Colors.black.withOpacity(.8),
            Colors.black.withOpacity(.7),
            Colors.black.withOpacity(0),
          ],
        ),

      ),
      child: SafeArea(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Padding(
                  padding: const EdgeInsets.all(4.0),
                child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 40,
                      height: 40,
                      child: Image(
                          image: AssetImage("images/netfologo.png"),
                          fit: BoxFit.contain,
                      ),
                    ),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        Icon(Icons.cast_outlined),
                        Icon(Icons.search),
                        Icon(Icons.person),
                        SizedBox(
                          width: 10,
                        ),
                      ],
                    ),

                  ],

                ),
              ),

              SizedBox(height: .1,),
              Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Text("TV Shows"),
                  Text("Movies"),
                  Text("Categories"),
                ],
              ),
            ],
          ),
      ),
    );
  }
}

