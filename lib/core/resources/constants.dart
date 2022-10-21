// ignore_for_file: constant_identifier_names

import 'package:flutter/material.dart';

part 'app_colors.dart';
part 'app_textstyles.dart';
part 'app_decorations.dart';

// int basePageIndex = 0;

const NOT_FOUND_IMAGE =
    'https://cdn.shopify.com/shopifycloud/shopify/assets/no-image-2048-5e88c1b20e087fb7bbe9a3771824e743c244f437e4f8ba93bbf7b11b53f7824c_600x600.gif';

const PROFILE_AVATAR = 'https://www.weact.org/wp-content/uploads/2016/10/Blank-profile.png';

const NO_INTERNET_TEXT = 'no_internet_text'; //'Нет интернета!';

mixin GlobalVariable {
  static final navigatorKey = GlobalKey<NavigatorState>();
}

// Widget refreshClassicHeader = const ClassicHeader(
//   completeText: 'Успешно обновлено!',
//   releaseText: 'Обновить!',
//   idleText: 'Потяните вниз, чтобы обновить',
//   failedText: 'Неизвестная ошибка',
//   refreshingText: 'Обновление...',
// );

// Widget refreshClassicFooter = const ClassicFooter(
//   // completeText: 'Успешно обновлено!',
//   // releaseText: 'Обновить!',
//   idleText: '',
//   failedText: 'Неизвестная ошибка',
//   loadingText: 'Загружаем...',
//   canLoadingText: 'Потяните вверх, чтобы загрузить данные',
//   idleIcon: null,
// );
