import 'package:flutter/material.dart';
import 'package:play_on_assesment/product/widget/button/create_team_button.dart';
import 'package:play_on_assesment/view/create_team/controller/create_team_controller.dart';

class CreateTeamView extends StatefulWidget {
  final String? teamNumber;
  const CreateTeamView({Key? key, this.teamNumber}) : super(key: key);

  @override
  State<CreateTeamView> createState() => _CreateTeamViewState();
}

class _CreateTeamViewState extends State<CreateTeamView> {
  late final CreateTeamViewController _controller;

  @override
  void initState() {
    _controller = CreateTeamViewController();
    _controller.setIsNotFirstLogin();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: _buildCreateTeamButton(),
      ),
    );
  }

  CreateTeamButton _buildCreateTeamButton() {
    return const CreateTeamButton();
  }
}
