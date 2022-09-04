import 'package:flutter/cupertino.dart';

class NavigatorObserverCustom extends NavigatorObserver {
//antes de fazer o push
  @override
  void didPush(Route route, Route? previousRoute) {
    super.didPush(route, previousRoute);
  }

//antes de sair da pagina
  @override
  void didPop(Route route, Route? previousRoute) {
    super.didPop(route, previousRoute);
  }
}
