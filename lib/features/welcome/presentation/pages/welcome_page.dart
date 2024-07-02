import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/routes/app_routes.dart';
import 'package:pharm_flow/core/routes/navigation_services.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/widget/app_eleveted_button.dart';
import 'package:pharm_flow/features/welcome/presentation/bloc/counter_cubit.dart';
import 'package:pharm_flow/features/welcome/presentation/widgets/pageViewModelClass.dart';
import 'package:pharm_flow/features/welcome/presentation/widgets/pageview_image_item.dart';
import 'package:pharm_flow/features/welcome/presentation/widgets/pageview_text_item.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class WelcomePage extends StatelessWidget {
  WelcomePage({super.key});

  List<Pageviewmodelclass> pageList = [
    Pageviewmodelclass(
        title: 'Virtual Consults: Expert Care, Anywhere You Are',
        description:
            'Welcome to our Virtual Consultation Service, where healthcare meets convenience. Begin by scheduling your appointment and connecting with a qualified doctor from the comfort of your home.'),
    Pageviewmodelclass(
        title: 'Streamlining Pharmacy, Enhancing Wellness',
        description:
            'We are here to simplify your pharmacy experience and support your well-being every step of the way.'),
    Pageviewmodelclass(
        title: 'Empowering Your Choices, Enhancing Your Health',
        description:
            'Discover the best option for your health needs by comparing medications side-by-side. Let us guide you through informed decisions for your well-being'),
    Pageviewmodelclass(
        title: 'Pill Perfection: Your Dose, On Time, Every Time',
        description:
            '"Never miss a dose! Set up personalized pill reminders to stay on track with your medication regimen effortlessly."'),
    Pageviewmodelclass(
        title: 'Welcome to PharmFlow',
        description:
            'Welcome to our Pharmacy App! Your one-stop solution for prescriptions and health advice.'),
  ];

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (_) => CounterCubit(),
      child: BlocBuilder<CounterCubit, CurrentPageState>(
        builder: (context, state) {
          return Scaffold(
            body: Padding(
              padding: const EdgeInsets.all(AppDimens.space15),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 270,
                    width: 270,
                    child: PageView(
                      physics: const NeverScrollableScrollPhysics(),
                      controller: context.read<CounterCubit>().pageController,
                      onPageChanged: (index) {
                        context.read<CounterCubit>().changeIndex(index);
                      },
                      children: [
                        PageviewImageItem(imgString: AppAssets.welcomeDoc),
                        PageviewImageItem(imgString: AppAssets.welcomePharm),
                        PageviewImageItem(imgString: AppAssets.welcomePeople),
                        PageviewImageItem(
                            imgString: AppAssets.welcomeNotification),
                        PageviewImageItem(
                            imgString: AppAssets.welcomePharmAmico),
                      ],
                    ),
                  ),
                  const Gap(AppDimens.space10),
                  SmoothPageIndicator(
                    controller: context.read<CounterCubit>().pageController,
                    count: 5,
                    effect: const WormEffect(
                      dotHeight: 12,
                      dotWidth: 12,
                      type: WormType.thinUnderground,
                      dotColor: AppColors.primary,
                      activeDotColor: AppColors.primary,
                      paintStyle: PaintingStyle.stroke,
                    ),
                  ),
                  const Gap(AppDimens.space20),
                  AnimatedSwitcher(
                    duration: const Duration(milliseconds: 500),
                    transitionBuilder:
                        (Widget child, Animation<double> animation) {
                      return FadeTransition(opacity: animation, child: child);
                    },
                    child: PageviewTextItem(
                      title: pageList[state.index].title,
                      description: pageList[state.index].description,
                    ),
                  )
                ],
              ),
            ),
            bottomNavigationBar: Padding(
              padding: const EdgeInsets.symmetric(
                horizontal: AppDimens.space16,
                vertical: AppDimens.space20,
              ),
              child: state.index != 4
                  ? Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        AppElevatedButton(
                          buttonType: ButtonType.elevated,
                          buttonName: state.index == 0 ? 'Skip' : 'Prev',
                          onTap: () {
                            state.index == 0
                                ? NavigationServices()
                                    .pushRemoveUntil(AppRoutes.registrationPage)
                                : context
                                    .read<CounterCubit>()
                                    .pageController
                                    .previousPage(
                                        duration:
                                            const Duration(milliseconds: 300),
                                        curve: Curves.linear);
                          },
                        ),
                        AppElevatedButton(
                          buttonType: ButtonType.elevated,
                          buttonName: 'Next',
                          onTap: () {
                            context
                                .read<CounterCubit>()
                                .pageController
                                .nextPage(
                                  duration: const Duration(milliseconds: 300),
                                  curve: Curves.linear,
                                );
                          },
                        )
                      ],
                    )
                  : SizedBox(
                      height: 120,
                      child: Column(
                        children: [
                          AppElevatedButton(
                            buttonType: ButtonType.elevated,
                            buttonName: 'Login Now',
                            width: context.getWidth,
                            onTap: () {
                              NavigationServices()
                                  .pushRemoveUntil(AppRoutes.loginPage);
                            },
                          ),
                          const Gap(AppDimens.space15),
                          AppElevatedButton(
                            buttonType: ButtonType.elevated,
                            buttonName: 'Create your account',
                            width: context.getWidth,
                            buttonColor: AppColors.whiteColor,
                            fontColor: AppColors.primary,
                            onTap: () {
                              NavigationServices()
                                  .pushRemoveUntil(AppRoutes.registrationPage);
                            },
                          ),
                        ],
                      ),
                    ),
            ),
          );
        },
      ),
    );
  }
}
