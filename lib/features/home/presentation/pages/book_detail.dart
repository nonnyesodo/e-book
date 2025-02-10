import 'package:ebook_task/core/config/page_route/route_name.dart';
import 'package:ebook_task/features/home/data/model/book_model.dart';
import 'package:ebook_task/global_widget/export.dart';

class BookDetailPage extends StatelessWidget {
  const BookDetailPage({super.key, required this.book});
  final BooksModel book;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return AppScaffold(
        body: Padding(
      padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
      child: Column(
        children: [
          AppbarWidget(title: book.title),
          20.verticalSpace,
          AppNetwokImage(
              height: size.width * 0.55,
              width: size.width,
              fit: BoxFit.fill,
              radius: 20.r,
              imageUrl: book.avatar),
          20.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              AppExoText(
                  text: book.author, fontSize: 18, fontWeight: FontWeight.w600),
              Spacer(),
              Icon(Icons.star, color: AppColors.yellow, size: 20.sp),
              AppExoText(text: book.rating, fontWeight: FontWeight.w500),
            ],
          ),
          20.verticalSpace,
          AppExoText(text: book.summary, maxLines: 500),
          80.verticalSpace,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Appbutton(
                  width: size.width * 0.4,
                  buttonColor: AppColors.green,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.shopping_cart_checkout,
                          size: 20.sp, color: AppColors.white),
                      7.horizontalSpace,
                      AppExoText(text: 'Purchase', color: AppColors.white)
                    ],
                  )),
              Appbutton(
                  onTap: () {
                    context.push(RouteName.bookReader.path, extra: book);
                  },
                  width: size.width * 0.4,
                  buttonColor: AppColors.redText,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(Icons.book_outlined,
                          size: 20.sp, color: AppColors.white),
                      7.horizontalSpace,
                      AppExoText(text: 'Read', color: AppColors.white)
                    ],
                  )),
            ],
          )
        ],
      ),
    ));
  }
}
