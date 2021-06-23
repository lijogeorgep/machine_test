import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machinetest/Presentation/bloc/product_bloc.dart';
import 'package:machinetest/Presentation/screens/productDetails.dart';
import 'package:machinetest/data/model/products.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  ProductBloc productbloc;
  void initState() {
    productbloc = ProductBloc();
    productbloc.add(FetchProductEvent());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Products',
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
      body: SingleChildScrollView(
        child: BlocBuilder(
            bloc: productbloc,
            builder: (context, snapshot) {
              print('state$snapshot');

              if (snapshot is ProductLoadedState) {
                return buildProductList(snapshot.productScreen.data, context);
              } else if (snapshot is ProductErrorState) {
                return buildErrorUi(snapshot.message);
              }
              return showCircleProgress();
            }),
      ),
    );
  }

  Widget buildErrorUi(String message) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Text(
          "No data found",
        ),
      ),
    );
  }

  Widget showCircleProgress({double size = 30}) => Align(
        alignment: Alignment.center,
        child: SizedBox(
          child: CircularProgressIndicator(
            backgroundColor: Colors.blue,
            valueColor: new AlwaysStoppedAnimation<Color>(Colors.white),
          ),
        ),
      );

  Widget buildProductList(List<Datum> data, BuildContext context) {
    return ListView.builder(
      physics: ScrollPhysics(),
      shrinkWrap: true,
      itemCount: data.length,
      itemBuilder: (context, position) => Container(
        margin: EdgeInsets.only(left: 10, right: 10),
        decoration:
            BoxDecoration(borderRadius: BorderRadius.all(Radius.circular(8))),
        child: Column(
          children: <Widget>[
            GestureDetector(
              child: ListTile(
                  visualDensity: VisualDensity(horizontal: 4.0, vertical: 2.0),
                  leading: Transform.translate(
                    offset: Offset(-26, 0),
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: CircleAvatar(
                          backgroundImage: (data[position].featuredImage == null
                              ? NetworkImage(
                                  "https://upload.wikimedia.org/wikipedia/commons/thumb/a/ac/No_image_available.svg/600px-No_image_available.svg.png")
                              : NetworkImage(data[position].featuredImage))),
                    ),
                  ),
                  title: Transform.translate(
                      offset: Offset(-50, 0),
                      child: Text('${data[position]?.name ?? ""}')),
                  subtitle: Transform.translate(
                      offset: Offset(-50, 0),
                      child: Text('${data[position]?.description ?? ""}')),
                  trailing: Text('₹' + '${data[position]?.price ?? ""}',style: TextStyle(color: Colors.green),)),
              onTap: () {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return ProductDetails(
                      productview: Datum(
                    id: data[position].id,
                    manufacture: data[position].manufacture,
                    name: data[position].name,
                    price: data[position].price,
                    discountPrice: data[position].discountPrice,
                    minOrder: data[position].minOrder,
                    maxOrder: data[position].maxOrder,
                    category: data[position].category,
                    subcategory: data[position].subcategory,
                  ));
                }));
              },
            ),
            Divider(
              height: 1,
            ),
          ],
        ),
      ),
    );
  }
}
