import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';

class ViewPhoto extends StatefulWidget {
  @override
  _ViewPhotoState createState() => _ViewPhotoState();
}

class _ViewPhotoState extends State<ViewPhoto> {
  ByteData _progress;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: PhotoView(
          imageProvider: NetworkImage(
              'http://media1.calvinklein.com/images/20171011/1011-women-sub4_@2x.jpg'),
          loadingBuilder: (context, progress) => Center(
            child: Container(
              width: 20.0,
              height: 20.0,
              child: CircularProgressIndicator(
                  // value: _progress == null
                  //     ? null
                  //     : _progress.cumulativeBytesLoaded /
                  //         _progress.expectedTotalBytes,
                  ),
            ),
          ),
          backgroundDecoration: BoxDecoration(color: Colors.black),
          gaplessPlayback: false,
          customSize: MediaQuery.of(context).size,
          // heroAttributes:  HeroAttributes(
          //   tag: "someTag",
          //   transitionOnUserGestures: true,
          // ),
          // scaleStateChangedCallback: this.onScaleStateChanged,
          enableRotation: true,
          // controller:  controller,
          minScale: PhotoViewComputedScale.contained * 0.8,
          maxScale: PhotoViewComputedScale.covered * 1.8,
          initialScale: PhotoViewComputedScale.contained,
          basePosition: Alignment.center,
          // scaleStateCycle: scaleStateCycle
        ),
      ),
    );
  }
}
