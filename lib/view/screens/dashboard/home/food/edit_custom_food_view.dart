import 'package:flextras/flextras.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sweetlifesaver/data/remote/food/model/update_food_res.dart';
import 'package:sweetlifesaver/utils/utils.dart';
import 'package:sweetlifesaver/view/component/help_Icon/helpicon.dart';
import 'package:sweetlifesaver/view/screens/dashboard/home/home_view_model.dart';

class EditCustomFoodView extends ConsumerStatefulWidget {
  final UpdateFoodReq updateFoodReq;
  final String id;
  const EditCustomFoodView({
    super.key,
    required this.updateFoodReq,
    required this.id,
  });

  @override
  ConsumerState<EditCustomFoodView> createState() => _EditCustomFoodViewState();
}

class _EditCustomFoodViewState extends ConsumerState<EditCustomFoodView>
    with BaseScreenView {
  final FocusNode _foodNameFocusNode = FocusNode();
  final TextEditingController _foodNameController = TextEditingController();
  final TextEditingController _servingSizeController = TextEditingController();
  final TextEditingController _servingTypeController = TextEditingController();
  final TextEditingController _caloriesController = TextEditingController();
  final TextEditingController _carbohydratesController =
      TextEditingController();
  final TextEditingController _proteinController = TextEditingController();
  final TextEditingController _fatController = TextEditingController();

  @override
  void initState() {
    _foodNameController.text = widget.updateFoodReq.foodName ?? "";
    _servingSizeController.text = widget.updateFoodReq.servingSize ?? "";
    _servingTypeController.text = widget.updateFoodReq.servingType ?? "";
    _caloriesController.text =
        (widget.updateFoodReq.calories ?? 0.0).toString();
    _carbohydratesController.text =
        (widget.updateFoodReq.carbohydrate ?? 0.0).toString();
    _proteinController.text = (widget.updateFoodReq.protein ?? 0.0).toString();
    _fatController.text = (widget.updateFoodReq.fat ?? 0.0).toString();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kWhite,
      appBar: AppBar(
        backgroundColor: kWhite,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () {
            context.pop();
          },
        ),
        actions: [
          TextButton(
            onPressed: () {
              if (_foodNameController.text.isEmpty ||
                  _servingSizeController.text.isEmpty ||
                  _servingTypeController.text.isEmpty ||
                  _caloriesController.text.isEmpty ||
                  _carbohydratesController.text.isEmpty ||
                  _proteinController.text.isEmpty ||
                  _fatController.text.isEmpty) {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(
                    content: Text(
                      'Please fill all the fields',
                      style: TextStyle(
                        color: kWhite,
                        fontSize: 14.sp,
                      ),
                    ),
                  ),
                );
                return;
              }

              ref.watch(homeViewModelProvider).updateFood(
                    context,
                    UpdateFoodReq(
                      foodName: _foodNameController.text,
                      servingSize: _servingSizeController.text,
                      servingType: _servingTypeController.text,
                      calories: double.parse(_caloriesController.text),
                      carbohydrate: double.parse(_carbohydratesController.text),
                      protein: double.parse(_proteinController.text),
                      fat: double.parse(_fatController.text),
                      mealType: widget.updateFoodReq.mealType,
                    ),
                    widget.id,
                  );
            },
            child: Text(
              'Save',
              style: TextStyle(color: primaryColor, fontSize: 14.sp),
            ),
          ),
        ],
      ),
      body: SingleChildScrollView(
        child: PaddedColumn(
          padding: EdgeInsets.symmetric(horizontal: 16.w),
          children: [
            ListTile(
              visualDensity: VisualDensity.compact,
              splashColor: Colors.transparent,
              dense: true,
              contentPadding: EdgeInsets.zero,
              title: Text(
                'Create Custom Food',
                style: TextStyle(
                  color: richBalck,
                  fontSize: 18.sp,
                  fontWeight: FontWeight.w600,
                ),
              ),
              trailing: InkWell(
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
                onTap: () {
                  HapticFeedback.lightImpact();
                },
                child: const HelpIcon(
                    color: primaryColor, iconName: HelpIconName.healthGoal,),
              ),
            ),
            gapH16,
            TextFormField(
              controller: _foodNameController,
              autofocus: true,
              focusNode: _foodNameFocusNode,
              keyboardType: TextInputType.text,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                fillColor: const Color.fromRGBO(248, 248, 248, 1),
                filled: true,
                labelText: 'Food Name*',
                labelStyle: TextStyle(
                  color: darkGrey,
                  fontSize: 13.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
            ),
            gapH16,
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _servingSizeController,
                    keyboardType: TextInputType.number,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: kGrey.withOpacity(0.1),
                      filled: true,
                      labelText: 'Serving Size*',
                      hintText: "1, 2, 3...",
                      labelStyle: TextStyle(
                        color: darkGrey,
                        fontSize: 12.5.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        borderSide: const BorderSide(
                          color: stroke,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        borderSide: const BorderSide(
                          color: stroke,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                ),
                gapW5,
                Expanded(
                  flex: 2,
                  child: TextFormField(
                    controller: _servingTypeController,
                    keyboardType: TextInputType.text,
                    textInputAction: TextInputAction.next,
                    decoration: InputDecoration(
                      fillColor: kGrey.withOpacity(0.1),
                      filled: true,
                      labelText: 'Serving Type*',
                      hintText: "Cup, Slice, Tea spoon, Piec...",
                      labelStyle: TextStyle(
                        color: darkGrey,
                        fontSize: 13.sp,
                      ),
                      enabledBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        borderSide: const BorderSide(
                          color: stroke,
                        ),
                      ),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(4.w),
                        borderSide: const BorderSide(
                          color: stroke,
                        ),
                      ),
                      contentPadding: EdgeInsets.symmetric(
                        horizontal: 16.w,
                        vertical: 12.h,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            gapH16,
            TextFormField(
              controller: _caloriesController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffix: Text(
                  'Kcal',
                  style: TextStyle(
                    color: richBalck,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                fillColor: kGrey.withOpacity(0.1),
                filled: true,
                hintText: '0',
                labelText: 'Calories*',
                labelStyle: TextStyle(
                  color: darkGrey,
                  fontSize: 13.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
            ),
            gapH16,
            TextFormField(
              controller: _carbohydratesController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffix: Text(
                  'Grams',
                  style: TextStyle(
                    color: richBalck,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                fillColor: kGrey.withOpacity(0.1),
                filled: true,
                hintText: '0',
                labelText: 'Carbohydrates*',
                labelStyle: TextStyle(
                  color: darkGrey,
                  fontSize: 13.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
            ),
            gapH16,
            TextFormField(
              controller: _proteinController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.next,
              decoration: InputDecoration(
                suffix: Text(
                  'Grams',
                  style: TextStyle(
                    color: richBalck,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                fillColor: kGrey.withOpacity(0.1),
                filled: true,
                hintText: '0',
                labelText: 'Protein*',
                labelStyle: TextStyle(
                  color: darkGrey,
                  fontSize: 13.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
            ),
            gapH16,
            TextFormField(
              controller: _fatController,
              keyboardType: TextInputType.number,
              textInputAction: TextInputAction.done,
              decoration: InputDecoration(
                suffix: Text(
                  'Grams',
                  style: TextStyle(
                    color: richBalck,
                    fontSize: 13.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                fillColor: kGrey.withOpacity(0.1),
                hintText: '0',
                filled: true,
                labelText: 'Fat*',
                labelStyle: TextStyle(
                  color: darkGrey,
                  fontSize: 13.sp,
                ),
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                focusedBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(4.w),
                  borderSide: const BorderSide(
                    color: stroke,
                  ),
                ),
                contentPadding: EdgeInsets.symmetric(
                  horizontal: 16.w,
                  vertical: 12.h,
                ),
              ),
            ),
            gapH16,
            // ListTile(
            //   visualDensity: VisualDensity.compact,
            //   splashColor: Colors.transparent,
            //   dense: true,
            //   contentPadding: EdgeInsets.zero,
            //   title: Text(
            //     'Search and add Ingredients',
            //     style: TextStyle(
            //       color: richBalck,
            //       fontSize: 18.sp,
            //       fontWeight: FontWeight.w600,
            //     ),
            //   ),
            // ),
            // gapH8,
            // FoodDetailsTile(
            //   tittle: "2% Reduced Fat Ultra-Filtered Milk",
            //   subtitle: "1 Cup, 105 Cal, 16g Carbs, 2g Protein, 1g Fat",
            //   imageUrl: "https://i.imgur.com/BIFG5U1.png",
            //   description: "120 Cal, 6g Carbs, 13g Protein, 5g Fat",
            //   onRemove: () {
            //     HapticFeedback.mediumImpact();
            //   },
            // ),
            // gapH20,
            // TextFormField(
            //   keyboardType: TextInputType.text,
            //   textInputAction: TextInputAction.search,
            //   decoration: InputDecoration(
            //     fillColor: kGrey.withOpacity(0.1),
            //     filled: true,
            //     prefixIcon: const Icon(
            //       Icons.search,
            //       color: kGrey,
            //     ),
            //     hintText: 'Search for food item',
            //     hintStyle: TextStyle(
            //       color: kGrey,
            //       fontSize: 14.sp,
            //     ),
            //     enabledBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.w),
            //       borderSide: const BorderSide(
            //         color: stroke,
            //       ),
            //     ),
            //     focusedBorder: OutlineInputBorder(
            //       borderRadius: BorderRadius.circular(8.w),
            //       borderSide: const BorderSide(
            //         color: stroke,
            //       ),
            //     ),
            //     contentPadding: EdgeInsets.symmetric(
            //       horizontal: 16.w,
            //       vertical: 12.h,
            //     ),
            //   ),
            // ),
            // gapH20,
            // Visibility(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Your consumption history',
            //         style: TextStyle(
            //           color: richBalck,
            //           fontSize: 14.sp,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       gapH6,
            //       ...List.generate(
            //         3,
            //         (index) => FoodTile(
            //           onTap: () {},
            //           tittle: '2% Reduced Fat Ultra-Filtered Milk, Fairlife',
            //           subtitle:
            //               '1 Cup, 120 Cal, 6g Carbs, 13g Protein, 5g Fat',
            //           imageUrl: 'https://i.imgur.com/QcXrUyP.png',
            //         ),
            //       ),
            //       gapH6,
            //     ],
            //   ),
            // ),
            // gapH10,
            // Visibility(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Commonly tracked foods ',
            //         style: TextStyle(
            //           color: richBalck,
            //           fontSize: 14.sp,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       gapH6,
            //       ...List.generate(
            //         3,
            //         (index) => FoodTile(
            //           onTap: () {},
            //           tittle: 'Soy Milk',
            //           subtitle:
            //               '1 Cup (8 fl oz), 100 Cal, 8g Carbs, 7g Protein, 4g Fat',
            //           imageUrl: 'https://i.imgur.com/QcXrUyP.png',
            //         ),
            //       ),
            //       gapH6,
            //     ],
            //   ),
            // ),
            // gapH10,
            // Visibility(
            //   child: Column(
            //     crossAxisAlignment: CrossAxisAlignment.start,
            //     children: [
            //       Text(
            //         'Branded foods',
            //         style: TextStyle(
            //           color: richBalck,
            //           fontSize: 14.sp,
            //           fontWeight: FontWeight.w600,
            //         ),
            //       ),
            //       gapH6,
            //       ...List.generate(
            //         3,
            //         (index) => FoodTile(
            //           onTap: () {},
            //           tittle: 'Milk, 2% Reduced Fat, Lactose Free, Lactaid',
            //           subtitle:
            //               '1 Cup, 130 Cal, 13g Carbs, 8g Protein, 5g Fat',
            //           imageUrl: 'https://i.imgur.com/QcXrUyP.png',
            //         ),
            //       ),
            //       gapH6,
            //     ],
            //   ),
            // ),
          ],
        ),
      ),
    );
  }

  @override
  void navigateToScreen(AppRoute appRoute, {Map<String, String>? params}) {
    context.goNamed(appRoute.name);
  }

  @override
  void showSnackbar(String message, {Color? color}) {
    // implement showSnackbar
  }
}
