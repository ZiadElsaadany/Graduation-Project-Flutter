import 'package:aoun_tu/core/utls/colors.dart';
import 'package:flutter/material.dart';
import 'package:aoun_tu/core/utls/styles.dart';
import 'package:aoun_tu/core/utls/text.dart';
import 'package:aoun_tu/features/gift_donation/presentation/view/widget/category_details_header.dart';

class GiftCategoryDetailsViewBody extends StatelessWidget {
  GiftCategoryDetailsViewBody({Key? key}) : super(key: key);
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 22),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          const CategoryDetailsHeader(),
          Column(children: [
            const SizedBox(
              height: 25,
            ),
            Text(
              AppText.determinateTheGiftValue,
              style: AppStyles.textStyle20,
            ),
            const SizedBox(
              height: 25,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Text(
                    '200',
                    style: AppStyles.textStyle17,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Text(
                    '200',
                    style: AppStyles.textStyle17,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Text(
                    '200',
                    style: AppStyles.textStyle17,
                  ),
                ),
                Container(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 17, vertical: 20),
                  decoration: BoxDecoration(
                      color: Colors.transparent,
                      borderRadius: BorderRadius.circular(12),
                      border: Border.all(color: Colors.deepPurple)),
                  child: Text(
                    '200',
                    style: AppStyles.textStyle17,
                  ),
                ),
              ],
            ),
            SizedBox(
              height: MediaQuery.of(context).size.height * 0.06,
            ),
            Form(
              key: _formKey,
              child: TextFormField(
                cursorColor: Colors.deepPurple,
                decoration: InputDecoration(
                  suffixIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 17,vertical: 14),
                    child: Text(AppText.lE,style: AppStyles.textStyle14.copyWith(color: AppColors.grey),)
                  ),
                  focusedBorder: outLineInputBorder(),
                  enabledBorder: outLineInputBorder(),
                  hintText: AppText.addAnotherAmount,
                  hintStyle:
                      AppStyles.textStyle14.copyWith(color: AppColors.grey),
                ),

              ),
            ),
          ])
        ],
      ),
    );
  }
  OutlineInputBorder outLineInputBorder(){
   return OutlineInputBorder(
      borderRadius: BorderRadius.circular(12),
      borderSide: const BorderSide(
        color: Colors.deepPurple,
      ),
    );
  }
}

