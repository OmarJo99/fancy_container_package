import 'package:flutter/material.dart';

class FancyContainer extends StatefulWidget {
  final double? width;
  final double? height;
  final Color? color1;
  final Color? color2;
  final String? title;
  final Color? textcolor;
  final String? subtitle;
  final Color? subtitlecolor;
  final EdgeInsetsGeometry? padding;

  const FancyContainer(
      {Key? key,
      this.height = 120,
      this.width,
      this.color1,
      this.color2,
      this.title = 'Title',
      this.textcolor,
      this.subtitle = 'Subtitle',
      this.subtitlecolor,
      this.padding})
      : super(key: key);
  @override
  _FancyContainerState createState() => _FancyContainerState();
}

class _FancyContainerState extends State<FancyContainer> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width ?? MediaQuery.of(context).size.width * 0.09,
      height: widget.height,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(20)),
        gradient: LinearGradient(colors: [
          widget.color1 ?? Color(0xffcb1841),
          widget.color2 ?? Color(0xff2684de),
        ], begin: Alignment.topLeft, end: Alignment.topRight),
        boxShadow: [
          BoxShadow(color: Colors.grey, blurRadius: 12, offset: Offset(0, 6))
        ],
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.title.toString(),
              style: TextStyle(
                  color: widget.textcolor,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5),
            child: Text(
              widget.subtitle.toString(),
              style: TextStyle(
                color: widget.subtitlecolor,
                fontSize: 15,
              ),
            ),
          )
        ],
      ),
    );
  }
}
