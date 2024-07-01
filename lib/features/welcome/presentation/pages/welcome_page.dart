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
import 'package:pharm_flow/features/welcome/presentation/widgets/pageview_item.dart';

class WelcomePage extends StatelessWidget {
  const WelcomePage({super.key});

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
                  Expanded(
                    child: PageView(
                      controller: context.read<CounterCubit>().pageController,
                      children: [
                        PageviewItem(
                          imgString: AppAssets.welcomeDoc,
                          title:
                              'Virtual Consults: Expert Care, Anywhere You Are',
                          description:
                              'Welcome to our Virtual Consultation Service, where healthcare meets convenience. Begin by scheduling your appointment and connecting with a qualified doctor from the comfort of your home.',
                        ),
                        PageviewItem(
                          imgString: AppAssets.welcomeDoc,
                          title:
                              'Virtual Consults: Expert Care, Anywhere You Are',
                          description:
                              'Welcome to our Virtual Consultation Service, where healthcare meets convenience. Begin by scheduling your appointment and connecting with a qualified doctor from the comfort of your home.',
                        ),
                        PageviewItem(
                          imgString: AppAssets.welcomeDoc,
                          title:
                              'Virtual Consults: Expert Care, Anywhere You Are',
                          description:
                              'Welcome to our Virtual Consultation Service, where healthcare meets convenience. Begin by scheduling your appointment and connecting with a qualified doctor from the comfort of your home.',
                        ),
                        PageviewItem(
                          imgString: AppAssets.welcomeDoc,
                          title:
                              'Virtual Consults: Expert Care, Anywhere You Are',
                          description:
                              'Welcome to our Virtual Consultation Service, where healthcare meets convenience. Begin by scheduling your appointment and connecting with a qualified doctor from the comfort of your home.',
                        ),
                        PageviewItem(
                          imgString: AppAssets.welcomeDoc,
                          title:
                              'Virtual Consults: Expert Care, Anywhere You Are',
                          description:
                              'Welcome to our Virtual Consultation Service, where healthcare meets convenience. Begin by scheduling your appointment and connecting with a qualified doctor from the comfort of your home.',
                        )
                      ],
                      onPageChanged: (index) {
                        context.read<CounterCubit>().changeIndex(index);
                      },
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
                        ),
                        const AppElevatedButton(
                          buttonType: ButtonType.elevated,
                          buttonName: 'Next',
                        )
                      ],
                    )
                  : SizedBox(
                      height: 95,
                      child: Column(
                        children: [
                          AppElevatedButton(
                            buttonType: ButtonType.elevated,
                            buttonName: 'Login Now',
                            width: context.getWidth,
                            onTap: () {
                              NavigationServices()
                                  .pushName(AppRoutes.loginPage);
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
                                  .pushName(AppRoutes.registrationPage);
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
