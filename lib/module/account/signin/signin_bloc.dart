import 'package:fast_jobs/data/repo/user_repo.dart';
import 'package:flutter/widgets.dart';
import '../../../base/base_bloc.dart';
import '../../../base/base_event.dart';
import 'package:rxdart/rxdart.dart';

class SignInBloc extends BaseBloc with ChangeNotifier  {
  final _selectedIndexSubject = BehaviorSubject<int>();
  Stream<int> get selectedIndexStream =>
      _selectedIndexSubject.stream;
  Sink<int> get selectIndexSink => _selectedIndexSubject.sink;

  UserRepo _userRepo;

  SignInBloc({@required UserRepo userRepo}) {
    _userRepo = userRepo;
  }

  @override
  void dispatchEvent(BaseEvent event) {
    // TODO: implement dispatchEvent
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    _selectedIndexSubject.close();
  }
}
