import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:medhub_application/domain/exceptions/error_page.dart';
import 'package:medhub_application/presentation/pages/authentication/forgot_password_page.dart';
import 'package:medhub_application/presentation/pages/authentication/login_page.dart';
import 'package:medhub_application/presentation/pages/authentication/register_page.dart';
import 'package:medhub_application/presentation/pages/authentication/verify_otp_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/add_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/cart_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/category/category_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/checkout_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/detail_product_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/home_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/notif_page.dart';
import 'package:medhub_application/presentation/pages/onApplication/profile_page.dart';
import 'package:medhub_application/presentation/pages/onBoarding/onBoarding_page.dart';
import 'package:medhub_application/presentation/pages/onBoarding/splash_screen.dart';
import 'package:medhub_application/presentation/pages/onBoarding/welcome_page.dart';
import 'package:medhub_application/presentation/widgets/general/navbar_bottom_widget.dart';
import 'package:medhub_application/presentation/widgets/general/success_template_page.dart';
import 'package:medhub_application/presentation/widgets/general/template_page.dart';

final GoRouter router = GoRouter(
  errorBuilder: ((context, state) => const ErrorPage()),
  routes: <RouteBase>[
    GoRoute(
      path: '/',
      builder: (BuildContext context, GoRouterState state) {
        return const SplashScreen();
      },
      routes: <RouteBase>[
        GoRoute(
          path: 'onboarding',
          builder: (BuildContext context, GoRouterState state) {
            return const OnboardingPage();
          },
        ),
      ],
    ),
    GoRoute(
      path: '/welcome',
      builder: (BuildContext context, GoRouterState state) {
        return const WelcomePage();
      },
    ),
    GoRoute(
      path: '/login',
      builder: (BuildContext context, GoRouterState state) {
        return const LoginPage();
      },
    ),
    GoRoute(
      path: '/register',
      builder: (BuildContext context, GoRouterState state) {
        return const RegisterPage();
      },
    ),
    GoRoute(
      path: '/forgotPassword',
      builder: (BuildContext context, GoRouterState state) {
        return const ForgotPasswordPage();
      },
    ),
    GoRoute(
      path: '/verifyOtp',
      builder: (BuildContext context, GoRouterState state) {
        return const VerifyOtpPage();
      },
    ),
    GoRoute(
      path: '/navbar',
      builder: (BuildContext context, GoRouterState state) {
        return const NavbarBottom();
      },
    ),
    GoRoute(
      path: '/home',
      builder: (BuildContext context, GoRouterState state) {
        return const HomePage();
      },
    ),
    GoRoute(
      path: '/notif',
      builder: (BuildContext context, GoRouterState state) {
        return const NotifPage();
      },
    ),
    GoRoute(
      path: '/cart',
      builder: (BuildContext context, GoRouterState state) {
        return const CartPage();
      },
    ),
    GoRoute(
      path: '/co',
      builder: (BuildContext context, GoRouterState state) {
        return const CheckOutPage();
      },
    ),
    GoRoute(
      path: '/profile',
      builder: (BuildContext context, GoRouterState state) {
        return const ProfilePage();
      },
    ),
    GoRoute(
      path: '/addpage',
      builder: (BuildContext context, GoRouterState state) {
        return const AddPage();
      },
    ),
    GoRoute(
      path: '/templatepage',
      builder: (BuildContext context, GoRouterState state) {
        return const TemplatePage();
      },
    ),
    GoRoute(
      path: '/category',
      builder: (BuildContext context, GoRouterState state) {
        return const CategoryPage();
      },
    ),
    GoRoute(
      path: '/detailproduct',
      builder: (BuildContext context, GoRouterState state) {
        return const DetailProductPage();
      },
    ),
    GoRoute(
      path: '/successpage/:label/:description/:descButton',
      builder: (BuildContext context, GoRouterState state) {
        final label = state.pathParameters['label']!;
        final description = state.pathParameters['description']!;
        final descButton = state.pathParameters['descButton']!;

        return TemplateSuccessPage(
          label: label,
          description: description,
          descButton: descButton,
        );
      },
    ),
  ],
);
