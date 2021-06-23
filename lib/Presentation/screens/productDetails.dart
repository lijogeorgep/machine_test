import 'package:flutter/material.dart';
import 'package:machinetest/data/model/products.dart';

class ProductDetails extends StatefulWidget {
  final Datum productview;

  const ProductDetails({Key key, this.productview}) : super(key: key);
  @override
  _ProductDetailsState createState() => _ProductDetailsState();
}

class _ProductDetailsState extends State<ProductDetails> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Product details',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: Container(
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          child: Center(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        widget?.productview?.name ?? "",
                        style: TextStyle(fontSize: 20),
                      ),
                      Divider(
                        height: 1,
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'category: ',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          Text(widget?.productview?.category ?? ""),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'sub category: ',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          Text(widget?.productview?.subcategory ?? ""),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'manufacture ',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          Text(widget?.productview?.manufacture ?? ""),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                             'price: ',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          Text(widget?.productview?.price.toString() ??
                              "",style: TextStyle(color: Colors.green),),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'discount price: ',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          Text(widget?.productview?.discountPrice.toString() ??
                              "",style: TextStyle(color: Colors.red),),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'min order: ',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          Text(widget?.productview?.minOrder.toString() ?? ""),
                        ],
                      ),
                      SizedBox(
                        height: 10.0,
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          Text(
                            'max order: ',
                            style: TextStyle(color: Colors.blue.shade300),
                          ),
                          Text(widget?.productview?.maxOrder.toString() ?? ""),
                        ],
                      ),
                    ],
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
