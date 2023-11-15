import 'package:flutter/material.dart';

class CustomListView extends StatelessWidget {
  final List<String> urls;

  const CustomListView({Key? key, required this.urls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: urls.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(8),
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16.0),
            ),
            child: Column(
              children: [
                SizedBox(
                  height: MediaQuery.of(context).size.height * 0.6,
                  child: ClipRRect(
                      borderRadius: BorderRadius.circular(16.0),
                      child: Image.network(
                        urls[index],
                        fit: BoxFit.cover,
                      )),
                ),
                const Padding(
                  padding: EdgeInsets.all(8),
                  child: Text(
                    "Вы хотели себе стильный молодежный смартфон вот ваш выбор представляю вам pixel",
                    style: TextStyle(fontSize: 16),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
