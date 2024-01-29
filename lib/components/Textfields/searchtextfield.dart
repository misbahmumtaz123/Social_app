import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../../config/assets.dart';
import '../../../config/colors.dart';
import '../../../config/strings.dart';
import '../../../config/style.dart';

class SearchTextField extends StatelessWidget {
  final ValueChanged<String> onChanged;

  const SearchTextField({Key? key, required this.onChanged}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        left: 8.0, top: 14.0, right: 8.0, bottom: 14.0,
      ),
      child: TextFormField(
        decoration: InputDecoration(
          hintText: AppStrings.Search,
          hintStyle: fw400size16txtintxtfld,
          fillColor: AppColors.txtfldclr,
          filled: true,
          contentPadding: EdgeInsets.symmetric(vertical: 8.0, horizontal: 14.0),
          constraints: BoxConstraints(
            maxWidth: 283.0,
            maxHeight: 42.0,
          ),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(30.0),
            borderSide: BorderSide.none,
          ),
          prefixIcon: Padding(
            padding: EdgeInsets.all(8.0),
            child: SvgPicture.asset(
              SvgAssets.search,
              width: 24.0,
              height: 24.0,
            ),
          ),
        ),
        onChanged: onChanged,
      ),
    );
  }
}
