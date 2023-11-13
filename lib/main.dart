import 'package:flutter/material.dart';

void main() {
  var urls = [
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/7416/32761/GA01188-US__78879.1571191474.1280.1280__18263__37873.1630472827.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/7416/23513/61gxTLnpARL._AC_SL1500___59164.1630374147.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/7972/38510/Google_Pixel_6_Pro_Black_front__68284.1634972312.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/7416/32762/GA00681-US__93119.1571189403.1280.1280__11916__40698.1630472827.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/7972/38514/Google_Pixel_6_Pro_Sorta_Sunny_side__31421.1634972767.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/960w/products/7972/38509/Google_Pixel_6_Pro_white_front__81219.1634971740.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/8094/40277/dfca7072-b48b-45e1-865d-b54e736a4642_2048x__26718.1654550092.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/7416/32765/61gxTLnpARL._AC_SL1500___59164.1571191476.1280.1280__63071__17964.1630472827.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/7416/23511/GA01189-US__22939.1630374147.jpg?c=2",
    "https://cdn11.bigcommerce.com/s-ss31ap/images/stencil/1280x1280/products/8094/40278/ffab113b-aa48-4dc7-88de-75678aba3722_2048x__78450.1654550092.jpg?c=2",
  ];

  runApp(
    MyApp(
      items: urls,
    ),
  );
}

class MyApp extends StatelessWidget {
  final List<String> items;

  const MyApp({Key? key, required this.items}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        body: ListView.builder(
          itemCount: items.length,
          itemBuilder: (context, index) {
            return Padding(
              padding: const EdgeInsets.all(8),
              child: Card(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(16.0),
                ),
                child: Column(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        items[index],
                        fit: BoxFit.cover,
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.all(8),
                      child: Text(
                        "Pixel",
                        style: TextStyle(fontSize: 48),
                      ),
                    ),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
