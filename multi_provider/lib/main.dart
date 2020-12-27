import 'package:flutter/material.dart';
import 'package:multi_provider/Cart.dart';
import 'package:multi_provider/Mony.dart';
import 'package:provider/provider.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MultiProvider(
        providers: [
          ChangeNotifierProvider(
            create: (context) => Money(),
            // builder: (context) => Money(),
          ),
          ChangeNotifierProvider(
            create: (context) => Cart(),
            // builder: (context) => Cart(),
          )
        ],
        child: Scaffold(
          floatingActionButton: Consumer<Money>(
            builder: (context, money, _) => Consumer<Cart>(
              builder: (context, cart, _) => FloatingActionButton(
                child: Icon(
                  Icons.add_shopping_cart,
                ),
                backgroundColor: Colors.purple,
                onPressed: () {
                  if (money.balance >= 500) {
                    money.balance -= 500;
                    cart.quantitiy += 1;
                  }
                },
              ),
            ),
          ),
          appBar: AppBar(
            backgroundColor: Colors.purple,
            title: Text("Muliti Provider"),
          ),
          body: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: <Widget>[
                    Container(
                      child: Text("Balance"),
                      margin: EdgeInsets.all(5),
                    ),
                    Consumer<Money>(
                      builder: (context, money, _) => Container(
                        width: 150,
                        height: 30,
                        margin: EdgeInsets.all(5),
                        padding: EdgeInsets.all(5),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Text(
                            money.balance.toString(),
                            style: TextStyle(
                                color: Colors.purple,
                                fontWeight: FontWeight.w700),
                          ),
                        ),
                        decoration: BoxDecoration(
                          color: Colors.purple[100],
                          border: Border.all(
                            color: Colors.purple[700],
                            width: 2,
                          ),
                          borderRadius: BorderRadius.circular(5),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  height: 30,
                  margin: EdgeInsets.all(5),
                  padding: EdgeInsets.all(5),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Consumer<Cart>(
                      builder: (context, cart, _) => Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "Apple (500) x " + cart.quantitiy.toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                          Text(
                            (500 * cart.quantitiy).toString(),
                            style: TextStyle(
                                color: Colors.black,
                                fontWeight: FontWeight.w700),
                          ),
                        ],
                      ),
                    ),
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                    borderRadius: BorderRadius.circular(5),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
