import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:play_on_assesment/core/constants/assets/svg_constants.dart';
import 'package:play_on_assesment/core/utils/widget/dynamic_veritical_space.dart';
import 'package:sizer/sizer.dart';

class TeamsView extends StatefulWidget {
  const TeamsView({Key? key}) : super(key: key);

  @override
  State<TeamsView> createState() => _TeamsViewState();
}

class _TeamsViewState extends State<TeamsView> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xff242C35),
        body: Stack(
          children: [
            _buildUpperStack(),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [const Spacer(), _buildBottomLogo(), DynamicVerticalSpace()],
            ),
          ],
        ));
  }

  Row _buildBottomLogo() {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SvgPicture.asset(
          SvgConstants.instance.appLogo,
          width: 15.w,
        ),
      ],
    );
  }

  Column _buildUpperStack() {
    return Column(
      children: [
        _buildAppBar(),
        Spacer(),
        SvgPicture.asset(SvgConstants.instance.f1roadLogo),
        const Spacer(),
      ],
    );
  }

  Row _buildAppBar() {
    return Row(
      children: [
        _buildT1Text(),
        Container(
          width: 90.9.w,
          height: 9.2.h,
          color: Colors.white,
          padding: EdgeInsets.only(left: 3.w),
          alignment: Alignment.centerLeft,
          child: Column(
            children: [
              const Spacer(
                flex: 7,
              ),
              Text(
                "Team name",
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 3.h,
                  fontWeight: FontWeight.w600,
                ),
              ),
              const Spacer(
                flex: 3,
              )
            ],
          ),
        )
      ],
    );
  }

  Container _buildT1Text() {
    return Container(
      width: 9.1.w,
      height: 9.2.h,
      alignment: Alignment.center,
      color: const Color(0xff242C35),
      child: Column(
        children: [
          const Spacer(
            flex: 7,
          ),
          Text(
            "T1",
            style: TextStyle(
              color: Colors.white,
              fontSize: 3.h,
              fontWeight: FontWeight.bold,
            ),
          ),
          const Spacer(
            flex: 3,
          )
        ],
      ),
    );
  }
}
