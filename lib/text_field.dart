import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class CustomTextField extends StatefulWidget {
  final TextEditingController controller;
  final String hintText;
  final String? Function(String?)? validator;
  final bool obscureText;
  final Widget? prefixIcon;
  const CustomTextField(
      {required this.controller,
      required this.hintText,
      this.validator,
      this.obscureText = false,
      this.prefixIcon});

  @override
  State<CustomTextField> createState() => _CustomTextFieldState();
}

class _CustomTextFieldState extends State<CustomTextField> {
  bool isObscure = true;

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return TextFormField(
      controller: widget.controller,
      validator: widget.validator,
      obscureText: widget.obscureText ? isObscure : false,
      style: GoogleFonts.rubik(color: Colors.black, fontSize: 16.0),
      keyboardType: TextInputType.text,
      decoration: InputDecoration(
        hintText: widget.hintText,
        hintStyle: GoogleFonts.rubik(
          fontSize: 16.0,
          color: Colors.white,
        ),
        prefixIcon: widget.prefixIcon,
        suffixIcon: (widget.obscureText)
            ? InkWell(
                onTap: () {
                  setState(() {
                    isObscure = !isObscure;
                  });
                },
                child: Icon(
                    (!isObscure) ? Icons.visibility : Icons.visibility_off,
                    size: 20.0,
                    color: Colors.grey))
            : null,
        floatingLabelBehavior: FloatingLabelBehavior.never,
        filled: true,
        isDense: true,
        fillColor: Colors.blue,
        contentPadding: const EdgeInsets.all(20),
        isCollapsed: true,
        enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: const BorderSide(color: Colors.transparent)),
        focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(10.0),
            borderSide: BorderSide(color: Colors.grey)),
      ),
      maxLines: 1,
      cursorColor: Colors.black,
    );
  }
}
