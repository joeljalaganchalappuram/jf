import 'package:flutter/material.dart';
import 'package:research_project/models/project.dart';
import 'package:research_project/screens/create/create.dart';
import 'package:research_project/screens/home/project_card.dart';
import 'package:research_project/shared/styled_button.dart';
import 'package:research_project/shared/styled_text.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: StyledTitle('Your Projects'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: projects.length,
                itemBuilder: (_, index) {
                  return ProjectCard(projects[index]);
                },
              ),
            ),
            StyledButton(
                onPressed: () {
                  Navigator.push(
                      context, MaterialPageRoute(builder: (ctx) => Create()));
                },
                child: StyledHeading('Create New'))
          ],
        ),
      ),
    );
  }
}
