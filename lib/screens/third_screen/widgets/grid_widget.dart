import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:webtoappnew/utils/colors/appcolor.dart';

class GridWidget extends StatelessWidget {
  const GridWidget({
    Key? key,
    required this.service_name,
  }) : super(key: key);

  final List service_name;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: GridView.builder(
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
        ),
        itemCount: service_name.length,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(
              top: 30,
              right: 14,
              left: 14,
            ),
            child: Container(
              height: 154,
              width: 155,
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
                    height: 119,
                    width: 180,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(13),
                        color: Color(0xffE77729)),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    service_name[index],
                    style: GoogleFonts.raleway(
                        color: Color(0xffFFFFFF),
                        fontSize: 10,
                        fontWeight: FontWeight.w600),
                  ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
