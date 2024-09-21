
import 'package:ecommerce_riverpod/views/home_page.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class AllCategoris extends StatelessWidget {
  const AllCategoris({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(left: 20),
      height: 40,
      child: ListView.builder(itemCount: category.length,scrollDirection: Axis.horizontal,shrinkWrap: true,itemBuilder: (context,index){
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
       decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color:Colors.grey.withOpacity(0.5))
       ),
       margin: EdgeInsets.only(right: 12),
       child: Container(
      child: Row(
        children: [
          Icon(Icons.select_all),
          Gap(4),
          Text(category[index])
        ],
      ),
       ),
      );
      }),
    );
  }
}
