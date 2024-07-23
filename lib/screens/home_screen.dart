import 'package:auto_size_text/auto_size_text.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:reviewit/data/categories_image.dart';
import 'package:reviewit/data/categories_data.dart';
import 'package:reviewit/data/product_data.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromRGBO(24, 23, 23, 1.0),
      // endDrawer: const Icon(Icons.add,size: 50,),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(24, 23, 23, 1.0),
        automaticallyImplyLeading: false,
        title: const Text(
          'ReviewIT',
          style: TextStyle(color: Colors.white),
        ),
        actions: [
          IconButton(
              onPressed: (){
                showDialog(
                    context: context,
                    builder: (context)=>
                        AlertDialog(
                          title: Text('are you sure you want to logout  ? '),
                          icon: Icon(Icons.logout,size: 30,),
                          actions: [
                            TextButton(
                                onPressed: (){
                                  Navigator.of(context).pop();
                                },
                                child: Text('cancle'),
                            ),
                            TextButton(onPressed: (){
                              Navigator.of(context).pop();
                            }, child: Text('yes'))
                          ],
                        ),
                );
              },
              icon: const Icon(Icons.logout,color: Colors.white,),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 15,
              ),
              CarouselSlider.builder(
                itemCount: images.length,
                itemBuilder: (context, index, realIndex) {
                  return Stack(children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(15),
                      child: Image.network(
                        images[index],
                        fit: BoxFit.cover,
                        width: 500,
                        height: 180,
                      ),
                    ),
                    // Positioned(
                    //   top: 0,
                    //   bottom: 0,
                    //   left: 0,
                    //   right: 0,
                    //   child: Container(
                    //     decoration: BoxDecoration(
                    //       color: Colors.black12,
                    //       borderRadius: BorderRadius.circular(12),
                    //     ),
                    //     child: Center(
                    //       child: Text(
                    //         'categort $index',
                    //         style: const TextStyle(
                    //             fontSize: 26, color: Colors.white),
                    //       ),
                    //     ),
                    //   ),
                    // ),
                  ]);
                },
                options: CarouselOptions(
                    enlargeCenterPage: true,
                    aspectRatio: 1/5,
                    autoPlay: true,
                    height: 160,

                    autoPlayInterval: const Duration(milliseconds: 5000)),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'Categories',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(
                height: 10,
              ),
              SizedBox(
                height: 80,
                width: double.infinity,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: categoryData.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Stack(
                        children: [
                          Container(
                            decoration: BoxDecoration(
                              color: Colors.black,
                              borderRadius: BorderRadius.circular(10),
                              boxShadow: const [
                                BoxShadow(
                                  color: Colors.black54,
                                  offset: Offset(
                                    0.0,
                                    0.0,
                                  ),
                                  blurRadius: 5.0,
                                  // spreadRadius: 1.0,
                                ), //BoxShadow
                                BoxShadow(
                                  color: Colors.white,
                                  offset: Offset(0.0, 0.0),
                                  blurRadius: 0.0,
                                  spreadRadius: 0.0,
                                ), //BoxShadow
                              ],
                            ),
                            height: 80,
                            // width: 100,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(8),
                              child: Image.network(
                                categoryData[index]['img']!,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            right: 0,
                            left: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  gradient: const LinearGradient(
                                      colors: [
                                        Colors.black87,
                                        Colors.transparent
                                      ],
                                      begin: Alignment.bottomCenter,
                                      end: Alignment.topCenter)),
                              height: 40,
                              child: Center(
                                child: AutoSizeText(
                                  categoryData[index]['name']!,
                                  style: const TextStyle(
                                      fontSize: 18, color: Colors.white70),
                                  minFontSize: 16,
                                  overflow: TextOverflow.ellipsis,
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    );
                  },
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                'products you may like',
                style: TextStyle(fontSize: 22, color: Colors.white),
              ),
              const SizedBox(
                height: 15,
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 8.0),
                height: 2000,
                child: Expanded(
                  child: GridView.builder(
                      shrinkWrap: true,
                      physics: const NeverScrollableScrollPhysics(),
                      gridDelegate:
                          const SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisSpacing: 12,
                        crossAxisSpacing: 12,
                        crossAxisCount: 2,
                        mainAxisExtent: 180,
                      ),
                      itemCount: productData.length,
                      itemBuilder: (context, index) {
                        return Stack(children: [
                          ClipRRect(
                            borderRadius: BorderRadius.circular(15),
                            child: Image.network(
                              productData[index]['img']!,
                              fit: BoxFit.cover,
                              width: 300,
                              height: 300,
                            ),
                          ),
                          Positioned(
                            bottom: 0,
                            left: 0,
                            right: 0,
                            child: Container(
                                decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    gradient: const LinearGradient(
                                        colors: [
                                          Colors.black,
                                          Colors.transparent
                                        ],
                                        begin: Alignment.bottomCenter,
                                        end: Alignment.topCenter)),
                                height: 90,
                                width: 300,
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(horizontal: 10),
                                  child: Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      AutoSizeText(
                                        productData[index]['Title']!,
                                        style: TextStyle(
                                            color: Colors.white, fontSize: 18),
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        minFontSize: 18,
                                      ),
                                      // AutoSizeText(
                                      //   productData[index]['subTitle']!,
                                      //   style: TextStyle(color: Colors.white,fontSize: 18),
                                      //   maxLines: 1,
                                      //   overflow: TextOverflow.ellipsis,
                                      //   minFontSize: 14,
                                      // ),
                                      SizedBox(height: 4,),
                                      Text(
                                        'Rs. ${productData[index]['price']!}',
                                        style: TextStyle(color: Colors.white),
                                      ),
                                    ],
                                  ),
                                )),
                          ),
                        ]);
                      }),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
