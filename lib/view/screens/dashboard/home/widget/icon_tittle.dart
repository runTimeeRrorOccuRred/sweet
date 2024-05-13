import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';

// ignore: must_be_immutable
class IconTittle extends StatelessWidget {
  final String tittle;
  final HelpIconName intakeSlug;
  final String icon;
  final bool isLast;

   const IconTittle({
    super.key,
    required this.tittle,
    required this.icon,
    required this.isLast, required this.intakeSlug, 
  });

  @override
  Widget build(BuildContext context) {
    
    return isLast == false
        ? ListTile(
            visualDensity: VisualDensity.compact,
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: ImageIcon(
              AssetImage(icon),
              size: 22.sp,
            ),
            title: Text(
              tittle,
              style: TextStyle(
                color: richBalck,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            // leading: Image.asset("assets/icons/home/heath_goal.png"),
          )
        : ListTile(
            visualDensity: VisualDensity.compact,
            splashColor: Colors.transparent,
            dense: true,
            contentPadding: EdgeInsets.zero,
            leading: ImageIcon(
              AssetImage(icon),
              size: 22.sp,
            ),
            title: Text(
              tittle,
              style: TextStyle(
                color: richBalck,
                fontSize: 14.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
            trailing:  HelpIcon(
                
                color: primaryColor, iconName: intakeSlug,
                ),
          );
  }

  HelpIconName findIconName(String intake){
    switch(intake){
        case 'daily-physical-activities':
        return HelpIconName.dailyPhysicalActivities;
        default:
        return HelpIconName.waterIntak;
    }
  }
}
