import 'package:bloc/bloc.dart';
import 'package:list_with_bloc/model/post.dart';

class PostEvent {}

// Abstract class
abstract class PostState {}

// class turunan dari PostState
// class ini di gunakan untuk data pertama kali
class PostUninitialized extends PostState {}

// class ini digunakan setelah kita meload datanya
class PostLoaded extends PostState {
  List<Post> posts;

  // diguhakan untuk mengecek data apakah sudah terload semuanya atau belum
  bool hasReachedMax;

  PostLoaded({this.posts, this.hasReachedMax});

  // class ununtk mempermudah pekerjaan kita
  PostLoaded copyWith({List<Post> posts, bool hasReachedMax}) {
    // kembalikan postLoaded yang baru
    return PostLoaded(
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }
}

class PostBloc extends Bloc<PostEvent, PostState> {
  @override
  PostState get initialState => PostUninitialized();

  @override
  Stream<PostState> mapEventToState(PostEvent event) async* {
    List<Post> posts;
    if (state is PostUninitialized) {
      // belum pernah load data
      posts = await Post.connectToAPI(0, 10);
      yield PostLoaded(posts: posts, hasReachedMax: false);
    } else {
      // sudah load data
      // state saat ini
      PostLoaded postLoaded = state as PostLoaded;
      posts = await Post.connectToAPI(postLoaded.posts.length, 10);
      yield (posts.isEmpty)
          ? postLoaded.copyWith(hasReachedMax: true)
          : PostLoaded(posts: postLoaded.posts + posts, hasReachedMax: false);
    }
  }
}
