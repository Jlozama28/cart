import 'package:flutter/material.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);
/*
this program code prototype will implement a lit of object for example books
and display the price and quantity and also display and add and remove button
with a subtotal.
 */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            listViewHeading(),
            productListView(),
            Container(
              margin: const EdgeInsets.symmetric(horizontal: 5),
              decoration: BoxDecoration(
                border: Border.all(color: Colors.teal),
                color: Colors.white10,
              ),
              padding: const EdgeInsets.symmetric(vertical: 20, horizontal: 15),
              child: Column(
                children: [
                  subTotal(),
                  tax(),
                  coupon(),
                ],
              ),

            ),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 20,horizontal: 10),

            )
          ]
          ,
        ),
      ),
    );
  }

  PreferredSizeWidget appbar() {
    return AppBar(
      backgroundColor: Colors.teal,
      centerTitle: true,
      title: const Text('Items'),
    );
  }
  /*
  this is the main body of the prototype code, this part will display the quantity,
  the add and remove button and also the price. this part will implement a listview
  and making sure that the add and remove button work accordingly.
   */

  Widget listViewHeading() {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 18, vertical: 7),
      decoration: const BoxDecoration(
          color: Colors.teal
      ),
      child: Row(
        children: [
          const Expanded(
              child: Text(
                'Name',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.black
                ),
              )
          ),
          Row(
            children: [
              const Text(
                'Qty',
                style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 13,
                    color: Colors.black
                ),
              ),
              Container(
                margin: const EdgeInsets.only(left: 50),
                child: const Text(
                  'Price',
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 13,
                      color: Colors.black
                  ),

                ),

              ),
            ],
          )
        ],
      ),
    );
  }

  Widget productListView() {
    return ListView.separated(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (context, index) {
        return productListViewItem(index);
      },
      separatorBuilder: (context, index) {
        return const Divider(height: 0,);
      },
      itemCount: 8,);
  }

  Widget productListViewItem(int index) {
    return Container(
      padding: const EdgeInsets.all(15),
      margin: const EdgeInsets.only(top: 1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
      ),
      child: Row(
        children: [
          const Expanded(
            child: Text(
              'Books',
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
              ),
            ),
          ),
          Row(
            children: [
              const Icon(
                Icons.add_circle_outline,
                color: Colors.green,
              ),
              Container(
                margin: const EdgeInsets.symmetric (horizontal: 5),
                child: const Text(
                  '10',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,

                  ),

                ),),
              Container(
                  margin: const EdgeInsets.only(left: 20),
                  child: const Text(
                    ' \$4.99 ',
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Colors.black87
                    ),
                  )
              ),
              const Icon(
                Icons.remove_circle_outline,
                color: Colors.red,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 5),
                child: const Text(
                  '',
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Colors.teal,

                  ),
                ),

              )

            ],
          )
        ],
      ),
    );
  }

  /*
  this is the bottom part of the program. in which a tax, coupon and a subtotal
  will be display.
   */

  Widget subTotal() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'SubTotal',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal,
              fontSize: 13
          ),),
        Text(
          '\$234',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal,
              fontSize: 13
          ),
        )
      ],
    );
  }

  Widget tax() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'tax',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal,
              fontSize: 15
          ),),
        Text(
          '\$56',
          style: TextStyle(
              fontWeight: FontWeight.bold,
              color: Colors.teal,
              fontSize: 15
          ),
        )
      ],
    );
  }

  Widget coupon() {
    return Container(
        margin: const EdgeInsets.only(top: 12),
        child: Row(
          children: const [
            Icon(
              Icons.redeem_outlined,
              size: 20,
              color: Colors.teal,
            ),
          ],
        )
    );
  }

  Widget total() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [
        Text(
          'Total',
          style: TextStyle(fontSize: 15),
        ),
        Text(
          '\$456',
          style: TextStyle(color: Colors.teal,fontSize: 15),
        ),
      ],
    );
  }
  Widget checkOutButton(){
    return Container(
      margin: const EdgeInsets.only(top: 10),
      width: double.infinity,
      height: 45,
      child: TextButton(
          style: TextButton.styleFrom(
            foregroundColor: Colors.teal,
            padding: const EdgeInsets.all(16.0),
            textStyle: const TextStyle(fontSize: 20),
          ),
          onPressed: (){},
          child: const Text('Checkout', style: TextStyle(fontSize: 16,color: Colors.teal),)

      ),
    );
  }

}
