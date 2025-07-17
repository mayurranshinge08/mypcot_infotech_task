import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Container1 extends StatelessWidget {
  const Container1({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 360,
          padding: EdgeInsets.only(bottom: 14.0),
          decoration: BoxDecoration(
            color: Color(0xFF33A1CC),
            borderRadius: BorderRadius.circular(20),
          ),
          child: Padding(
            padding: const EdgeInsets.only(left: 15.0, top: 15),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                SvgPicture.asset(
                  'assets/svg/orders-illustration-image.svg',
                  height: 140,
                ),
                SizedBox(height: 30),
                Container(
                  height: 40,
                  width: 130,
                  decoration: BoxDecoration(
                    color: Color(0xFFFE804E),
                    borderRadius: BorderRadius.circular(12),
                  ),
                  child: Center(
                    child: Text(
                      "Orders",
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
          right: 40,
          top: -15,
          child: Container(
            padding: EdgeInsets.only(bottom: 10),
            width: 150,
            decoration: BoxDecoration(
              color: Colors.orange,
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
                        TextSpan(text: 'You have '),
                        TextSpan(
                          text: '3 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(text: 'active \n     orders from'),
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
                              "https://i.pinimg.com/1200x/cb/21/84/cb2184b40a079ba511ce0b3910d29d5e.jpg",
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
                              "https://i.pinimg.com/736x/bd/4b/10/bd4b10657f678b9244be2c71c496129a.jpg",
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
                              "https://i.pinimg.com/736x/79/c0/7f/79c07fab731cf1c208abe62cfefeca61.jpg",
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
          right: 20,
          top: 120,
          bottom: 6,
          child: Container(
            width: 150,
            decoration: BoxDecoration(
              color: Colors.white,
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
                          text: '02 ',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                            fontSize: 20,
                          ),
                        ),
                        TextSpan(
                          text: 'pending ',
                          style: TextStyle(fontSize: 16, color: Colors.black),
                        ),
                        TextSpan(
                          text: '\nOrders from',
                          style: TextStyle(fontSize: 16, color: Colors.black),
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
                              "https://assets.gadgets360cdn.com/pricee/assets/product/202209/Shiddat3_1663044490.jpg?downsize=680:*",
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
                              "https://lyricswala.in/wp-content/uploads/2021/10/chitta-song-shiddat.jpg",
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
                              "https://resizing.flixster.com/4-cT8J8BK8lH__OsExqGbbiqXLM=/fit-in/705x460/v2/https://resizing.flixster.com/-XZAfHZM39UwaGJIFWKAE8fS0ak=/v3/t/assets/p20775014_k_h9_aa.jpg",
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
      ],
    );
  }
}
