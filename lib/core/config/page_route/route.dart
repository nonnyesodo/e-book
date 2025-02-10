import 'package:ebook_task/core/config/page_route/route_name.dart';
import 'package:ebook_task/features/home/data/model/book_model.dart';
import 'package:ebook_task/features/home/presentation/pages/bottom_nav.dart';
import 'package:ebook_task/features/home/presentation/pages/book_detail.dart';
import 'package:ebook_task/features/home/presentation/pages/reader_page.dart';
import 'package:ebook_task/global_widget/export.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

class AppRoute {
  // GoRouter configuration
  static final router = GoRouter(
    navigatorKey: navigatorKey,
    initialLocation: '/',
    routes: [
      GoRoute(
          path: RouteName.botomNav.path,
          builder: (context, state) {
            return BottomNav();
          }),
      GoRoute(
          path: RouteName.bookDetail.path,
          builder: (context, state) {
            final BooksModel book = state.extra as BooksModel;
            return BookDetailPage(book: book);
          }),
      GoRoute(
          path: RouteName.bookReader.path,
          builder: (context, state) {
            final BooksModel book = state.extra as BooksModel;
            return ReaderPage(book: book);
          }),
    ],
  );
}
