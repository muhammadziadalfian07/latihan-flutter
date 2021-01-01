import 'package:flutter/material.dart';

const Color firstColor = Color(0xffF44336);
const Color secodnColor = Color(0xff4cAF50);

class ProducCard extends StatelessWidget {
  final String imageUrl;
  final String nama;
  final String price;
  final Function onIncTap;
  final Function onDecTap;
  final int quantitiy;
  final String notification;
  final TextStyle textStyle = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.bold,
    color: Colors.grey[800],
  );
  final Function onAddToCart;

  ProducCard({
    this.imageUrl = "",
    this.nama = "-",
    this.price = "Rp. 0",
    this.onAddToCart,
    this.onIncTap,
    this.onDecTap,
    this.quantitiy = 0,
    this.notification,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        AnimatedContainer(
          margin: EdgeInsets.only(left: 10, right: 10),
          padding: EdgeInsets.all(5),
          duration: Duration(milliseconds: 300),
          width: 130,
          height: (notification != null) ? 270 : 250,
          decoration: BoxDecoration(
            color: secodnColor,
            borderRadius: BorderRadius.circular(16),
          ),
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              (notification != null) ? notification : "",
              style: textStyle.copyWith(
                color: Colors.white,
                fontSize: 12,
                shadows: [
                  BoxShadow(
                    blurRadius: 3,
                    offset: Offset(1, 1),
                    color: Colors.black.withOpacity(0.3),
                  ),
                ],
              ),
            ),
          ),
        ),
        Container(
          width: 150,
          height: 250,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(16),
            boxShadow: [
              BoxShadow(
                color: Colors.black.withOpacity(0.2),
                blurRadius: 6,
                offset: Offset(1, 1),
              ),
            ],
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Container(
                    height: 100,
                    width: 150,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.only(
                        topLeft: Radius.circular(16),
                        topRight: Radius.circular(16),
                      ),
                      image: DecorationImage(
                          image: NetworkImage(
                            imageUrl,
                          ),
                          fit: BoxFit.cover),
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      nama,
                      style: textStyle,
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 5, right: 5),
                    child: Text(
                      price,
                      style: textStyle.copyWith(
                        fontSize: 12,
                        color: firstColor,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                children: <Widget>[
                  Container(
                    width: 140,
                    height: 30,
                    decoration: BoxDecoration(
                      border: Border.all(color: firstColor),
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        GestureDetector(
                          onTap: onIncTap,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Text(
                          quantitiy.toString(),
                          style: textStyle,
                        ),
                        GestureDetector(
                          onTap: onDecTap,
                          child: Container(
                            height: 30,
                            width: 30,
                            decoration: BoxDecoration(
                              color: Colors.red,
                            ),
                            child: Icon(
                              Icons.remove,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: 140,
                    child: RaisedButton(
                      child: Icon(
                        Icons.shopping_cart,
                        color: Colors.white,
                        size: 18,
                      ),
                      color: firstColor,
                      onPressed: onAddToCart,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(16),
                          bottomRight: Radius.circular(16),
                        ),
                      ),
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ],
    );
  }
}
