
import 'package:flutter/material.dart';
// import 'package:gcmobile/Constants/appcolors.dart';

class TextInputWidget extends StatelessWidget {
  final TextEditingController controller;
  final String hintText;
  final String? inputTitle;
  final bool? isHide;
  final bool? isOptional;
  final InputBorder? inputBorder;
  final InputType? inputType;
  final TextStyle? inputTextStyle;
  final TextStyle? hintTextStyle;
  final Color? borderColor;
  final Color? hintTextColor;
  final EdgeInsets? contentPadding;
  final Widget? child;
  final TextAlignVertical? textAlignVertical;
  final String? Function(String?)? validate;

  const TextInputWidget(
      {super.key,
      required this.controller,
      required this.hintText,
      this.inputTextStyle,
      this.child, this.isHide, 
       this.validate, 
       this.isOptional = false,
       this.inputType, this.borderColor, 
       this.hintTextColor, 
       this.contentPadding, 
       this.textAlignVertical, 
       this.hintTextStyle, this.inputBorder, this.inputTitle});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if(inputTitle != null)
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            RichText(text: TextSpan(
              children: [ 
                TextSpan(text: inputTitle), 
                if(isOptional != null)
                const TextSpan(text: ' *', style: TextStyle(
                  color: Colors.red,
                  // fontSize: 
                ))
              ], 
              style: const TextStyle(
                fontFamily: 'Proxi', 
                fontSize: 16, 
                fontWeight: FontWeight.w400
              )
            ))

          ],
        ),
        SpacerWidget(height: 3),
        TextFormField(
        
          controller: controller,
          obscureText: isHide ?? false,
         
          validator: validate ?? (inputType == null ? (v){
           if(v == null || v == ""){
            return "Required filed";
           } 
           return null;
          } : (v){
            if(v == null || v == ''){
              return "Enter email";
            }
            return null;
          }) ,
          style: inputTextStyle ?? const TextStyle(color: Colors.white),
          textAlignVertical: textAlignVertical ?? TextAlignVertical.center,
          decoration: InputDecoration(
              suffixIcon: child,
              hintText: hintText,
              hintStyle: hintTextStyle ??  TextStyle(
                  color: hintTextColor ?? kTextHintTextColor, fontFamily: 'GoodTime'),
              contentPadding: contentPadding ??
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 15),
              border: inputBorder?? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                       BorderSide(color: borderColor ?? kTextInputBorderColor)),
              enabledBorder: inputBorder?? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                       BorderSide( color: borderColor??  kTextInputBorderColor)),
              errorBorder:inputBorder?? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: Colors.red)),
              focusedBorder: inputBorder?? OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide:
                       BorderSide(color: borderColor?? kTextInputBorderColor))),
        ),
      ],
    );
  }
}

enum InputType {email}