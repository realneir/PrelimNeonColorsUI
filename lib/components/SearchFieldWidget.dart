import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SearchFieldWidget extends StatelessWidget {
  const SearchFieldWidget({super.key, required this.padding});

  final EdgeInsetsGeometry padding;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding,
      child: Container(
        height: 36,
        decoration: BoxDecoration(
          color: const Color.fromRGBO(118, 118, 118, 0.12),
          borderRadius: BorderRadius.circular(10),
        ),
        child: Row(
          children: [
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              "images/icons/magnifyingglass.svg",
            ),
            const SizedBox(
              width: 8,
            ),
            const Expanded(
              child: TextField(
                style: TextStyle(
                  color: Color.fromRGBO(255, 255, 255, 0.6),
                  fontSize: 17,
                  letterSpacing: -0.41,
                ),
                decoration: InputDecoration(
                    hintText: "Search",
                    border: InputBorder.none,
                    hintStyle: TextStyle(
                      color: Color.fromRGBO(255, 255, 255, 0.6),
                      fontSize: 17,
                      letterSpacing: -0.41,
                    )),
              ),
            ),
            const SizedBox(
              width: 8,
            ),
            SvgPicture.asset(
              "images/icons/microphone.svg",
            ),
          ],
        ),
      ),
    );
  }
}
