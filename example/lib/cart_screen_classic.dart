// ignore_for_file: prefer_const_constructors
import 'package:flutter/material.dart';

import 'cart_items.dart';

class CartScreenClassic extends StatelessWidget {
  const CartScreenClassic({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(
          child: ListView.builder(
            itemCount: cartItems.length,
            itemBuilder: (BuildContext context, int index) {
              CartItem data = cartItems[index];
              return Card(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                elevation: 3.0,
                child: ListTile(
                  minVerticalPadding: 10.0,
                  leading: ClipRRect(
                    borderRadius: BorderRadius.circular(50.0),
                    child: Image.asset(
                      data.imageUrl[0],
                      fit: BoxFit.cover,
                      height: 50.0,
                      width: 50.0,
                    ),
                  ),
                  title: Text(data.name),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text('Size: ${data.size}'),
                      Text('Amount \$:  ${data.amount}'),
                    ],
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () {},
                  ),
                ),
              );
            },
          ),
        ),
        Container(
          width: double.infinity,
          padding: EdgeInsets.all(15.0),
          decoration: BoxDecoration(
              color: Colors.white,
              boxShadow: const [BoxShadow(color: Colors.black, blurRadius: 3)],
              borderRadius: BorderRadius.vertical(top: Radius.circular(25.0))),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Total Items',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    cartItems.length.toString(),
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Text(
                    'Total Amount',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 17.0,
                        fontWeight: FontWeight.bold),
                  ),
                  Text(
                    '900',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              SizedBox(height: 10.0),
              InkWell(
                child: Container(
                  padding: EdgeInsets.all(15.0),
                  width: double.infinity,
                  decoration: BoxDecoration(
                      color: Colors.lightBlue,
                      borderRadius: BorderRadius.all(Radius.circular(30.0))),
                  child: Text(
                    'CheckOut',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white, fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ],
          ),
        )
      ],
    );
  }
}
