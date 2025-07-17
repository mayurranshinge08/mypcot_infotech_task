import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Container2 extends StatelessWidget {
  const Container2({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          padding: EdgeInsets.only(bottom: 14.0),
          width: 365,
          decoration: BoxDecoration(
            color: Color(0xFFDCB223),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/svg/subscriptions-illustration-image.svg',
                  height: 150,
                ),
                SizedBox(height: 30),
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFF234DDC),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Subscriptions",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
        Positioned(
          right: 20,
          top: -10,
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            width: 150,
            decoration: BoxDecoration(
              color: Colors.blue,
              borderRadius: BorderRadius.circular(20),
              boxShadow: [
                BoxShadow(
                  color: Colors.black26,
                  blurRadius: 6,
                  offset: Offset(0, 4),
                ),
              ],
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '03 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: 'deliveries',
                          style: TextStyle(fontSize: 16),
                        ),
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 10),
                SizedBox(
                  height: 60,
                  child: Stack(
                    children: [
                      Positioned(
                        right: 85,
                        child: CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              "https://st1.bollywoodlife.com/wp-content/uploads/2019/10/war-box-office-collection.jpg?impolicy=Medium_Widthonly&w=1280&h=900",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 60,
                        child: CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              "https://resizing.flixster.com/Uml_tEFSotYb3LSzxLXp79XL5Lo=/218x280/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/238324_v9_bb.jpg",
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        right: 30,
                        child: CircleAvatar(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(100.0),
                            child: Image.network(
                              "https://i.pinimg.com/736x/a6/68/fe/a668fe59480a77d070d6da9b5b0b7ed9.jpg",
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
        Positioned(
          top: 110,
          right: 20,
          bottom: 15,
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(20),
            ),
            child: Column(
              children: [
                Center(
                  child: RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: ' \n 10 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: 'active \n Subscriptions',
                          style: TextStyle(fontSize: 20, color: Colors.black),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
