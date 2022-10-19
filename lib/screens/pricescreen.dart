import 'package:bitcoinpriceapp/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'dart:convert';
import 'package:http/http.dart'as http;
import '../utils.dart';
import 'package:bitcoinpriceapp/Models/ajayclass.dart';
const apiKey='https://api.coingecko.com/api/v3/coins/markets?vs_currency=usd&order=market_cap_desc&per_page=100&page=1&sparkline=false';

class PriceScreen extends StatefulWidget {
  const PriceScreen({Key? key}) : super(key: key);

  @override
  State<PriceScreen> createState() => _PriceScreenState();
}

class _PriceScreenState extends State<PriceScreen> {

  List<AjayCoin> allData=[];
  late AjayCoin ajayCoin ;
  Future<List<AjayCoin>> getData() async {
    http.Response response = await http.get(Uri.parse(apiKey));
    var data = jsonDecode(response.body);
    if(response.statusCode==200){
      for(Map i in data){
       ajayCoin = AjayCoin(name: i['name'], image: i['image'],current_price: i['current_price'],symbol: i['symbol'], market_cap_rank:i['market_cap_rank']);
       allData.add(ajayCoin);
      }
      return allData;
    }
    return allData;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  const Text('Crypto Live Prices'),
      ),
      body:Column(
        children: [
          FutureBuilder(
            future: getData(),
              builder: (context,AsyncSnapshot<List<AjayCoin>>snapshot){
            if(!snapshot.hasData){
              return Container(color: Colors.grey[200],);
            }
            else{
              return Expanded(
                child: ListView.builder(
                  physics: const ScrollPhysics(),
                  itemCount: allData.length,
                    itemBuilder: (context,index){
                    ajayCoin = allData[index];
                  return Card1(name: allData[index].name.toString(),imageUrl: allData[index].image.toString(),price:  allData[index].current_price.toString(),symbol:allData[index].symbol.toString(),ajayCoin: ajayCoin,);
                }),
              );
            }
          })
        ],
      )
    );


  }
}

