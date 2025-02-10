import 'package:ebook_task/core/config/page_route/route_name.dart';
import 'package:ebook_task/features/home/data/local/home_static_repo.dart';
import 'package:ebook_task/global_widget/export.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.sizeOf(context);
    return Scaffold(
        backgroundColor: AppColors.white,
        body: Padding(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.04),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              70.verticalSpace,
              Row(
                children: [
                  AppNetwokImage(
                      height: size.width * 0.14,
                      width: size.width * 0.14,
                      radius: 200.r,
                      imageUrl: ""),
                  5.horizontalSpace,
                  SizedBox(
                    width: size.width * 0.5,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              AppExoText(
                                  text: 'Hi ',
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                              AppExoText(
                                  text: "User",
                                  fontSize: 18,
                                  fontWeight: FontWeight.w600),
                            ],
                          ),
                          AppExoText(text: "email@gmail.com", fontSize: 12),
                        ]),
                  ),
                  Spacer(),
                  GestureDetector(
                      onTap: () {},
                      child: Icon(Icons.notifications_outlined, size: 25.sp))
                ],
              ),
              10.verticalSpace,
              AppExoText(
                  text: 'Let\'s Find \nYour Best Book!',
                  fontWeight: FontWeight.w600,
                  fontSize: 20),
              ApptextField(hintText: 'search'),
              20.verticalSpace,
              Expanded(
                  child: GridView.count(
                      crossAxisCount: 2,
                      padding: EdgeInsets.zero,
                      childAspectRatio: 0.67,
                      crossAxisSpacing: size.width * 0.05,
                      children: List.generate(
                          HomeStaticRepo.books.length,
                          (index) => GestureDetector(
                                onTap: () {
                                  context.push(RouteName.bookDetail.path,
                                      extra: HomeStaticRepo.books[index]);
                                },
                                child: Column(
                                  children: [
                                    AppNetwokImage(
                                        radius: 10.r,
                                        height: size.width * 0.5,
                                        fit: BoxFit.contain,
                                        width: size.width,
                                        imageUrl:
                                            HomeStaticRepo.books[index].avatar),
                                    AppExoText(
                                        text: HomeStaticRepo.books[index].title,
                                        fontWeight: FontWeight.w700),
                                    AppExoText(
                                        text:
                                            HomeStaticRepo.books[index].author,
                                        maxLines: 2,
                                        textAlign: TextAlign.center,
                                        fontSize: 14),
                                  ],
                                ),
                              ))))
            ],
          ),
        ));
  }
}
