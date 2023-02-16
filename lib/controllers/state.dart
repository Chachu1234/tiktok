import 'package:get/get.dart';

class ProviderStates extends GetxController {
  final likes = 6.obs;
  final comments = 0.obs;
  final shares = 29.obs;
  final bookMarks = 0.obs;

  void addLikes() => likes.value++;

  void addcomments() => comments.value++;

  void addshares() => shares.value++;
  void addbookMarks() => bookMarks.value++;
}
