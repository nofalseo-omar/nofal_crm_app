// ignore_for_file: must_be_immutable

import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_svg/flutter_svg.dart';

class TextFieldComponent extends StatefulWidget {
  TextFieldComponent({
    super.key,
    this.controller,
    this.validator,
    this.borderColor,
    this.onChange,
    this.onSubmit,
    this.onPress,
    this.inputFormatters = const [],
    this.suffixIcon,
    this.keyboardType,
    this.textStyle,
    this.focusNode,
    this.onTapWhileTextFieldIsEnabled,
    this.hintTextStyle,
    this.prefixIcon,
    this.fillColor,
    this.maxlines,
    this.maxLength,
    this.isReadOnly = false,
    this.radius = 8.0,
    this.hasShowPasswordIcon = false,
    this.textAlign = TextAlign.start,
    this.label,
    this.withBorder,
    required this.hintText,
  }) {
    fillColor ?? const Color(0xffF8F8F8);
    textStyle ?? const TextStyle(color: AppColors.blackColor);
    hintTextStyle ?? const TextStyle(color: AppColors.textDarkGreyColor);
  }
  late String? label;
  late TextEditingController? controller;
  late String? Function(String? value)? validator;
  late Function(String? value)? onSubmit;
  late Function(String? value)? onChange;
  late Function? onTapWhileTextFieldIsEnabled;
  late Function? onPress;
  late Widget? suffixIcon, prefixIcon;
  late FocusNode? focusNode;
  late TextStyle? textStyle, hintTextStyle;
  late TextInputType? keyboardType;
  late Color? fillColor;
  final bool hasShowPasswordIcon;
  final bool isReadOnly;
  final String hintText;
  final int? maxlines, maxLength;
  final double? radius;
  final TextAlign textAlign;
  final bool? withBorder;
  Color? borderColor;
  final List<TextInputFormatter> inputFormatters;
  @override
  State<TextFieldComponent> createState() => _TextFieldComponentState();
}

class _TextFieldComponentState extends State<TextFieldComponent> {
  late bool changeObsecureStatus;

  @override
  void initState() {
    super.initState();
    if (widget.isReadOnly) {
      widget.fillColor = const Color(0xffF4F4F4);
      widget.borderColor = const Color(0xffF4F4F4);
    }
    changeObsecureStatus = widget.hasShowPasswordIcon;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        if (widget.onPress != null) {
          widget.onPress!();
        }
      },
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(
            widget.withBorder != null ? 14 : 0,
          ),
          boxShadow: [
            if (widget.withBorder != null)
              BoxShadow(
                color: Colors.black.withOpacity(.2),
                blurRadius: 4,
                spreadRadius: -2,
              ),
          ],
        ),
        // height: 56.h,
        child: TextFormField(
          readOnly: widget.isReadOnly,
          inputFormatters: widget.inputFormatters,
          focusNode: widget.focusNode,
          textAlign: widget.textAlign,
          keyboardType: widget.keyboardType,
          maxLines: widget.maxlines ?? 1,
          maxLength: widget.maxLength,
          controller: widget.controller,
          validator: widget.validator,
          buildCounter: (widget.maxLength == null)
              ? null
              : (context, {currentLength = 1, maxLength, isFocused = false}) {
                  return Text(
                    '$currentLength/$maxLength',
                    style: const TextStyle(color: AppColors.primaryColor),
                  );
                },
          autovalidateMode: AutovalidateMode.onUserInteraction,
          onTap: () {
            if (widget.onTapWhileTextFieldIsEnabled != null) {
              widget.onTapWhileTextFieldIsEnabled!();
            }
          },
          onFieldSubmitted: (value) {
            if (widget.onSubmit != null) {
              widget.onSubmit!(value);
            }
          },
          onChanged: (value) {
            if (widget.onChange != null) {
              widget.onChange!(value);
            }
          },
          obscureText: changeObsecureStatus,
          obscuringCharacter: '*',
          style: widget.textStyle,
          decoration: InputDecoration(
            labelStyle: Theme.of(context).inputDecorationTheme.labelStyle,
            labelText: widget.label?.isNotEmpty == true
                ? widget.label
                : null, // Null check for label

            // label: widget.label!.isEmpty ? null : Text(widget.label!),
            enabled: !(widget.onPress != null),

            suffixIcon: widget.suffixIcon ??
                (widget.hasShowPasswordIcon
                    ? IconButton(
                        onPressed: () {
                          setState(() {
                            changeObsecureStatus = !changeObsecureStatus;
                          });
                        },
                        icon: SvgPicture.asset(
                          changeObsecureStatus
                              ? AppImages.eyeOff
                              : AppImages.eyeOn,
                          height: changeObsecureStatus ? 30 : 20,
                          width: 30,
                          // fit: changeObsecureStatus
                          //     ? BoxFit.contain
                          //     : BoxFit.scaleDown,
                          colorFilter: const ColorFilter.mode(
                            AppColors.primaryColor,
                            BlendMode.srcIn,
                          ),
                        ),
                      )
                    : null),
            contentPadding: const EdgeInsets.all(8),
            enabledBorder: widget.withBorder != null
                ? InputBorder.none
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(widget.radius ?? 14),
                    borderSide: BorderSide(
                      color: widget.borderColor ?? Colors.grey,
                    )),
            border: widget.withBorder != null
                ? InputBorder.none
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: BorderSide(
                      color: widget.borderColor ?? Colors.grey,
                    )),
            focusedBorder: widget.withBorder != null
                ? InputBorder.none
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide:
                        BorderSide(color: widget.borderColor ?? Colors.grey)),
            disabledBorder: widget.withBorder != null
                ? InputBorder.none
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide:
                        BorderSide(color: widget.borderColor ?? Colors.grey)),
            errorBorder: widget.withBorder != null
                ? InputBorder.none
                : OutlineInputBorder(
                    borderRadius: BorderRadius.circular(14),
                    borderSide: const BorderSide(color: Colors.red)),
            // disabledBorder: const OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.grey,
            //   ),
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(8.0),
            //   ),
            // ),
            // enabledBorder: const OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.grey,
            //   ),
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(8.0),
            //   ),
            // ),
            // focusedBorder: const OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.grey,
            //   ),
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(8.0),
            //   ),
            // ),
            // border: const OutlineInputBorder(
            //   borderSide: BorderSide(
            //     color: Colors.grey,
            //   ),
            //   borderRadius: BorderRadius.all(
            //     Radius.circular(8.0),
            //   ),
            // ),
            prefixIcon: widget.prefixIcon,
            filled: widget.fillColor != null,
            fillColor: widget.fillColor,
            hintText: widget.hintText,
            hintStyle: widget.hintTextStyle ??
                const TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: 15,
                    color: Color(0xffB0B0B0)),
          ),
        ),
      ),
    );
  }
}
