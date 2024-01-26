import 'package:flutter/material.dart';
import 'package:stark/stark.dart';

import 'stark_presenter.dart';


abstract class StarkState<T extends StatefulWidget,
    Presenter extends StarkPresenter> extends InjectableState<T> {
  late Presenter presenter;

  @override
  @mustCallSuper
  void initState() {
    presenter = get();
    presenter.view = this;
    super.initState();
    presenter.init();
  }
}
