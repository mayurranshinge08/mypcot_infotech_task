import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:mypcot_infotech_task/widgets/app_bar_widget.dart';
import 'package:mypcot_infotech_task/widgets/bottom_tab_item.dart';
import 'package:mypcot_infotech_task/widgets/container_1.dart';
import 'package:mypcot_infotech_task/widgets/container_2.dart';
import 'package:mypcot_infotech_task/widgets/container_3.dart';
import 'package:mypcot_infotech_task/widgets/container_widget.dart';
import 'package:mypcot_infotech_task/widgets/date_chip.dart';

class HomeScreen extends StatefulWidget {
  HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List<Map<String, String>> days = [
    {"day": "MON", "date": "20"},
    {"day": "TUE", "date": "21"},
    {"day": "WED", "date": "22"},
    {"day": "THU", "date": "23"},
    {"day": "FRI", "date": "24"},
    {"day": "SAT", "date": "25"},
    {"day": "SUN", "date": "26"},
  ];
  int selectedDateIndex = 3;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
        child: Icon(Icons.add, size: 30, color: Colors.white),
        backgroundColor: Color(0xFF2C3D63),
        onPressed: () {},
      ),
      bottomNavigationBar: BottomAppBar(
        color: Colors.white,
        shape: const CircularNotchedRectangle(),
        child: Padding(
          padding: const EdgeInsets.only(top: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              BottomTabItem(
                iconPath: 'assets/svg/home.svg',
                label: 'Home',
                onTap: () {},
              ),
              BottomTabItem(
                iconPath: 'assets/svg/customers_tab.svg',
                label: 'Customers',
                onTap: () {},
              ),
              const SizedBox(width: 30),
              BottomTabItem(
                iconPath: 'assets/svg/khata_tab.svg',
                label: 'Khata',
                onTap: () {},
              ),
              BottomTabItem(
                iconPath: 'assets/svg/order_tab.svg',
                label: 'Orders',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      backgroundColor: Colors.white.withOpacity(0.9),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.only(top: 60.0, left: 10),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              AppBarWidget(),
              SizedBox(height: 20),
              Padding(
                padding: const EdgeInsets.only(left: 10.0, right: 10),
                child: Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: 'Welcome, ',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF2c3d63),
                              fontSize: 22,
                            ),
                          ),
                          TextSpan(
                            text: 'MyPcot !!',
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF2c3d63),
                              fontWeight: FontWeight.bold,
                              fontSize: 22,
                            ),
                          ),
                          TextSpan(
                            text: "\nhere is your dashboard....",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF2c3d63),
                              fontSize: 16,
                              height: 1.5,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Spacer(),
                    Containerwidget(
                      radius: 25,
                      svgPath: 'assets/svg/search.svg',
                      icon_height: 32,
                    ),
                  ],
                ),
              ),
              SizedBox(height: 5),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Padding(
                  padding: const EdgeInsets.only(top: 15.0),
                  child: Row(
                    children: [
                      Container1(),
                      SizedBox(width: 20),
                      Container2(),
                      SizedBox(width: 20),
                      Container3(),
                      SizedBox(width: 20),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 20),
              Row(
                spacing: 10,
                children: [
                  Column(
                    children: [
                      RichText(
                        text: TextSpan(
                          children: [
                            TextSpan(
                              text: 'January, 23 2024',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF2c3d63),
                                fontSize: 18,
                              ),
                            ),
                            TextSpan(
                              text: '\nToday',
                              style: TextStyle(
                                fontFamily: 'Roboto',
                                color: Color(0xFF2c3d63),
                                fontWeight: FontWeight.bold,
                                fontSize: 22,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Container(
                    height: 35,
                    width: 120,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 8.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                        children: [
                          Text(
                            "TIMELINE",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF2c3d63),
                              fontSize: 14,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          Icon(Icons.arrow_drop_down),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 95,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        SvgPicture.asset('assets/svg/calender.svg'),
                        Text(
                          "JAN, 2021",
                          style: TextStyle(
                            fontFamily: 'Roboto',
                            color: Color(0xFF2c3d63),
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              SizedBox(height: 20),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(days.length, (index) {
                    return DateChip(
                      day: days[index]['day']!,
                      date: days[index]['date']!,
                      selected: selectedDateIndex == index,
                      onTap: () {
                        setState(() {
                          selectedDateIndex = index;
                        });
                      },
                    );
                  }),
                ),
              ),
              SizedBox(height: 15),
              Stack(
                children: [
                  Container(
                    height: 150,
                    width: 380,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 20.0, top: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "New order created",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFF2C3D63),
                              fontSize: 18,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(height: 10),
                          Text(
                            "New Order created with Order",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Colors.black,
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 20),
                          Text(
                            "09:00 AM",
                            style: TextStyle(
                              fontFamily: 'Roboto',
                              color: Color(0xFFFE804E),
                              fontSize: 14,
                            ),
                          ),
                          SizedBox(height: 5),
                          Icon(Icons.arrow_right_alt, color: Color(0xFFFE804E)),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    right: 20,
                    top: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      backgroundColor: Color(0xFFFE804E),
                      radius: 40,
                      child: SvgPicture.asset(
                        'assets/svg/order_created.svg',
                        height: 70,
                        width: 70,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
