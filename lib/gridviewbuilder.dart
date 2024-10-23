import 'package:flutter/material.dart';
import 'package:gridviewbuilder/model.dart';

class home extends StatelessWidget {
  final List _photos = [
    data(
        image: "asset/HD-wallpaper-laptop-numbers-dark-thumbnail.jpg",
        Text: "Natural Scenes"),
    data(
        image: "asset/macbook-minimal-dark-wallpaper.jpg",
        Text: "Natural Scenes"),
    data(
        image: "asset/pexels-huy-phan-316220-2826787.jpg",
        Text: "Natural Scenes"),
    data(
        image: "asset/pexels-moose-photos-170195-1037992.jpg",
        Text: "Natural Scenes"),
    data(image: "asset/pexels-vladalex94-1402787.jpg", Text: "Natural Scenes"),
  ];
  home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("H O M E"),
        centerTitle: true,
      ),
      body: GridView.builder(
          itemCount: _photos.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2, crossAxisSpacing: 10, mainAxisSpacing: 10),
          itemBuilder: (context, index) {
            return Column(
              children: [
                SizedBox(
                  height: 150,
                  width: 180,
                  child: Image.asset(_photos[index].image,fit: BoxFit.cover,),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(_photos[index].Text)
              ],
            );
          }),
    );
  }
}
