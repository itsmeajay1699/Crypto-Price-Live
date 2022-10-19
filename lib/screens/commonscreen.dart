import 'package:bitcoinpriceapp/Models/ajayclass.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CommonScreen extends StatefulWidget {
  final AjayCoin ajayCoin;
  const CommonScreen({Key? key, required this.ajayCoin}) : super(key: key);

  @override
  State<CommonScreen> createState() => _CommonScreenState();
}

class _CommonScreenState extends State<CommonScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.teal,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 10,top: 40),
            child: MaterialButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Icon(
                Icons.arrow_back_ios_new,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Container(
              height: 200,
              width: 300,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(24),
                image: DecorationImage(image: NetworkImage(widget.ajayCoin.image.toString()))
              ),
            ),
          ),
           Padding(
             padding: const EdgeInsets.symmetric(vertical: 10,horizontal: 20),
             child: Card(
               color: Colors.teal[400],
              child: ListTile(
                leading: const Icon(FontAwesomeIcons.trophy,color: Colors.yellow,),
                title: const Text('Market Rank'),
                subtitle: Text('❤ ${widget.ajayCoin.market_cap_rank}'),
              ),
          ),
           )
        ],
      ),
    );
  }
}
