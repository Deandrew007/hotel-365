import 'package:hotel365/core/viewmodels/explore_model.dart';
import 'package:get_it/get_it.dart';

import 'core/services/api.dart';

GetIt locator = GetIt();

void setUpLocator() {
    locator.registerFactory(() => ExplorePageModel());
    locator.registerLazySingleton(() => API());


}