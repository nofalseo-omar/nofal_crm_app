import 'package:nofal_crm_app/features/Media/media_home/view/screen/media_home_screen.dart';
import 'package:nofal_crm_app/features/content_creator/home/view/content_home_projects.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_details_screen.dart';
import 'package:nofal_crm_app/features/immediate_tasks_feature/screen/view/immediate_tasks_screen.dart';
import 'package:nofal_crm_app/features/manager_seo_feature/screen/view/manager_seo_details.dart';
import 'package:nofal_crm_app/features/manager_seo_feature/screen/view/manager_seo_screen.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/screen/view/campaign_details.dart';
import 'package:nofal_crm_app/features/content_creator/project_status/view/screen/project_status_screen.dart';
import 'package:nofal_crm_app/features/marketing_manger_feature/screen/view/marketing_manger_screen.dart';

import 'package:nofal_crm_app/features/messages_feature/screen/view/messages_screen.dart';
import 'package:nofal_crm_app/features/content_creator/social_media_status/view/screen/social_media_status_screen.dart';
import 'package:nofal_crm_app/features/notifaction/view/screen/noification_screen.dart';
import 'package:nofal_crm_app/features/sales/company_task/view/screen/company_task_screen.dart';
import 'package:nofal_crm_app/features/sales/customer_comapny/view/screen/customer_comapny_screen.dart';
import 'package:nofal_crm_app/features/seo/screen/view/seo_screen.dart';
import 'package:nofal_crm_app/features/tasks/logic/binding/task_binding.dart';
import 'package:nofal_crm_app/features/tasks/view/screens/task_sreen.dart';
import 'package:nofal_crm_app/features/welcome/logic/binding/login_binding.dart';
import 'package:nofal_crm_app/features/welcome/view/screen/login_view.dart';
import 'package:nofal_crm_app/routes/app_routes.dart';
import 'package:get/get.dart';

class AppPages {
  static const initial = Routes.homeContent;
}

appPages() => [
      GetPage(
        name: Routes.welcome,
        binding: LoginBinding(),
        page: () => const LoginView(),
      ),
      GetPage(
        name: Routes.taskContact,
        binding: TaskBinding(),
        page: () => const TaskScreen(),
      ),
      GetPage(
          name: Routes.homeContent,
          // binding: ContentHomeScreen(),
          page: () => const ContentHomeScreen(),
          transition: Transition.fadeIn),
      GetPage(
          name: Routes.companyTaskScreen,
          // binding: ContentHomeScreen(),
          page: () => const CompanyTaskScreen(),
          transition: Transition.fadeIn),
      GetPage(
        name: Routes.messagesScreen,
        page: () => const MessagesScreen(),
      ),
      GetPage(
          name: Routes.socialMediaStatus,
          // binding: ContentHomeScreen(),
          page: () => const SocialMediaStatusScreen(),
          transition: Transition.fadeIn),
      GetPage(
          name: Routes.socialMediaStatusDetails,
          // binding: ContentHomeScreen(),
          page: () => const SocialMediaStatusDetailsScreen(),
          transition: Transition.fadeIn),
      GetPage(
          name: Routes.projectStatusScreen,
          // binding: ContentHomeScreen(),
          page: () => const ProjectStatusScreen(),
          transition: Transition.fadeIn),
      // name: Routes.socialMediaStatus,
      // binding: ContentHomeScreen(),

      GetPage(
        name: Routes.marketingMangerScreen,
        // binding: ContentHomeScreen(),
        page: () => const MarketingMangerScreen(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.customerCompanyDetails,
        // binding: ContentHomeScreen(),
        page: () => const CustomerCompanyScreen(),
        transition: Transition.fadeIn,
      ),

      GetPage(
        name: Routes.campaignDetails,
        // binding: ContentHomeScreen(),
        page: () => const CampaignDetails(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.managerSeoDetailsScreen,
        // binding: ContentHomeScreen(),
        page: () => const ManagerSeoDetails(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.notificationsScreen,
        // binding: ContentHomeScreen(),
        page: () => const NotificationScreen(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.seoScreen,
        // binding: ContentHomeScreen(),
        page: () => const SeoScreen(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.mediaHomeScreen,
        // binding: ContentHomeScreen(),
        page: () => const MediaHomeScreen(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.managerSeoScreen,
        // binding: ContentHomeScreen(),
        page: () => const ManagerSeoScreen(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.managerSeoDetailsScreen,
        // binding: ContentHomeScreen(),
        page: () => const ManagerSeoDetails(),
        transition: Transition.fadeIn,
      ),
      GetPage(
        name: Routes.immediateTasksScreen,
        // binding: ContentHomeScreen(),
        page: () => const ImmediateTasksScreen(),
        transition: Transition.fadeIn,
      ),
    ];
