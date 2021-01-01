import 'dart:math';
import 'package:flutter/material.dart';
import 'package:bloc/bloc.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'product_card.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BlocProvider(
        builder: (context) => ProductBloc(),
        child: MainPage(),
      ),
    );
  }
}

class MainPage extends StatelessWidget {
  final Random r = Random();
  @override
  Widget build(BuildContext context) {
    ProductBloc bloc = BlocProvider.of<ProductBloc>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color(0xffF44336),
        title: Text("Demo ListView Builder"),
      ),
      body: Column(
        children: <Widget>[
          RaisedButton(
            child: Text(
              "Create Product",
              style: TextStyle(
                color: Colors.white,
              ),
            ),
            color: Color(0xffF44336),
            onPressed: () {
              bloc.dispatch(r.nextInt(4) + 2);
            },
          ),
          SizedBox(
            height: 20,
          ),
          BlocBuilder<ProductBloc, List<Product>>(
            builder: (context, products) => Expanded(
              child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: products.length,
                itemBuilder: (context, index) {
                  return Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: <Widget>[
                      (index == 0) ? SizedBox(width: 20) : Container(),
                      ProducCard(
                        imageUrl: products[index].imageUrl,
                        nama: products[index].name,
                        price: products[index].price.toString(),
                        onDecTap: () {},
                        onIncTap: () {},
                        onAddToCart: () {},
                      ),
                      SizedBox(width: 20)
                    ],
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Product {
  String imageUrl;
  String name;
  int price;

  Product({this.imageUrl = "", this.name = "", this.price = 0});
}

class ProductBloc extends Bloc<int, List<Product>> {
  @override
  // nilai awalnya itu list kosong
  List<Product> get initialState => [];

  @override
  Stream<List<Product>> mapEventToState(int event) async* {
    List<Product> products = [];
    for (var i = 0; i < event; i++) {
      products.add(
        Product(
          imageUrl:
              "https://assets-pergikuliner.com/c6aJUdr31lOmC4tY_ODaBgFoLic=/385x290/smart/https://assets-pergikuliner.com/uploads/image/picture/1282170/picture-1550652957.jpg",
          name: "Produk ke -" + i.toString(),
          price: (i + 1) * 5000,
        ),
      );
    }
    // kembalikan ke stream
    yield products;
  }
}
