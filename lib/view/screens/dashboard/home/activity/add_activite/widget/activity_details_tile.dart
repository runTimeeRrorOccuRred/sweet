// ignore_for_file: avoid_bool_literals_in_conditional_expressions

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class ActivityDetailsTile extends StatefulWidget {
  final String tittle;
  final String subtitle;
  final String imageUrl;
  final void Function() onRemove;
  final String duration;
  final String calorie;
  final String type;
  final Function(String value)? durationTap;
  final Function(String value)? calorieTap;

  const ActivityDetailsTile({
    super.key,
    required this.tittle,
    required this.subtitle,
    required this.imageUrl,
    required this.onRemove,
    this.durationTap,
    this.calorieTap,
    required this.duration,
    required this.calorie,
    required this.type,
  });

  @override
  State<ActivityDetailsTile> createState() => _ActivityDetailsTileState();
}

class _ActivityDetailsTileState extends State<ActivityDetailsTile> {
  TextEditingController durationTapController = TextEditingController();
  TextEditingController calorieTapController = TextEditingController();
  FocusNode durationFocusNode = FocusNode();
  FocusNode calorieFocusNode = FocusNode();
  bool isDurationEditable = false;
  bool isCalorieEditable = false;

  @override
  void initState() {
    durationTapController.text = widget.duration;
    calorieTapController.text = widget.calorie;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      decoration: BoxDecoration(
        color: const Color.fromRGBO(248, 248, 248, 1),
        borderRadius: BorderRadius.circular(8.w),
        boxShadow: [
          BoxShadow(
            color: const Color(0xFF000000).withOpacity(0.08),
            blurRadius: 5.r,
            offset: const Offset(0, 5),
          ),
        ],
      ),
      child: PaddedColumn(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ListTile(
            dense: true,
            visualDensity: VisualDensity.compact,
            contentPadding: EdgeInsets.only(left: 2.w),
            leading: CachedNetworkImage(
              imageUrl: widget.imageUrl,
              height: 22.h,
              placeholder: (context, url) => const CircularProgressIndicator(),
              errorWidget: (context, url, error) => const Icon(Icons.error),
            ),
            title: Text(
              widget.tittle,
              style: TextStyle(
                color: richBalck,
                fontSize: 12.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            subtitle: Text(
              widget.subtitle,
              style: TextStyle(
                color: darkGrey,
                fontSize: 10.sp,
                fontWeight: FontWeight.w400,
              ),
            ),
            trailing: InkWell(
              onTap: () {
                durationFocusNode.unfocus();
                calorieFocusNode.unfocus();
                widget.onRemove();
              },
              child: const Icon(
                Icons.close,
                color: richBalck,
              ),
            ),
          ),
          gapH6,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Time Spent (Minutes)',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  gapH6,
                  GestureDetector(
                    onTap: () {
                      widget.type == 'custom'
                          ? isDurationEditable = false
                          : isDurationEditable = true;
                      setState(() {});
                    },
                    child: Container(
                      width: 50.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.w),
                        border: Border.all(
                          color: stroke,
                        ),
                      ),
                      child: isDurationEditable
                          ? Align(
                              child: EditableText(
                                autofocus: true,
                                onChanged: (value) {
                                  isDurationEditable = true;
                                  setState(() {});
                                },
                                textAlign: TextAlign.center,
                                onTapOutside: (event) {
                                  isDurationEditable = false;
                                  durationTapController.text = widget.duration;
                                  durationFocusNode.unfocus();
                                  setState(() {});
                                },
                                controller: durationTapController,
                                keyboardType: TextInputType.number,
                                inputFormatters: [
                                  FilteringTextInputFormatter.digitsOnly,
                                ],
                                focusNode: durationFocusNode,
                                style: TextStyle(
                                  color: richBalck,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SourceSansPro',
                                ),
                                cursorColor: kBlack,
                                backgroundCursorColor: Colors.transparent,
                                onSubmitted: (value) {
                                  isDurationEditable = false;
                                  widget.durationTap!(value);
                                  setState(() {});
                                },
                              ),
                            )
                          : Center(
                              child: Text(
                                widget.duration,
                                style: TextStyle(
                                  color: richBalck,
                                  fontSize: 12.sp,
                                  fontWeight: FontWeight.w400,
                                  fontFamily: 'SourceSansPro',
                                ),
                              ),
                            ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Calories Burned (Cal)',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  gapH6,
                  GestureDetector(
                    onTap: () {
                      widget.type == 'custom'
                          ? isCalorieEditable = false
                          : isCalorieEditable = true;
                      setState(() {});
                    },
                    child: Container(
                      width: 140.w,
                      height: 25.h,
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(4.w),
                        border: Border.all(
                          color: stroke,
                        ),
                      ),
                      child:
                          //  widget.type == 'custom'
                          //     ? isCalorieEditable
                          //         ? Align(
                          //             child: EditableText(
                          //               autofocus: true,
                          //               textAlign: TextAlign.center,
                          //               onTapOutside: (event) {
                          //                 calorieTapController.text =
                          //                     widget.calorie;
                          //                 isCalorieEditable = false;
                          //                 calorieFocusNode.unfocus();
                          //                 setState(() {});
                          //               },
                          //               controller: calorieTapController,
                          //               keyboardType: TextInputType.number,
                          //               focusNode: calorieFocusNode,
                          //               style: TextStyle(
                          //                 color: richBalck,
                          //                 fontSize: 12.sp,
                          //                 fontWeight: FontWeight.w400,
                          //                 fontFamily: 'SourceSansPro',
                          //               ),
                          //               textScaleFactor: 1,
                          //               cursorColor: kBlack,
                          //               backgroundCursorColor: Colors.transparent,
                          //               onSubmitted: (value) {
                          //                 isCalorieEditable = false;
                          //                 widget.calorieTap!(value);
                          //                 setState(() {});
                          //               },
                          //             ),
                          //           )
                          //         :
                          //         Center(
                          //             child: Text(
                          //               widget.calorie,
                          //               style: TextStyle(
                          //                 color: richBalck,
                          //                 fontSize: 12.sp,
                          //                 fontWeight: FontWeight.w400,
                          //                 fontFamily: 'SourceSansPro',
                          //               ),
                          //               textScaleFactor: 1,
                          //             ),
                          //           )
                          //     :
                          Center(
                        child: Text(
                          widget.calorie,
                          style: TextStyle(
                            color: richBalck,
                            fontSize: 12.sp,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
          gapH12,
        ],
      ),
    );
  }
}
