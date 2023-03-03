import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:template/domain/providers/notes_provider.dart';
import 'package:template/ui/app_navigator/app_routes.dart';
import 'package:template/ui/theme/app_colors.dart';
import 'package:template/ui/theme/app_styles.dart';
import 'package:template/ui/widgets/notes_body.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final model = Provider.of<NotesProvider>(context);
    return Scaffold(
      appBar: AppBar(
        backgroundColor: AppColors.backGroundColor,
        title: const Text(
          'Заметки',
          style: AppStyles.fontStyle,
        ),
        centerTitle: true,
        actions: [
          IconButton(
            color: AppColors.blackColor,
            onPressed: () {
              Navigator.pushNamed(context, AppRoutes.searchNotes);
            },
            icon: const Icon(
              Icons.search_rounded,
            ),
          ),
        ],
      ),
      body: const NotesBody(),
      floatingActionButton: SizedBox(
        width: 56,
        height: 56,
        child: FloatingActionButton.extended(
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(
              16,
            ),
          ),
          backgroundColor: AppColors.backGroundColor,
          onPressed: () {
            model.controllerClear();
            Navigator.pushNamed(
              context,
              AppRoutes.addNotes,
            );
          },
          label: const Icon(
            Icons.create_outlined,
            color: AppColors.purpleColor,
          ),
        ),
      ),
    );
  }
}
