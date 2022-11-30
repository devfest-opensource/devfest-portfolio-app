import 'package:devfest_portfolio_app/providers/home-provider/home_provider.dart';
import 'package:devfest_portfolio_app/providers/previous-devfest-provider/previous_devfest_provider.dart';
import 'package:provider/provider.dart';

final providers = [
  ChangeNotifierProvider<HomeProvider>(
    create: (_) => HomeProvider(),
    lazy: false,
  ),
  ChangeNotifierProvider<PreviousDevfestProvider>(
    create: (_) => PreviousDevfestProvider(),
    lazy: false,
  ),
];
