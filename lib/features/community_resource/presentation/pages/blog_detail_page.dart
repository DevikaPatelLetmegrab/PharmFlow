import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:pharm_flow/core/app_extension/text_style_extension.dart';
import 'package:pharm_flow/core/config/app_assets.dart';
import 'package:pharm_flow/core/config/app_colors.dart';
import 'package:pharm_flow/core/config/app_dimension.dart';
import 'package:pharm_flow/core/utils/app_size.dart';
import 'package:pharm_flow/core/utils/squircle/squircle_container.dart';
import 'package:pharm_flow/core/widget/app_asset_image.dart';
import 'package:pharm_flow/core/widget/common_app_bar.dart';
import 'package:pharm_flow/features/home/presentation/widgets/resource_listview_item.dart';

class BlogDetailPage extends StatelessWidget {
  const BlogDetailPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CommonAppBar(title: 'Blog Details'),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(AppDimens.space15),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Squircle(
                    borderColor: AppColors.transparent,
                    child: AppAssetImage(
                      imagePath: AppAssets.map,
                      height: 180,
                      width: context.getWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(AppDimens.space10),
                  Text(
                    'The Unsung Heroes of Healthcare: The Role of Pharmacists in Your Wellbeing',
                    style: context.x16.weigh500,
                  ),
                  Gap(AppDimens.space10),
                  Text(
                    'Think about the last time you visited the doctor. You likely interacted with a physician, a nurse, and maybe even a lab technician. But there\'s another crucial player in your healthcare journey who often goes unnoticed: the pharmacist.Pharmacists are medication experts, and their role goes far beyond simply handing out pills.  They are highly-educated professionals who play a vital role in ensuring you get the most out of your medications and maintain your overall health.',
                    style: context.md14.weigh300.withGrey78,
                  ),
                  Gap(AppDimens.space10),
                  Text(
                    'So, what exactly do pharmacists do?',
                    style: context.x16.weigh500,
                  ),
                  Gap(AppDimens.space10),
                  Text(
                    'Medication Experts: Pharmacists have in-depth knowledge of medications, including their uses, side effects, and interactions with other drugs. They ensure you receive the right medication at the correct dosage and can answer any questions you may have.Safety Champions: Pharmacists are vigilant about potential medication errors and drug interactions. They work closely with doctors to ensure your medication regimen is safe and effective for your specific needs.Patient Educators: Pharmacists explain how to take medications properly, including dosage, frequency, and potential side effects. They also provide guidance on lifestyle changes that can complement your medication use.Chronic Care Partners: For patients with chronic conditions like diabetes or high blood pressure, pharmacists offer ongoing support and medication management. They can monitor your progress and adjust medications as needed.Accessibility Advocates: Pharmacists can help patients navigate insurance coverage and access medication at affordable prices. They can also recommend alternative options if needed.Public Health Protectors: Pharmacists play a crucial role in public health initiatives like vaccination campaigns and medication adherence programs. They help raise awareness about important health issues.',
                    style: context.md14.weigh300.withGrey78,
                  ),
                  Gap(AppDimens.space10),
                  Squircle(
                    borderColor: AppColors.transparent,
                    child: AppAssetImage(
                      imagePath: AppAssets.map,
                      height: 180,
                      width: context.getWidth,
                      fit: BoxFit.cover,
                    ),
                  ),
                  Gap(AppDimens.space10),
                  Text(
                    'Why are pharmacists so important?',
                    style: context.x16.weigh600,
                  ),
                  Gap(AppDimens.space10),
                  Text(
                    'Improved Medication Adherence: Pharmacists can help patients understand the importance of taking their medications as prescribed, leading to better health outcomes.Reduced Medication Errors: Pharmacist\'s expertise helps prevent medication errors, which can have serious consequences.Enhanced Patient Care: Pharmacists provide a valuable link between doctors and patients, ensuring better communication and coordinated care.Lower Healthcare Costs: By managing medication usage effectively, pharmacists can help reduce overall healthcare costs.The next time you pick up your prescription, take a moment to thank your pharmacist. They are dedicated to your health and well-being, playing a vital role in ensuring you receive the medications and support you need to live a healthy life.This blog is just a starting point! Here are some additional points you can consider including:The different specializations within pharmacy practice (e.g., clinical pharmacists, oncology pharmacists).The growing role of pharmacists in telemedicine and remote patient care.The future of pharmacy practice and how pharmacists will continue to evolve their role in healthcare delivery.By highlighting the critical role pharmacists play, we can ensure they receive the recognition they deserve and empower patients to take full advantage of their expertise.',
                    style: context.md14.weigh300.withGrey78,
                  ),
                ],
              ),
            ),
            SizedBox(
              height: context.h(220),
              child: ListView.separated(
                itemCount: 2,
                shrinkWrap: true,
                scrollDirection: Axis.horizontal,
                padding:
                    const EdgeInsets.symmetric(horizontal: AppDimens.space15),
                separatorBuilder: (context, index) =>
                    const Gap(AppDimens.space18),
                itemBuilder: (context, index) {
                  return const ResourceListviewItem(isBlog: true);
                },
              ),
            ),
            Gap(AppDimens.space15),
          ],
        ),
      ),
    );
  }
}
