import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MyCard extends StatelessWidget {
  final double balance;
  final int cardnumber;
  final int expirymonth;
  final int expiryyear;
  final Color;

  const MyCard({Key? key, required this.Color, required this.balance, required this.cardnumber , required this.expirymonth, required this.expiryyear}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        width: 300,
        padding:const EdgeInsets.all(20),
        decoration: BoxDecoration(
            color: Color,
            borderRadius: BorderRadius.circular(16)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              mainAxisAlignment: 
              MainAxisAlignment.spaceBetween,
              children: [
               const SizedBox(
                  height: 10,
                ),
                Image.asset('assets/images/visa-card.png',width: 50,),

              ],
            ),
          const  Text(
              'Balance',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          const  SizedBox(
              height: 10,
            ),
            Text(
              '\$' + balance.toString(),
              style:const TextStyle(color: Colors.white, fontSize: 24,fontWeight: FontWeight.bold),
            ),
           const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                //card  number
                Text(
                  cardnumber.toString(),
                  style:const TextStyle(
                    color: Colors.white,
                  ),
                ),
                //card expiry date
                Text(
                  expirymonth.toString() +'/'+ expiryyear.toString(),
                  style: TextStyle(
                    color: Colors.white,
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}