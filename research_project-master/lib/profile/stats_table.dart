// import 'package:flutter/material.dart';
// import 'package:research_project/models/project.dart';
// import 'package:research_project/shared/styled_text.dart';
// import 'package:research_project/theme.dart';

// class StatsTable extends StatefulWidget {
//   const StatsTable(this.project, {super.key});
//   final Project project;

//   @override
//   State<StatsTable> createState() => _StatsTableState();
// }

// class _StatsTableState extends State<StatsTable> {
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: EdgeInsets.all(16),
//       child: Column(
//         children: [
//           Table(
//             children: widget.project.statsAsFormattedList.map((stat) {
//               return TableRow(
//                 decoration: BoxDecoration(
//                     color: AppColors.secondaryColor.withValues(alpha: 0.5)),
//                 children: [
//                   TableCell(
//                     verticalAlignment: TableCellVerticalAlignment.middle,
//                     child: Padding(
//                       padding: EdgeInsets.all(8),
//                       child: StyledHeading(stat['title']!),
//                     ),
//                   ),
//                   TableCell(
//                       verticalAlignment: TableCellVerticalAlignment.middle,
//                       child: Padding(
//                         padding: EdgeInsets.all(8),
//                         child: StyledHeading(stat['value']!),
//                       )),
//                   TableCell(
//                       verticalAlignment: TableCellVerticalAlignment.middle,
//                       child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               widget.project.increaseStat(stat['title']!);
//                             });
//                           },
//                           icon: Icon(
//                             Icons.arrow_upward,
//                             color: AppColors.textColor,
//                           ))),
//                   TableCell(
//                       verticalAlignment: TableCellVerticalAlignment.middle,
//                       child: IconButton(
//                           onPressed: () {
//                             setState(() {
//                               widget.project.decreaseStat(stat['title']!);
//                             });
//                           },
//                           icon: Icon(
//                             Icons.arrow_downward,
//                             color: AppColors.textColor,
//                           )))
//                 ],
//               );
//             }).toList(),
//           )
//         ],
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:research_project/models/project.dart';
import 'package:research_project/shared/styled_text.dart';
import 'package:research_project/theme.dart';

class StatsTable extends StatefulWidget {
  const StatsTable(this.project, {super.key});
  final Project project;

  @override
  State<StatsTable> createState() => _StatsTableState();
}

class _StatsTableState extends State<StatsTable> {
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.all(16),
      child: Container(
        padding: EdgeInsets.all(16),
        decoration: BoxDecoration(
            color: AppColors.secondaryColor.withValues(alpha: 0.5)),
        child: Column(
          children: [
            Column(
              children: widget.project.statsAsFormattedList.map((stat) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      width: 150,
                      child: StyledHeading(stat['title']!),
                    ),
                    SizedBox(
                      width: 100,
                      child: Center(child: StyledHeading(stat['value']!)),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.project.increaseStat(stat['title']!);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_upward,
                        color: AppColors.textColor,
                      ),
                    ),
                    IconButton(
                      onPressed: () {
                        setState(() {
                          widget.project.decreaseStat(stat['title']!);
                        });
                      },
                      icon: Icon(
                        Icons.arrow_downward,
                        color: AppColors.textColor,
                      ),
                    ),
                  ],
                );
              }).toList(),
            ),
          ],
        ),
      ),
    );
  }
}
