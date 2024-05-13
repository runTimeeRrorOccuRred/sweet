import 'package:cached_network_image/cached_network_image.dart';
import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:sweetlifesaver/utils/utils.dart';

class FoodDetailsTile extends StatefulWidget {
  final String tittle;
  final String subtitle;
  final String imageUrl;
  final String description;
  final void Function() onRemove;
  final String inqty;
  final String inunit;
  final Function(String value) qty;
  final Function(String value) unit;

  const FoodDetailsTile({
    super.key,
    required this.tittle,
    required this.subtitle,
    required this.imageUrl,
    required this.description,
    required this.onRemove,
    required this.qty,
    required this.unit,
    required this.inqty,
    required this.inunit,
  });

  @override
  State<FoodDetailsTile> createState() => _FoodDetailsTileState();
}

class _FoodDetailsTileState extends State<FoodDetailsTile> {
  TextEditingController qtyController = TextEditingController();
  TextEditingController unitController = TextEditingController();

  @override
  void initState() {
    qtyController.text = widget.inqty;
    unitController.text = widget.inunit;
    setState(() {});
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
              onTap: widget.onRemove,
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
                    'Qty',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  gapH6,
                  Container(
                    width: 35.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4.w),
                      border: Border.all(
                        color: stroke,
                      ),
                    ),
                    child: TextField(
                      cursorHeight: 20.sp,
                      keyboardType: TextInputType.number,
                      textAlign: TextAlign.center,
                      controller: qtyController,
                      onChanged: widget.qty,
                      decoration: const InputDecoration(
                        border: InputBorder.none,
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                      ),
                      style: TextStyle(
                        color: richBalck,
                        fontSize: 12.sp,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                ],
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Unit of Measurement',
                    style: TextStyle(
                      color: richBalck,
                      fontSize: 12.sp,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  gapH6,
                  Container(
                    width: 140.w,
                    height: 25.h,
                    decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(4.w),
                      border: Border.all(
                        color: stroke,
                      ),
                    ),
                    child: Row(
                      children: [
                        Expanded(
                          child: TextField(
                            cursorHeight: 20.sp,
                            textAlign: TextAlign.center,
                            controller: unitController,
                            onChanged: widget.unit,
                            decoration: const InputDecoration(
                              border: InputBorder.none,
                              enabledBorder: InputBorder.none,
                              focusedBorder: InputBorder.none,
                            ),
                            style: TextStyle(
                              color: richBalck,
                              fontSize: 12.sp,
                              fontWeight: FontWeight.w400,
                            ),
                          ),
                        ),
                        // Text(
                        //   'Cup',
                        //   style: TextStyle(
                        //     color: richBalck,
                        //     fontSize: 12.sp,
                        //     fontWeight: FontWeight.w400,
                        //   ),
                        // ),
                        // const Spacer(),
                        // const Icon(
                        //   Icons.arrow_drop_down,
                        //   color: richBalck,
                        // ),
                      ],
                    ),
                  ),
                ],
              ),
            ],
          ),
          gapH12,
          Text(
            widget.description,
            style: TextStyle(
              color: darkGrey,
              fontSize: 10.sp,
              fontWeight: FontWeight.w300,
            ),
          ),
          gapH10,
        ],
      ),
    );
  }
}
