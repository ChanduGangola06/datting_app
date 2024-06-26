import 'package:datting_app/views/utils/settings/app_images.dart';

class Flair {
  String image;

  Flair({required this.image});
}

List<Flair> flair = [
  Flair(
    image: AppImages.flairImage,
  ),
  Flair(
    image: AppImages.bubble,
  ),
  Flair(
    image: AppImages.fires,
  ),
  Flair(
    image: AppImages.heartsFilter,
  ),
];
