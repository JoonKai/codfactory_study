import 'package:factory_prject/comman/const/colors.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final String? hintText;
  final String? errorText;
  final bool obscureText;
  final bool autofocus;
  final ValueChanged<String>? onChnaged;

  const CustomTextFormField(
      {required this.onChnaged,
      this.autofocus = false,
      this.obscureText = false,
      this.hintText,
      this.errorText,
      super.key});

  @override
  Widget build(BuildContext context) {
    final baseBorder = OutlineInputBorder(
      borderSide: BorderSide(
        color: INPUT_BODER_COLOR,
        width: 1.0,
      ),
    );
    return TextFormField(
      cursorColor: PRIMARY_COLOR,
      //비밀번호
      obscureText: obscureText,
      autofocus: autofocus,
      onChanged: onChnaged,
      decoration: InputDecoration(
        contentPadding: EdgeInsets.all(20),
        hintText: hintText,
        errorText: errorText,
        hintStyle: const TextStyle(
          color: BODY_TEXT_COLOR,
          fontSize: 14.0,
        ),
        fillColor: INPUT_BG_COLOR,
        //false : 배경색없음
        //true : 배경색있음.
        filled: true,
        //모든 input 상태의 기본 스타일 세팅
        border: baseBorder,
        enabledBorder: baseBorder,
        focusedBorder: baseBorder.copyWith(
            borderSide: baseBorder.borderSide.copyWith(
          color: PRIMARY_COLOR,
        )),
      ),
    );
  }
}
