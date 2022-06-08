import 'package:flutter/material.dart';
import 'package:maqw/main.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import '../screens/salecenter.dart';
class searchWidget extends StatefulWidget {
  final String text;
  final ValueChanged<String>onChanged;
  final String hintText;
  const searchWidget({Key? key,
  required this.text,
  required this.onChanged,
  required this.hintText, required String hitText,}) : super(key: key);
  @override
  State<searchWidget> createState() => searchwidgetState();
}

class searchwidgetState extends State<searchWidget> {
  final controller =TextEditingController();
  late TextEditingController controller1;

  @override
  void dispose(){
    controller1.dispose();
    super.dispose();
  }
  @override
  void initState() {
    super.initState();
    controller1=TextEditingController();
  }

  @override
  Widget build(BuildContext context) {
    final styleActive=TextStyle(color: Colors.black);
    final styleHint=TextStyle(color: Colors.black54);
    final style=widget.text.isEmpty ? styleHint:styleActive;

    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color:Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        autofocus: true,
        controller: controller,
        decoration: InputDecoration(
          icon:Icon(Icons.search,color:style.color),
          suffixIcon: widget.text.isNotEmpty
            ? GestureDetector(
            child: Icon(Icons.close,color: style.color,),
            onTap: (){
              controller.clear();
              widget.onChanged('');
              FocusScope.of(context).requestFocus(FocusNode());
            },
          ):null,
          hintText: widget.hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        onChanged: widget.onChanged,
      ),
    );
  }


}