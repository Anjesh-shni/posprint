import 'package:get/get.dart';
import 'package:posprint/database/model/popular_menu_model.dart';
import 'package:posprint/database/services/popular_menu_service.dart';


class PopularMenuController extends GetxController {
  List<PopularMenuData> popularMenuData = <PopularMenuData>[];
  var isLoading = false.obs;

  @override
  void onInit() {
    popularMenu();
    super.onInit();
  }

  popularMenu() async {
    try {
      var popularMenu = await PopularMenuService.popularMenu();
      if (popularMenu != null) {
        popularMenuData = <PopularMenuData>[];
        popularMenuData.addAll(popularMenu.data!);
        isLoading.value = true;
      }
      update();
    } finally {
      isLoading(false);
      update();
    }
  }
}
