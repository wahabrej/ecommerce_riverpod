import 'package:ecommerce_riverpod/constant/themes.dart';
import 'package:ecommerce_riverpod/widget/All_categoris.dart';
import 'package:ecommerce_riverpod/widget/ads_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart'; // Import Riverpod
import 'package:flutter_svg/flutter_svg.dart'; // For SVG support
import 'package:badges/badges.dart' as badges;
import 'package:gap/gap.dart'; // Import badges package

// State provider for BottomNavigationBar index
final bottomNavIndexProvider = StateProvider<int>((ref) => 0);
 List category =[
"All",
"Computer",
"Headsets",
"Speaker",
"Mobile",
"Ipad"
"Printing",
"Camera",
"Accessoris"
 ];
class HomePage extends ConsumerWidget { // Use ConsumerWidget to access providers
  const HomePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    // Get the current index from the provider
    int currentIndex = ref.watch(bottomNavIndexProvider);

    return Scaffold(
      appBar: AppBar(
        backgroundColor: kSecondaryColor,
        iconTheme: const IconThemeData(
          color: kWhiteColor, // Set the drawer icon color to white
        ),
        title: Image.asset(
          'assets/g/brand1.png',
          height: 30,
          width: 199,
          fit: BoxFit.contain,
        ),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 8.0),
            child: badges.Badge(
              position: badges.BadgePosition.topEnd(top: 0, end: 3),
              badgeContent: const Text(
                '3',
                style: TextStyle(color: Colors.white, fontSize: 10),
              ),
              child: IconButton(
                icon: const Icon(Icons.shopping_bag, color: kWhiteColor),
                onPressed: () {
                  // Handle shopping bag icon press
                },
              ),
            ),
          ),
        ],
      ),
      drawer: const Drawer(), // Customize your drawer content here
      body: Center(
        child: Column(
          children: [
            banner_section(),
            Gap(20),
            AllCategoris(),
            Gap(20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 19),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [

                  Text("Hot Sales",style: TextStyle(fontSize: 20,color: Colors.black,fontWeight: FontWeight.bold),),
                  Text("See all")
                ],
              ),
            ),
              Gap(20),
              Container(
                height: 300,
                child: ListView.builder(itemCount: 4,scrollDirection: Axis.horizontal,itemBuilder: (context,index){
                  return Container(
                   width: 200,
                    decoration: BoxDecoration(
                      color: Colors.amber,
                      borderRadius: BorderRadius.circular(20),
                      

                    ),
                    margin: EdgeInsets.only(right: 13),
                    child: Container(
                      child: Column(
                        children: [
                         
                 Image.asset('assets/p/watch.jpeg',width: 200,fit: BoxFit.cover,),
                 Container(
                  child: Column(
                   

                  ),
                 )
                          
                        ],
                      ),
                    ),
                  );
                }),
              )

          ],
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.black,
        selectedItemColor: Colors.cyan,
        unselectedItemColor: Colors.white.withOpacity(0.6),
        type: BottomNavigationBarType.fixed,
        currentIndex: currentIndex,
        onTap: (index) {
          // Update the index using Riverpod
          ref.read(bottomNavIndexProvider.notifier).state = index;
        },
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.favorite),
            label: 'Favorite',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag),
            label: 'Cart',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search),
            label: 'Search',
          ),
        ],
      ),
    );
  }
}
