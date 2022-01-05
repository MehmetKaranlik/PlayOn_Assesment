import 'package:flutter/material.dart';
import 'package:play_on_assesment/core/constants/routes/routes_constants.dart';
import 'package:sizer/sizer.dart';

class CreateTeamButton extends StatelessWidget {
  final String? teamNumber;
  const CreateTeamButton({
    Key? key,
    this.teamNumber,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () => Navigator.pushReplacementNamed(context, Routes.TEAMS),
      child: Container(
        width: 35.5.w,
        height: 5.h,
        alignment: Alignment.center,
        child: Text(
          "Create Team ${teamNumber ?? 1}",
          style: TextStyle(
            color: Colors.white,
            fontSize: 15,
          ),
        ),
        decoration: BoxDecoration(
          color: const Color(0xff00CA45),
          borderRadius: BorderRadius.all(
            Radius.circular(1.w),
          ),
        ),
      ),
    );
  }
}
