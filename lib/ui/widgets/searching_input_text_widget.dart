import 'package:flutter/material.dart';

class SearchingInputTextWidget extends StatelessWidget {
  final String text;
  final ValueChanged<String> onChanged;
  final String hintText;
  final TextEditingController controller ;

  const SearchingInputTextWidget({
    Key? key,
    required this.text,
    required this.onChanged,
    required this.hintText, required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final styleActive = TextStyle(color: Colors.black);
    final styleHint = TextStyle(color: Colors.black54);
    final style = text.isEmpty ? styleHint : styleActive;

    return Container(
      height: 42,
      margin: const EdgeInsets.fromLTRB(16, 16, 16, 16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        color: Colors.white,
        border: Border.all(color: Colors.black26),
      ),
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: TextField(
        controller: controller,
        decoration: InputDecoration(
          icon: Icon(Icons.search, color: style.color),
          suffixIcon: text.isNotEmpty
              ? GestureDetector(
                  child: Icon(Icons.close, color: style.color),
                  onTap: () {
                    controller.clear();
                    onChanged('');
                    FocusScope.of(context).requestFocus(FocusNode());
                  },
                )
              : null,
          hintText: hintText,
          hintStyle: style,
          border: InputBorder.none,
        ),
        style: style,
        onChanged: onChanged,
      ),
    );
  }
}