import 'package:flutter/material.dart';

import '../Constants/constants.dart';

class CustomButtonWidget extends StatefulWidget {
  CustomButtonWidget({
    super.key,
    required this.btntext,
    this.btnonPressed,
    required this.isReverse,
    this.centerWidget,
    this.width,
    this.isDarkGreyed
  });

  final String btntext;
  final VoidCallback? btnonPressed;
  final bool isReverse;
  final Widget? centerWidget;
  final double? width;
  final bool? isDarkGreyed;

  @override
  State<CustomButtonWidget> createState() => _CustomButtonWidgetState();
}

class _CustomButtonWidgetState extends State<CustomButtonWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      constraints: BoxConstraints(
        minWidth: widget.width ?? double.infinity,
      ),
      child: ElevatedButton(

        style: ElevatedButton.styleFrom(
          minimumSize: widget.width != null
              ? Size(widget.width!, 53)
              : const Size.fromHeight(56),
          backgroundColor:widget.isDarkGreyed!=null && widget.isDarkGreyed! ? CustomAppColors.darkGreyColorForButton :  widget.isReverse
              ? CustomAppColors.greyColorForButton
              : CustomAppColors.primaryColor,

          foregroundColor: CustomAppColors.primaryColor,

          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(36),
            side: widget.isDarkGreyed == true
                ? BorderSide(width: 2, color: CustomAppColors.darkGreyColorForButton)
                : widget.isReverse == true
                ? BorderSide(width: 2, color: CustomAppColors.greyColorForButton)
                : BorderSide(width: 0, color: CustomAppColors.primaryColor),
          ),
        ),
        onPressed: widget.btnonPressed,
        child: widget.centerWidget ??
            Text(
              widget.btntext,
              style:
              widget.isReverse
                  ? Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w700,color: CustomAppColors.blackColor)
                  : CustomTextStyles.whiteText14Bold,
            ),

      ),
    );
  }
}
