import 'package:bloc/bloc.dart';
import 'package:mvvm_architecture/model/user.dart';

class UserBloc extends Bloc<int, User> {
  @override
  User get initialState => UnitializedUser();

  // ini fungsinya mengambil data dari API
  // dengan id yang dimasukan ke salam event
  @override
  Stream<User> mapEventToState(int event) async* {
    // menggunakan try cath unutk berjaga jaga apa bilai api nya tidak sesuai
    try {
      User user = await User.getUserFromAPI(event);
      // kembalikan ke stream
      yield user;
    } catch (e) {
      print(e);
    }
  }
}
