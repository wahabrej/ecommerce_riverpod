
import 'package:ecommerce_riverpod/constant/themes.dart';
import 'package:flutter/material.dart';
import 'package:gap/gap.dart';

class banner_section extends StatelessWidget {
  const banner_section({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(top: 30),
      height: 180,
      width: MediaQuery.of(context).size.width * 0.94,
      decoration: BoxDecoration(
        color: kPrimaryColor,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          Expanded(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Apple Store",
                    style: TextStyle(color: kWhiteColor, fontSize: 20),
                  ),
                  const Gap(5),
                  const Text(
                      "Find the Apple product and accessories you're looking for",style: TextStyle(color:Colors.white,fontSize: 11),),
                      Gap(5),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                        backgroundColor: kWhiteColor,
                        shape: RoundedRectangleBorder()),
                    onPressed: () {},
                    child: const Text("Shop New Year"),
                  ),
                ],
              ),
            ),
          ),
          Container(
            child: Image.asset('assets/g/phone.png'),
          ),
        ],
      ),
    );
  }
}
