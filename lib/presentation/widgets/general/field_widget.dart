import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:medhub_application/presentation/utils/color.dart';

class LoginFieldWidgets extends StatefulWidget {
  final String label;
  final String? leadingIcon;
  final IconData? trailingIcon;
  final TextButton? trailingText;
  final TextEditingController controller;
  final TextInputType keyboardType;
  final bool obscureText;
  final List<TextInputFormatter>? inputFormatters;

  const LoginFieldWidgets({
    required this.label,
    this.leadingIcon,
    this.trailingIcon,
    this.trailingText,
    required this.controller,
    this.keyboardType = TextInputType.text,
    this.obscureText = false,
    this.inputFormatters,
    Key? key,
  }) : super(key: key);

  @override
  State<LoginFieldWidgets> createState() => _LoginFieldWidgetsState();
}

class _LoginFieldWidgetsState extends State<LoginFieldWidgets> {
  late bool _obscureText;

  @override
  void initState() {
    super.initState();
    _obscureText = widget.obscureText;
  }

  void _toggleObscureText() {
    setState(() {
      _obscureText = !_obscureText;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 4.0),
      child: TextField(
        controller: widget.controller,
        obscureText: widget.obscureText ? _obscureText : false,
        keyboardType: widget.keyboardType,
        inputFormatters: widget.inputFormatters,
        decoration: InputDecoration(
          prefixIcon: widget.leadingIcon != null
              ? Padding(
                  padding: EdgeInsets.only(right: 20.r),
                  child: SvgPicture.asset(
                    widget.leadingIcon!,
                    width: 24, // Adjust size if needed
                    height: 24,
                  ),
                )
              : null,
          labelText: widget.label,
          labelStyle: TextStyle(
            fontFamily: 'Overpass',
            color: textColor, 
            fontSize: 15.sp
          ),
          suffixIcon: widget.trailingIcon != null
              ? IconButton(
                  icon: Icon(
                    widget.trailingIcon,
                    color: textColor, 
                  ),
                  onPressed: _toggleObscureText,
                )
              : widget.trailingText != null
                  ? Padding(
                    padding: EdgeInsets.only(left: 20.r),
                    child: widget.trailingText!,
                  )
                  : null,
                   border: const UnderlineInputBorder(),
        ),
      ),
    );
  }
}
