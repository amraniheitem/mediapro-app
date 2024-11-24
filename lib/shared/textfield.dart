import 'package:flutter/material.dart';

class MyTextField extends StatefulWidget {
  final TextInputType textInputType;
  final bool isPassword;
  final String hintText;

  const MyTextField({
    Key? key,
    required this.textInputType,
    required this.isPassword,
    required this.hintText,
  }) : super(key: key);

  @override
  _MyTextFieldState createState() => _MyTextFieldState();
}

class _MyTextFieldState extends State<MyTextField> {
  final FocusNode _focusNode = FocusNode(); // لإدارة التركيز

  @override
  void dispose() {
    _focusNode.dispose(); // تحرير الموارد
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus(); // إلغاء التركيز عند النقر خارج الحقل
      },
      child: TextField(
        focusNode: _focusNode, // ربط الحقل النصي بـ FocusNode
        keyboardType: widget.textInputType,
        obscureText: widget.isPassword,
        decoration: InputDecoration(
          hintText: widget.hintText,
          filled: true,
          fillColor: Colors.white.withOpacity(0.8),
          contentPadding: const EdgeInsets.symmetric(
            vertical: 16.0,
            horizontal: 20.0,
          ),
          border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(50),
            borderSide: BorderSide.none,
          ),
        ),
        onEditingComplete: () {
          _focusNode.unfocus(); // إلغاء التركيز عند انتهاء الكتابة
        },
      ),
    );
  }
}
