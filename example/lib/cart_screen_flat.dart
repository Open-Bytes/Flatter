// ignore_for_file: prefer_const_constructors
import 'package:flatter/flatter.dart';
import 'package:flutter/material.dart';

import 'cart_items.dart';

class CartScreenFlat extends StatelessWidget {
  const CartScreenFlat({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FlatColumn(of: () => list() + bottomView());
  }

  Expanded list() {
    return ListView.builder(
      itemCount: cartItems.length,
      itemBuilder: (BuildContext context, int index) {
        final CartItem item = cartItems[index];
        return ListTile(
                minVerticalPadding: 10.0,
                leading: leadingView(item),
                title: Text(item.name).textColor(Colors.blue),
                subtitle: subtitleView(item),
                trailing: trailingView(item))
            .card(
                margin: EdgeInsets.symmetric(horizontal: 10.0, vertical: 5.0),
                elevation: 3.0);
      },
    ).expanded();
  }

  Widget leadingView(CartItem item) {
    return Image.asset(
      item.imageUrl[0],
      fit: BoxFit.cover,
      height: 50.0,
      width: 50.0,
    ).cornerRadius(borderRadius: BorderRadius.circular(50.0));
  }

  Widget subtitleView(CartItem item) {
    return FlatColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        of: () =>
            Text('Size: ${item.size}') + Text('Amount \$:  ${item.amount}'));
  }

  Widget trailingView(CartItem item) {
    return Icon(Icons.delete).iconButton(onPressed: () {});
  }

  Widget bottomView() {
    return FlatColumn(
            crossAxisAlignment: CrossAxisAlignment.start,
            of: () =>
                totalView() +
                SizedBox(height: 10.0) +
                totalAmountView() +
                SizedBox(height: 10.0) +
                checkoutView())
        .inkWell(onTap: () {})
        .padding(15)
        .container(width: double.infinity)
        .background(color: Colors.white, radius: 25)
        .shadow(color: Colors.black54, spreadRadius: 1)
        .paddingSymmetric(vertical: 10, horizontal: 10);
  }

  Widget totalView() {
    return FlatRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        of: () =>
            Text('Total Items')
                .textColor(Colors.black)
                .fontSize(17.0)
                .fontWeight(FontWeight.bold) +
            Text(cartItems.length.toString())
                .textColor(Colors.black)
                .fontSize(18.0)
                .fontWeight(FontWeight.bold));
  }

  Widget totalAmountView() {
    return FlatRow(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        of: () =>
            Text('Total Amount')
                .textColor(Colors.black)
                .fontSize(17.0)
                .fontWeight(FontWeight.bold) +
            Text('900')
                .textColor(Colors.black)
                .fontSize(17.0)
                .fontWeight(FontWeight.bold));
  }

  Widget checkoutView() {
    return Text('CheckOut')
        .textAlignment(TextAlign.center)
        .bold()
        .textColor(Colors.white)
        .container(
            padding: EdgeInsets.all(15.0),
            width: double.infinity,
            decoration: BoxDecoration(
                  color: Colors.lightBlue,
                borderRadius: BorderRadius.all(Radius.circular(30.0))));
  }
}
