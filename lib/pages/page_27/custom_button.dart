import 'package:flutter/material.dart';
import 'package:opensource_flutter/pages/page_27/page_27.dart';

class CustomBottomButton extends StatelessWidget {

  CustomBottomButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: <Widget>[
          GestureDetector(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: selectedColor,
              child: const Icon(
                Icons.keyboard_arrow_left,
                size: 35,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            width: 30,
          ),
          GestureDetector(
            child: CircleAvatar(
              radius: 25,
              backgroundColor: selectedColor,
              child:const Icon(
                Icons.keyboard_arrow_right,
                size: 35,
                color: Colors.white,
              ),
            ),
          )
        ],
      ),
    );
  }
}
