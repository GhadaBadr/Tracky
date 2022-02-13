import 'package:get/get.dart';

import 'package:tracky/app/modules/AddProduct/bindings/add_product_binding.dart';
import 'package:tracky/app/modules/AddProduct/views/add_product_view.dart';
import 'package:tracky/app/modules/ImageItemsDescription/bindings/image_items_description_binding.dart';
import 'package:tracky/app/modules/ImageItemsDescription/views/image_items_description_view.dart';
import 'package:tracky/app/modules/Menu/bindings/menu_binding.dart';
import 'package:tracky/app/modules/Menu/views/menu_view.dart';
import 'package:tracky/app/modules/MyData/bindings/my_data_binding.dart';
import 'package:tracky/app/modules/MyData/views/my_data_view.dart';
import 'package:tracky/app/modules/MySubscription/bindings/my_subscription_binding.dart';
import 'package:tracky/app/modules/MySubscription/views/my_subscription_view.dart';
import 'package:tracky/app/modules/NewUser/bindings/new_user_binding.dart';
import 'package:tracky/app/modules/NewUser/views/new_user_view.dart';
import 'package:tracky/app/modules/NewUserBusinessOwner/bindings/new_user_business_owner_binding.dart';
import 'package:tracky/app/modules/NewUserBusinessOwner/views/new_user_business_owner_view.dart';
import 'package:tracky/app/modules/PaymentSuccess/bindings/payment_success_binding.dart';
import 'package:tracky/app/modules/PaymentSuccess/views/payment_success_view.dart';
import 'package:tracky/app/modules/Sections/bindings/sections_binding.dart';
import 'package:tracky/app/modules/Sections/views/sections_view.dart';
import 'package:tracky/app/modules/Subscriptions/bindings/subscriptions_binding.dart';
import 'package:tracky/app/modules/Subscriptions/views/subscriptions_view.dart';
import 'package:tracky/app/modules/UserLogin/bindings/user_login_binding.dart';
import 'package:tracky/app/modules/UserLogin/views/user_login_view.dart';
import 'package:tracky/app/modules/UserLoginBusinessOwner/bindings/user_login_business_owner_binding.dart';
import 'package:tracky/app/modules/UserLoginBusinessOwner/views/user_login_business_owner_view.dart';
import 'package:tracky/app/modules/home/bindings/home_binding.dart';
import 'package:tracky/app/modules/home/views/home_view.dart';

// ignore_for_file: constant_identifier_names

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.USER_LOGIN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.USER_LOGIN,
      page: () => UserLoginView(),
      binding: UserLoginBinding(),
    ),
    GetPage(
      name: _Paths.NEW_USER,
      page: () => NewUserView(),
      binding: NewUserBinding(),
    ),
    GetPage(
      name: _Paths.USER_LOGIN_BUSINESS_OWNER,
      page: () => UserLoginBusinessOwnerView(),
      binding: UserLoginBusinessOwnerBinding(),
    ),
    GetPage(
      name: _Paths.NEW_USER_BUSINESS_OWNER,
      page: () => NewUserBusinessOwnerView(),
      binding: NewUserBusinessOwnerBinding(),
    ),
    GetPage(
      name: _Paths.SUBSCRIPTIONS,
      page: () => SubscriptionsView(),
      binding: SubscriptionsBinding(),
    ),
    GetPage(
      name: _Paths.IMAGE_ITEMS_DESCRIPTION,
      page: () => ImageItemsDescriptionView(),
      binding: ImageItemsDescriptionBinding(),
    ),
    GetPage(
      name: _Paths.MY_DATA,
      page: () => MyDataView(),
      binding: MyDataBinding(),
    ),
    GetPage(
      name: _Paths.MY_SUBSCRIPTION,
      page: () => MySubscriptionView(),
      binding: MySubscriptionBinding(),
    ),
    GetPage(
      name: _Paths.PAYMENT_SUCCESS,
      page: () => PaymentSuccessView(),
      binding: PaymentSuccessBinding(),
    ),
    GetPage(
      name: _Paths.MENU,
      page: () => MenuView(),
      binding: MenuBinding(),
    ),
    GetPage(
      name: _Paths.ADD_PRODUCT,
      page: () => AddProductView(),
      binding: AddProductBinding(),
    ),
    GetPage(
      name: _Paths.SECTIONS,
      page: () => SectionsView(),
      binding: SectionsBinding(),
    ),
  ];
}
