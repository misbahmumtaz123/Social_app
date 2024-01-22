import 'package:flutter/material.dart';
import '../Config/assets.dart';
import '../Config/strings.dart';
final List<Setting> settingdata =[
 Setting(AppStrings.email),
  Setting(AppStrings.Instagram),
  Setting(AppStrings.Twitter),
  Setting(AppStrings.Website),
  Setting(AppStrings.Paypal),
  Setting(AppStrings.Abouticvliv),
  Setting(AppStrings.Terms),

];
class Setting{
  final String Text;
  Setting(this.Text);
}