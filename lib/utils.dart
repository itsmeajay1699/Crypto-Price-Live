import 'package:bitcoinpriceapp/Models/ajayclass.dart';
import 'package:bitcoinpriceapp/screens/commonscreen.dart';
import 'package:flutter/material.dart';
const image1 =
    'https://th.bing.com/th/id/OIP.VYBF2gZX5Kp_J1SbJQIA0wHaNK?pid=ImgDet&rs=1';
class Card1 extends StatelessWidget {
  static const double value = 9;
   final String name;
   final String imageUrl;
   final String price;
   final String symbol;
   final AjayCoin ajayCoin;
  const Card1({Key? key, required this.name, required this.imageUrl, required this.price, required this.symbol, required this.ajayCoin}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialButton(
      onPressed: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>CommonScreen(ajayCoin:ajayCoin )));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          children: [
            Expanded(
                child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: Colors.white,
              ),
              height: 80,
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      child: Row(
                        children: [
                          Container(
                            height: 60,
                            width: 60,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                borderRadius: BorderRadius.circular(16)),
                            child:  Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: CircleAvatar(
                                backgroundImage: NetworkImage(imageUrl),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(top: 2, left: 10),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text(
                                  name,
                                  style: const TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.bold),
                                ),
                                Text(
                                 symbol,
                                  style: TextStyle(color: Colors.black),
                                )
                              ],
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children:  [
                          Text(
                           '$price\$',
                            style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 15,
                                color: Colors.black),
                          ),
                          Text(
                            '38577.0',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: value > 9 ? Colors.green : Colors.red),
                          ),
                          Text(
                            '+8.62335%',
                            style: TextStyle(
                                fontWeight: FontWeight.normal,
                                fontSize: 14,
                                color: value > 8 ? Colors.green : Colors.red),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ))
          ],
        ),
      ),
    );
  }
}
