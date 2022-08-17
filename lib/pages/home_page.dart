import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:wallet/utility/card.dart';
import 'package:wallet/utility/my_buttons.dart';
import 'package:wallet/utility/my_list.dart';


class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  //page controller

  final _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        
        backgroundColor: Colors.grey[300],
        floatingActionButton: FloatingActionButton(onPressed: (){},
        backgroundColor:const Color.fromARGB(255, 38, 70, 96),
        child:const Icon(Icons.monetization_on,size: 32,),),
        floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
        bottomNavigationBar: BottomAppBar(
          color:const Color.fromARGB(255, 136, 169, 195),
          child: Padding(
            padding: const EdgeInsets.only(top: 8),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                IconButton(onPressed: (){}, icon:const Icon(Icons.home,size: 32,)),
                IconButton(onPressed: (){}, icon:const Icon(Icons.settings,size: 32,)),
              ],
            ),
          ),
        ),
        body: Column(
          children: [
            // appbar

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Text(
                        'My',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 28),
                      ),
                      Text(
                        'Card',
                        style: TextStyle(fontSize: 28),
                      )
                    ],
                  ),
                  Container(
                      padding:const EdgeInsets.all(2),
                      decoration: const BoxDecoration(
                        //color: Colors.grey[400],
                        shape: BoxShape.circle,
                      ),
                      child:
                          IconButton(onPressed: () {}, icon:const Icon(Icons.add)))
                ],
              ),
            ),

            //cards

           const SizedBox(
              height: 20,
            ),
            Container(
              height: 200,
              child: PageView(
                controller: _controller,
                scrollDirection: Axis.horizontal,
                children:const [
                  MyCard(
                    balance: 5250.56,
                    cardnumber: 234567545,
                    expirymonth: 07,
                    expiryyear: 25,
                    Color: Color.fromARGB(255, 60, 85, 106),
                  ),
                  MyCard(
                    balance: 19678.99,
                    cardnumber: 2399569,
                    expirymonth: 11,
                    expiryyear: 26,
                    Color: Color.fromARGB(255, 91, 157, 210),
                  ),
                  MyCard(
                    balance: 456732.678,
                    cardnumber: 236783631,
                    expirymonth: 05,
                    expiryyear: 24,
                    Color: Color.fromARGB(255, 44, 101, 148),
                  ),
                  MyCard(
                    balance: 457652.578,
                    cardnumber: 236783631,
                    expirymonth: 05,
                    expiryyear: 24,
                    Color: Color.fromARGB(255, 36, 135, 216),
                  ),
                  MyCard(
                    balance: 4525735.568,
                    cardnumber: 3176863723,
                    expirymonth: 06,
                    expiryyear: 23,
                    Color: Color.fromARGB(255, 0, 67, 122),
                  ),
                  MyCard(
                    balance: 87867.678,
                    cardnumber: 3578633631,
                    expirymonth: 10,
                    expiryyear: 22,
                    Color: Color.fromARGB(255, 33, 121, 192),
                  ),
                ],
              ),
            ),
           const SizedBox(
              height: 20,
            ),

            SmoothPageIndicator(
              controller: _controller,
              count: 6,
              effect: ExpandingDotsEffect(activeDotColor: Colors.grey.shade700),
            ),

          const  SizedBox(
              height: 20,
            ),

            //3 buttons > send > pay > bills

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  // send button
                 MyButton(iconImagePath: Image.asset('assets/images/send.png'), buttonText: 'Send'),

                  //pay button
                  MyButton(iconImagePath: Image.asset('assets/images/credit-card.png'), buttonText: 'Pay'),

                  // bills button
                  MyButton(iconImagePath: Image.asset('assets/images/receipt.png'), buttonText: 'Bills')
                ],
              ),
            ),
           const SizedBox(
              height: 20,
            ),

            //column > stats > transactions
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Column(
                children: [
                  //statistics
                 
                  MyList(iconImagePath: Image.asset('assets/images/laptop.png'), maintext: 'Statistics', subtext: 'Payments and Incomes', icon: Icons.arrow_forward),
                  
                  //transactions
                  MyList(iconImagePath: Image.asset('assets/images/swap.png'), maintext: 'Transactions', subtext: 'Transaction History', icon: Icons.arrow_forward),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}