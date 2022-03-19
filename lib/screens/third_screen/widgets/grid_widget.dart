import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';
import 'package:webtoappnew/widgets/text_widget.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
    required this.service_name,
  }) : super(key: key);

  final List service_name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.of(context).size.width * 0.018,
        ),
        child: GridView.builder(
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
          ),
          itemCount: service_name.length,
          itemBuilder: (BuildContext context, int index) {
            return Padding(
              padding: EdgeInsets.only(
                top: MediaQuery.of(context).size.height * 0.03,
                right: MediaQuery.of(context).size.width * 0.017,
                left: MediaQuery.of(context).size.width * 0.017,
              ),
              child: Container(
                decoration: BoxDecoration(
                  color: AppColor.thirdpagebackcolor,
                  borderRadius: BorderRadius.circular(13),
                  border: Border.all(
                    color: Color(0xffE77729),
                  ),
                ),
                child: Column(
                  children: [
                    Container(
                      height: MediaQuery.of(context).size.height * 0.16,
                      width: MediaQuery.of(context).size.width * 0.45,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(13),
                          color: Color(0xffE77729)),
                    ),
                    SizedBox(
                      height: MediaQuery.of(context).size.height * 0.014,
                    ),
                    TextWidget(
                        text: service_name[index],
                        color: AppColor.white,
                        fontWeight: FontWeight.w600,
                        fontsize: 11.sp),
                  ],
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
