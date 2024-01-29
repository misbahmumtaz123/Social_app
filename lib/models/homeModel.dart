import '../Config/assets.dart';
import '../Config/strings.dart';
class PostModel {
  final String avatarImage;
  final String userName;
  final String timeAgo;
  final String postImage;
  final String likesCount;
  final String commentsCount;

  PostModel({
    required this.avatarImage,
    required this.userName,
    required this.timeAgo,
    required this.postImage,
    required this.likesCount,
    required this.commentsCount,
  });
}
List<PostModel> posts = [
  PostModel(
    avatarImage: ImageAssets.img18,
    userName: AppStrings.thanhpham,
    timeAgo: AppStrings.ago,
    postImage: ImageAssets.img20,
    likesCount: AppStrings.twnty,
    commentsCount: AppStrings.onetwntyfine,
  ),
  PostModel(
    avatarImage: ImageAssets.img19,
    userName: AppStrings.bruno,
    timeAgo: AppStrings.ago,
    postImage: ImageAssets.img21,
    likesCount: AppStrings.threehudrd,
    commentsCount: AppStrings.twnty,
  ),
];