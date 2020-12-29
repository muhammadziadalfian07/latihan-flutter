import 'package:flutter/material.dart';
import 'package:product_card/product_card.dart';
import 'package:provider/provider.dart';
import 'product_state.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
          title: Text("Product Card"),
          backgroundColor: firstColor,
        ),
        body: ChangeNotifierProvider(
          create: (context) => ProductState(),
          child: Container(
            margin: EdgeInsets.all(20),
            child: Align(
              alignment: Alignment.topCenter,
              child: Consumer<ProductState>(
                builder: (context, productState, _) => ProducCard(
                  imageUrl:
                      "https://assets-pergikuliner.com/c6aJUdr31lOmC4tY_ODaBgFoLic=/385x290/smart/https://assets-pergikuliner.com/uploads/image/picture/1282170/picture-1550652957.jpg",
                  nama: "Steak Wagyu",
                  price: "Rp. 100.000",
                  onAddToCart: () {
                    print(productState.quantitiy);
                  },
                  quantitiy: productState.quantitiy,
                  onDecTap: () {
                    (productState.quantitiy <= 0)
                        ? productState.quantitiy = 0
                        : productState.quantitiy--;
                  },
                  onIncTap: () {
                    productState.quantitiy++;
                  },
                  notification:
                      (productState.quantitiy > 5) ? "Diskon 10%" : null,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
