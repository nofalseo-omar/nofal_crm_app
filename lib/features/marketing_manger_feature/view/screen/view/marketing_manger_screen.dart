import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:nofal_crm_app/components/custom_image_handler.dart';
import 'package:nofal_crm_app/components/developer_drawer_widget.dart';
import 'package:nofal_crm_app/core/constants/app_images_path.dart';
import 'package:nofal_crm_app/core/theme/text_themes.dart';
import 'package:nofal_crm_app/core/utils/app_colors.dart';
import 'package:nofal_crm_app/features/Media/media_home/view/widgets/campaign_table.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/app_drawer.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/default_row_widget_with_top_image.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/widgets/table_widget/users_view_circles.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/status_widget/status_widget.dart';
import 'package:nofal_crm_app/features/content_creator/home/widgets/table_widget/main_table.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/logic/controller/markiting_manager_home_controller.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';

class MarketingMangerScreen extends GetView<MarketingManagerHomeController> {
  const MarketingMangerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: controller.scaffoldKey,
      appBar: AppBar(
        centerTitle: true,
        title: Text(
          "مرحبا بعودتك محمد! 👋",
          style: context.f20500,
        ),
        leading: IconButton(
          onPressed: () {
            controller.scaffoldKey.currentState!.openDrawer();
          },
          icon: const CustomImageHandler(AppImages.menu2),
        ),
        actions: [
          const CustomImageHandler(AppImages.search),
          10.horizontalSpace,
        ],
      ),
      drawer: const AppDrawer(),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'الإحصائيات',
                style: context.f20500,
              ),
              16.verticalSpace,
              const StatusWidget(),
              20.verticalSpace,
              Row(
                children: [
                  Text(
                    'المشاريع',
                    style: context.f20500,
                  ),
                  const Spacer(),
                  GestureDetector(
                    onTap: () => Get.toNamed(Routes.projects),
                    child: Text(
                      'عرض المزيد',
                      style: context.f15600!.copyWith(
                        color: AppColors.darkPrimaryColor,
                      ),
                    ),
                  )
                ],
              ),
              12.verticalSpace,
              SizedBox(
                height: 200.h,
                child: ListView.builder(
                  shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) => SizedBox(
                    width: Get.width * 0.9,
                    child: GestureDetector(
                      onTap: () {
                        Get.toNamed(Routes.socialMediaStatus);
                      },
                      child: DefaultRowWidgetWithTopImage(
                        icon: AppImages.users,
                        title: 'العملات الرقمية',
                        tableItems: const {
                          "عدد الصور": "٢٧ صورة",
                          "عدد المقالات": "٢١ مقال",
                          "عدد البوستات": "٢٧ بوست"
                        },
                        date: "تاريخ الإنشاء: ١ مايو ٢٠٢٣",
                        trillingWidget: const Row(
                          children: [
                            TableUsersCirclesItem(
                                title: 'تمت المشاركة مع',
                                users: [
                                  'https://i.pravatar.cc/300?img=1',
                                  'https://i.pravatar.cc/300?img=2',
                                  'https://i.pravatar.cc/300?img=3',
                                  'https://i.pravatar.cc/300?img=4'
                                ]),
                          ],
                        ),
                        showMore: () {},
                      ),
                    ),
                  ),
                  itemCount: 5,
                ),
              ),
              20.verticalSpace,
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'حملات الدعاية',
                    style: context.f20500,
                  ),
                  GestureDetector(
                    onTap: () {
                      // Get.toNamed(Routes.customerCompanyDetails);
                    },
                    child: Text(
                      'عرض المزيد',
                      style: context.f15600!.copyWith(
                        color: AppColors.darkPrimaryColor,
                      ),
                    ),
                  ),
                ],
              ),
              12.verticalSpace,
              SizedBox(
                child: SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: Row(
                    children: List.generate(
                      5,
                      (index) => SizedBox(
                        width: Get.width * 0.9,
                        child: DefaultRowWidgetWithTopImage(
                          title: "حملة مشاهدات",
                          tableItems: const {
                            "اسم المشروع": 'نوفل سيو',
                            "اسم البوست": "مصر ",
                            "سوشيال ميدا": "فيس بوك",
                          },
                          showMore: () {},
                        ),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
