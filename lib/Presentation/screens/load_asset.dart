import 'package:multi_image_picker/multi_image_picker.dart';

Future<List<dynamic>> loadAssets({int maxImage = 10}) async {
  List<Asset> resultList = List<Asset>();
  List<Asset> images = List<Asset>();
  try {
    resultList = await MultiImagePicker.pickImages(
      maxImages: maxImage,
      enableCamera: true,
      selectedAssets: images,
      cupertinoOptions: CupertinoOptions(takePhotoIcon: "chat"),
      materialOptions: MaterialOptions(
        actionBarColor: "#abcdef",
        actionBarTitle: "Example App",
        allViewTitle: "All Photos",
        useDetailsView: false,
        selectCircleStrokeColor: "#000000",
      ),
    );
  } on Exception catch (e) {
    print(e);
  }

  return resultList;
}
