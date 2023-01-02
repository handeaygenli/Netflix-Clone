import 'package:flutter/material.dart';

class SpecialMovie extends StatelessWidget {
  final String image;
  const SpecialMovie({
    Key key,
    @required this.image
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width ,
      height: MediaQuery.of(context).size.height * .75,
      child: Stack(
        children: [
          Container(
            constraints: BoxConstraints.expand(),
            child: Image(
                image: AssetImage(image),
                fit: BoxFit.cover,
                alignment: Alignment.bottomCenter,
            ),
          ),

          Positioned(
              bottom: -1,
              child: Container(
                width: MediaQuery.of(context).size.width,
                height: 1,
                decoration: BoxDecoration(
                  gradient: LinearGradient(
                    begin: Alignment.topCenter,
                      end: Alignment.topCenter,
                      colors: [
                        Colors.black.withOpacity(0),
                        Colors.black,
                      ],
                  ),
                ),
              ),
          ),

          Positioned(
            bottom: 20,
              child: SizedBox(width: MediaQuery.of(context).size.width,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.add),
                        SizedBox(height: 2,),
                        Text("My List"),
                      ],
                    ),

                    Container(
                      padding: EdgeInsets.symmetric(horizontal: 14, vertical: 4),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(2),
                      ),

                      child: Row(
                        children: [
                          Icon(
                              Icons.play_arrow_rounded,
                            color: Colors.black,
                          ),

                          SizedBox(
                            width: 2,
                          ),
                          Text(
                              "Play",
                            style:  TextStyle(color: Colors.black),
                          ),

                        ],
                      ),

                    ),

                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Icon(Icons.info_outline),
                        SizedBox(height: 2,),
                        Text("Info"),
                      ],
                    ),

                  ],
                ),
              ),
          ),

        ],
      ),

    );


  }
}
