import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:ibsra_mobile_application/core/utils/app_router.dart';
import 'package:ibsra_mobile_application/features/auth/presentation/views/sign_up_view.dart';

import '../../data/models/onboarding_page_entity.dart';
import '../manager/on_boarding_cubit/on_boarding_cubit.dart';
import '../manager/on_boarding_cubit/on_boarding_state.dart';
import '../widgets/onboarding_page.dart';
import '../widgets/page_indicator.dart';

class OnboardingView extends StatefulWidget {
  const OnboardingView({super.key});

  @override
  State<OnboardingView> createState() => _OnboardingViewState();
}

class _OnboardingViewState extends State<OnboardingView> {
  final List<OnboardingPageEntity> pages = const [
    OnboardingPageEntity(
      imagePath: 'assets/lotties/training.json',
      title: 'Welcome to Your Learning Journey',
      description:
          'Unlock knowledge anytime, anywhere. Start learning with expert courses tailored just for you!',
    ),
    OnboardingPageEntity(
      imagePath: 'assets/lotties/learning2.json',
      title: 'Learn at Your Own Pace',
      description:
          'No rush, no pressure. Study when you want and track your progress effortlessly.',
    ),
    OnboardingPageEntity(
      imagePath: 'assets/lotties/learning3.json',
      title: 'Achieve Your Goals',
      description:
          'Grow your skills, earn certificates, and take the next step in your career!',
    ),
  ];

  late final PageController _pageController;

  @override
  void initState() {
    super.initState();
    _pageController = PageController();
  }

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => OnboardingCubit(pages: pages),
      child: Scaffold(
        backgroundColor: Colors.white,
        appBar: AppBar(
          backgroundColor: Colors.white,
          actions: [
            TextButton(
              onPressed: () {
                GoRouter.of(context).go(AppRouter.kSignUpView);
                _pageController.animateToPage(
                  pages.length - 1,
                  duration: const Duration(milliseconds: 500),
                  curve: Curves.easeInOut,
                );
                _navigateToLecture(context);
              },
              child: const Text(
                'SKIP',
                style: TextStyle(fontSize: 25),
              ),
            ),
          ],
        ),
        body: BlocConsumer<OnboardingCubit, OnboardingState>(
          listener: (context, state) {
            // Sync page controller with state changes
            if (_pageController.hasClients &&
                _pageController.page?.round() != state.currentPage) {
              _pageController.animateToPage(
                state.currentPage,
                duration: const Duration(milliseconds: 500),
                curve: Curves.easeInOut,
              );
            }
          },
          builder: (context, state) {
            return Padding(
              padding: const EdgeInsets.all(25.0),
              child: Column(
                children: [
                  Expanded(
                    child: PageView.builder(
                      controller: _pageController,
                      physics: const BouncingScrollPhysics(),
                      itemCount: pages.length,
                      onPageChanged: (index) {
                        context.read<OnboardingCubit>().updatePageIndex(index);
                      },
                      itemBuilder: (context, index) {
                        return OnboardingPageWidget(page: pages[index]);
                      },
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: MediaQuery.of(context).size.width * .25,
                    child: PageIndicatorWidget(
                      boardController: _pageController,
                      pageCount: pages.length,
                      currentPage: state.currentPage,
                    ),
                  ),
                  const SizedBox(height: 20),
                  FloatingActionButton(
                    onPressed: () {
                      if (state.isLastPage) {
                        _navigateToLecture(context);
                      } else {
                        context.read<OnboardingCubit>().nextPage();
                        _pageController.nextPage(
                          duration: const Duration(milliseconds: 500),
                          curve: Curves.easeInOut,
                        );
                      }
                    },
                    child: const Icon(Icons.arrow_forward),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  void _navigateToLecture(BuildContext context) {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => SignUpView(),
      ),
    );
  }
}
