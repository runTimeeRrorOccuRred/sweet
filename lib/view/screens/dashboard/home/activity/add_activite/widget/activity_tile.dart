import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_slidable/flutter_slidable.dart';
import 'package:sweetlifesaver/data/remote/food/model/activity/update_activity_res.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/activity/update_activity/update_activity_view.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class ActivityTile extends ConsumerWidget {
  final String tittle;
  final String id;
  final String subtitle;
  final String imageUrl;
  final UpdateActivityReq updateActivityReq;
  final String activityTypeName;

  final void Function()? onTap;
  const ActivityTile({
    super.key,
    required this.tittle,
    required this.subtitle,
    required this.imageUrl,
    this.onTap,
    required this.id,
    required this.updateActivityReq,
    required this.activityTypeName,
  });
  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Column(
      children: [
        Slidable(
          key: const ValueKey(0),
          endActionPane: ActionPane(
            motion: const StretchMotion(),
            children: [
              SlidableAction(
                spacing: 2,
                onPressed: (context) {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => UpdateActivityView(
                        id,
                        UpdateActivityReq(
                          activityName: updateActivityReq.activityName,
                          activityType: updateActivityReq.activityType,
                          duration: updateActivityReq.duration,
                          calories: updateActivityReq.calories,
                          types: updateActivityReq.types,
                          me: updateActivityReq.me,
                          level: updateActivityReq.level,
                          userId: updateActivityReq.userId,
                        ),
                        activityTypeName,
                      ),
                    ),
                  );
                },
                backgroundColor: flashWhite,
                foregroundColor: kGreen,
                icon: Icons.edit,
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(12.r),
                  bottomLeft: Radius.circular(12.r),
                ),
              ),
              SlidableAction(
                onPressed: (context) {
                  iosDialogeboxActivity(
                    context,
                    id,
                    ref.read(homeViewModelProvider),
                  );
                },
                backgroundColor: flashWhite,
                foregroundColor: Colors.red,
                icon: Icons.delete,
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(12.r),
                  bottomRight: Radius.circular(12.r),
                ),
              ),
            ],
          ),
          child: ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.only(left: 2.w),
            leading: CachedNetworkImage(
              imageUrl: imageUrl,
              // 'https://i.imgur.com/BIFG5U1.png',
              height: 22.h,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            title: Text(
              tittle,
              style: TextStyle(
                color: richBalck,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              subtitle,
              style: TextStyle(
                color: darkGrey,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
          ),
        ),
        const Divider(
          color: stroke,
          thickness: 0.8,
        ),
      ],
    );
  }
}

Future<dynamic> iosDialogeboxActivity(
  BuildContext context,
  String id,
  HomeViewModel homeViewModel,
) {
  return showCupertinoDialog(
    context: context,
    barrierDismissible: false,
    builder: (BuildContext context) => CupertinoAlertDialog(
      title: const Text(
        "Are you sure you want to delete this Activity?",
        textScaleFactor: 1,
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      content: const Text(
        "This action cannot be undone.",
        textScaleFactor: 1,
        style: TextStyle(fontWeight: FontWeight.normal),
      ),
      actions: [
        CupertinoDialogAction(
          child: const Text(
            "OK",
            style: TextStyle(
              color: primaryColor,
              fontWeight: FontWeight.normal,
            ),
          ),
          onPressed: () {
            Navigator.of(context).pop();
            homeViewModel.deleteActivity(context, id);
          },
        ),
        CupertinoDialogAction(
          child: const Text(
            "Cancel",
            style: TextStyle(fontWeight: FontWeight.normal),
          ),
          onPressed: () {
            Navigator.of(context).pop();
          },
        ),
      ],
    ),
  );
}
