import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:machinetest/Presentation/bloc/category_bloc.dart';
import 'package:machinetest/Presentation/screens/load_asset.dart';
import 'package:multi_image_picker/multi_image_picker.dart';

class AddCategory extends StatefulWidget {
  @override
  _AddCategoryState createState() => _AddCategoryState();
}

class _AddCategoryState extends State<AddCategory> {
  List<Asset> selectedDp = [];
  var _formKey = GlobalKey<FormState>();
  TextEditingController nameController = TextEditingController();
  CategoryBloc categorybloc;
  void initState() {
    categorybloc = CategoryBloc();

    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder(
        bloc: categorybloc,
        builder: (context, state) {
          return Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                TextFormField(
                  controller: nameController,
                  decoration: InputDecoration(labelText: 'category name'),
                  keyboardType: TextInputType.text,
                ),
                //box styling
                SizedBox(
                  height: MediaQuery.of(context).size.width * 0.1,
                ),
                IconButton(icon: Icon(Icons.file_upload), onPressed:(){
             /// image picker
                  loadAssets(maxImage: 1).then((value) {
                    print(value);
                    if (value.isNotEmpty)
                      setState(() {
                        selectedDp = value;
                      });
                  });
                }),
                RaisedButton(
                  padding: EdgeInsets.symmetric(
                    vertical: 10.0,
                    horizontal: 15.0,
                  ),
                  child: Text(
                    "Upload",
                    style: TextStyle(
                      fontSize: 24.0,
                    ),
                  ),
                  onPressed: () {
                    ///form data format
                    categorybloc.add(AddCategoryEvent( paramCategory: {'name':nameController.text,"icon":selectedDp}));
                  },
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
