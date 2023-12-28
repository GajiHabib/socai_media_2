// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:socail_medio_2/MY-Botton.dart';
import 'package:socail_medio_2/My%20Card.dart';

class Homepage extends StatefulWidget {

  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final controller=PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[300],
      bottomNavigationBar:BottomNavigationBar(items: [
        BottomNavigationBarItem(icon: Icon(Icons.home),label:'' ),
          BottomNavigationBarItem(icon: Icon(Icons.settings),label:'' ),
          
      ]),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      floatingActionButton: FloatingActionButton(onPressed:(){},
      child: Icon(Icons.add,),
      backgroundColor: Colors.pink,
      ),
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Text(
                  'My',
                  style: TextStyle(fontSize: 40, fontWeight: FontWeight.bold),
                ),
                Text('Cards', style: TextStyle(fontSize: 30)),
                SizedBox(
                  width: 200,
                ),
                Container(
                    decoration: BoxDecoration(
                      color: Colors.blueGrey[100],
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(
                      Icons.add,
                      size: 40,
                    )),
              ],
            ),
            SizedBox(
              height: 12,
            ),
            //List view
           Container(
            height: 200,
            child: PageView(
              scrollDirection: Axis.horizontal,
              controller:controller,
              children: [
                MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: const Color.fromARGB(255, 43, 19, 85),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: const Color.fromARGB(255, 202, 194, 214),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Color.fromARGB(255, 85, 229, 234),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Color.fromARGB(255, 203, 14, 191),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Color.fromARGB(255, 218, 237, 13),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Color.fromARGB(255, 214, 159, 159),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: const Color.fromARGB(255, 177, 140, 241),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Color.fromARGB(255, 107, 105, 112),
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Colors.deepPurple,
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Colors.green,
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Colors.lightGreen,
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Colors.deepOrange,
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Colors.orange,
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Colors.blueGrey,
                ),
                   MYCard(
                  hiding:' Balanch',
                  taka: '\$5.250.20',
                  date: '+++3425',
                  expayardate: '10/25',
                  color: Colors.amberAccent,
                ),
                   
              ],
            ),
           ),
           SizedBox(height: 10,),
            SmoothPageIndicator(controller:controller,
             count:5,effect:ExpandingDotsEffect(
              activeDotColor: Colors.blue.shade800
             )), 
            SizedBox(height: 10,),
            //photo
          Container(
          height:350,
           child: ListView(
             scrollDirection: Axis.vertical,
           
              children: [
                  MYBotton(
                    color: const Color.fromARGB(255, 236, 206, 206),
                    image: Image.asset('assets/send.jpg'),
                    icontext: 'send',
                  ),
                    MYBotton(
                    color: const Color.fromARGB(255, 236, 206, 206),
                    image: Image.asset('assets/date.jpg'),
                    icontext: 'date',
                  ),
                    MYBotton(
                    color: const Color.fromARGB(255, 236, 206, 206),
                    image: Image.asset('assets/pay.jpg'),
                    icontext: 'pay',
                  ),
                   
                ]
           
             ),
           ),
              
              // scrollDirection: Axis.vertical,
              
          
          
          ],
        ),
      ),
    );
  }
}
