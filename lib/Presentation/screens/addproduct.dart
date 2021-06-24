import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machinetest/Presentation/bloc/add_bloc.dart';
import 'package:fluttertoast/fluttertoast.dart';

class AddProduct extends StatefulWidget {
  @override
  _AddProductState createState() => _AddProductState();
}

class _AddProductState extends State<AddProduct> {
  var _formKey = GlobalKey<FormState>();
  TextEditingController ParentCategoryController = TextEditingController();
  TextEditingController SubCategoryController = TextEditingController();
  TextEditingController DateController = TextEditingController();
  AddBloc addbloc;
  void initState() {
    addbloc = AddBloc();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
      appBar: AppBar(
        title: Text("Add product"),
      ),
      //body
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          //form
          child: BlocBuilder(
              bloc: addbloc,
              builder: (context, state) {
                return Form(
                  key: _formKey,
                  child: Column(
                    children: <Widget>[
                      Text(
                        "Add product details ",
                        style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),
                      ),
                      //styling
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      TextFormField(
                        controller: ParentCategoryController,
                        decoration:
                            InputDecoration(labelText: 'parent category'),
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          //Validator
                        },
                      ),
                      //box styling
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      //text input
                      TextFormField(
                        controller: SubCategoryController,
                        decoration:
                            InputDecoration(labelText: 'sub_category name'),
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          //Validator
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      TextFormField(
                        controller: DateController,
                        decoration: InputDecoration(labelText: 'Date'),
                        keyboardType: TextInputType.text,
                        onFieldSubmitted: (value) {
                          //Validator
                        },
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      SizedBox(
                        height: MediaQuery.of(context).size.width * 0.1,
                      ),
                      RaisedButton(
                        padding: EdgeInsets.symmetric(
                          vertical: 10.0,
                          horizontal: 15.0,
                        ),
                        child: Text(
                          "Submit",
                          style: TextStyle(
                            fontSize: 24.0,
                          ),
                        ),
                        onPressed: () {
                          addbloc.add(AddProductEvent(paramAdd: {
                            "subcategory": {
                              "parent_category": ParentCategoryController.text,
                              "subcategory_name": SubCategoryController.text,
                              "added_date": DateController.text,
                            }
                          }));
                        },
                      ),
                    ],
                  ),
                );
              }),
        ),
      ),
    ));
  }
}
