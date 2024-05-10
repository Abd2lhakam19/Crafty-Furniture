import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:mobile_app/core/routing/routes.dart';

import 'model/on_boarding_model.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int _currentPage = 0;
  List<OnBoardingModel> model = [
    OnBoardingModel(
      pic: "assets/images/on_board1.png",
      dec: "View And Exprience \nFurniture With The Help\nOf Augmented Reality",
    ),
    OnBoardingModel(
      pic: "assets/images/onboard2.png",
      dec: "Design Your Space With \nAugmented Reality By\nCreating Room",
    ),
    OnBoardingModel(
      pic: "assets/images/onboard3.png",
      dec:
          "Explore World Class Top\nFurnitures As Per Your\nRequirements & Choice",
    )
  ];
  final PageController _controller = PageController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        // mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SizedBox(
            height: 131.h,
          ),
          Expanded(
            child: PageView.builder(
              controller: _controller,
              onPageChanged: (value) {
                setState(() {
                  _currentPage = value;
                });
              },
              itemBuilder: (context, index) {
                final item = model[index];
                return Column(
                  children: [
                    Image.asset(
                      item.pic,
                      fit: BoxFit.cover,
                    ),
                    SizedBox(
                      height: 30.h,
                    ),
                    Text(
                      item.dec,
                      style: TextStyle(
                        fontSize: 24.sp,
                        fontWeight: FontWeight.w500,
                        color: const Color(0xff101817),
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                );
              },
              itemCount: model.length,
            ),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
              3,
              (index) => Padding(
                padding: const EdgeInsets.symmetric(horizontal: 7),
                child: AnimatedContainer(
                  duration: const Duration(microseconds: 100),
                  height: 6.h,
                  width: 6.w,
                  decoration: BoxDecoration(
                    color: _currentPage == index
                        ? const Color(0xff0C8A7B)
                        : const Color(0xff828A89),
                    borderRadius: BorderRadius.circular(100),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(
            height: 73.h,
          ),
          _currentPage == 2
              ? Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.w),
                  child: TextButton(
                    style: ButtonStyle(
                        backgroundColor: MaterialStateProperty.all<Color>(
                          const Color(0xff0C8A7B),
                        ),
                        minimumSize: MaterialStateProperty.all<Size>(
                          Size(327.w, 56.h),
                        ),
                        shape: MaterialStateProperty.all<OutlinedBorder>(
                          RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(14),
                          ),
                        ),
                        padding: MaterialStateProperty.all<EdgeInsetsGeometry>(
                          EdgeInsets.symmetric(
                            horizontal: 10.w,
                            vertical: 15.h,
                          ),
                        )),
                    onPressed: () {
                      Navigator.pushNamed(context, Routes.signIn);
                    },
                    child: Text(
                      "Get Statrted",
                      style: TextStyle(
                        fontSize: 16.sp,
                        color: Colors.white,
                      ),
                    ),
                  ),
                )
              : Row(
                  //  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 24.w,
                    ),
                    TextButton(
                      onPressed: () {
                        _controller.jumpToPage(2);
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          fontSize: 16.sp,
                          color: const Color(0xff828A89),
                        ),
                      ),
                    ),
                    const Spacer(),
                    FloatingActionButton(
                      onPressed: () {
                        _controller.nextPage(
                            duration: const Duration(microseconds: 100),
                            curve: Curves.decelerate);
                      },
                      backgroundColor: const Color(0xff0C8A7B),
                      elevation: 0.0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(40),
                      ),
                      child: const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colors.white,
                      ),
                    ),
                    SizedBox(
                      width: 24.w,
                    ),
                  ],
                ),
          const SizedBox(
            height: 32,
          ),
        ],
      ),
    );
  }
}
