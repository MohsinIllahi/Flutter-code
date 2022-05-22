import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

class ImageWidget extends StatelessWidget {
  const ImageWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Doraemon Images'),
      ),
      body: Center(
        child: Container(
          height: 200,
          width: 300,
          // decoration: BoxDecoration(borderRadius: BorderRadius.circular(30)),
          child: CachedNetworkImage(
            imageUrl: 'https://i.ytimg.com/vi/bNd5xfqVw1M/maxresdefault.jpg',
            imageBuilder: (context, imageProvider) => Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: imageProvider,
               
                ),
              ),
            ),
            placeholder: (context, url) =>
                Center(child: CircularProgressIndicator()),
            errorWidget: (context, url, error) => Icon(Icons.error_outline),
          ),
        ),
      ),
    );
  }
}
