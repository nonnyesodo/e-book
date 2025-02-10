import 'dart:developer';

import 'package:flutter_tts/flutter_tts.dart';
import 'package:ebook_task/features/home/data/model/book_model.dart';
import 'package:ebook_task/features/home/presentation/bloc/cubit/home_cubit.dart';
import 'package:ebook_task/global_widget/export.dart';

class ReaderPage extends StatelessWidget {
  const ReaderPage({super.key, required this.book});
  final BooksModel book;

  @override
  Widget build(BuildContext context) {
    final readHome = context.read<HomeCubit>();
    final watchHome = context.watch<HomeCubit>();
    final size = MediaQuery.sizeOf(context);
    return PopScope(
      onPopInvokedWithResult: (didPop, result) {
        readHome.stopReader();
      },
      child: AppScaffold(
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: Column(
            children: [
              AppbarWidget(
                  title: book.title,
                  trailing: GestureDetector(
                      onTap: () {
                        readHome.startReading(
                            book: book.content[watchHome.currentPage]);
                      },
                      child: Icon(Icons.volume_up,
                          size: 25.sp, color: AppColors.redText))),
              20.verticalSpace,
              Expanded(
                child: PageView.builder(
                  itemCount: book.content.length,
                  itemBuilder: (context, index) {
                    return AppExoText(text: book.content[index], maxLines: 500);
                  },
                  onPageChanged: (index) {
                    readHome.changeCurrentPage(page: index);
                  },
                ),
              ),
              Visibility(
                visible: watchHome.currentPage == 0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    AppExoText(text: "Swipe to next"),
                    Icon(Icons.arrow_forward,
                        size: 20.sp, color: AppColors.redText)
                  ],
                ),
              ),
              20.verticalSpace
            ],
          ),
        ),
      ),
    );
  }
}
