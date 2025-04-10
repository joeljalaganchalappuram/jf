import 'package:flutter/material.dart';
import 'package:research_project/models/projectcategory.dart';
import 'package:research_project/shared/styled_text.dart';
import 'package:research_project/theme.dart';

class CategoryCard extends StatelessWidget {
  const CategoryCard({
    super.key,
    required this.projectcategory,
    required this.onTap,
    required this.selected,
  });

  final ProjectCategory projectcategory;
  final void Function(ProjectCategory) onTap;
  final bool selected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap(projectcategory);
      },
      child: Card(
        color: selected ? AppColors.secondaryColor : Colors.transparent,
        child: Padding(
          padding: EdgeInsets.all(8),
          child: Row(
            children: [
              Image.asset(
                'assets/img/category/${projectcategory.image}',
                width: 80,
                colorBlendMode: BlendMode.color,
                color: !selected
                    ? Colors.black.withValues(alpha: 1.0)
                    : Colors.transparent,
              ),
              SizedBox(
                width: 10,
              ),
              Expanded(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  StyledHeading(projectcategory.title),
                  StyledText(projectcategory.description)
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
