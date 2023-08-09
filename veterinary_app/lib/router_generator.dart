import 'package:flutter/material.dart';
import 'package:veterinary_app/admin_features/main_upload_page/upload_page.dart';
import 'package:veterinary_app/user_features/account/login_page.dart';
import 'package:veterinary_app/user_features/books/books_page.dart';
import 'package:veterinary_app/user_features/contacts/contact_page.dart';
import 'package:veterinary_app/user_features/events/events_page.dart';
import 'package:veterinary_app/user_features/faq/faq_page.dart';
import 'package:veterinary_app/user_features/feedback/feedback_page.dart';
import 'package:veterinary_app/user_features/home/home_page.dart';
import 'package:veterinary_app/user_features/news/news_page.dart';
import 'package:veterinary_app/user_features/past_questions/past_questions_page.dart';
import 'package:veterinary_app/user_features/slides/slides_page.dart';

Route<dynamic> generateRoute(RouteSettings settings) {
  switch (settings.name) {
    case LoginPage.routeName:
      return MaterialPageRoute(
          settings: settings, builder: (_) => const LoginPage());
    case BooksPage.routeName:
      return MaterialPageRoute(
          settings: settings, builder: (_) => const BooksPage());
    case ContactPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const ContactPage());
    case EventsPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const EventsPage());
    case FAQPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const FAQPage());
    case HomePage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const HomePage());
    case NewsPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const NewsPage());
    case PastQuestionsPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const PastQuestionsPage());
    case SlidesPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const SlidesPage());
    case FeedBackPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) =>  const FeedBackPage());
    case UploadPage.routeName:
      return MaterialPageRoute(
        settings: settings,
        builder: (_) => const UploadPage());
    default:
    return MaterialPageRoute(
        settings: settings,
        builder: (_) => const Scaffold(
          body: Center(
            child: Text("404 Page Not Found"))
            ));
  }
}
