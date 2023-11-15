import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:client_1/home/home.dart';
import 'package:domain/domain.dart';
import 'package:equatable/equatable.dart';
import 'package:injectable/injectable.dart';
import 'package:stream_transform/stream_transform.dart';

part 'home_page_event.dart';
part 'home_page_state.dart';

const _postLimit = 20;
const throttleDuration = Duration(milliseconds: 100);

EventTransformer<E> throttleDroppable<E>(Duration duration) {
  return (events, mapper) {
    return droppable<E>().call(events.throttle(duration), mapper);
  };
}

@Injectable()
class HomePageBloc extends Bloc<HomePageEvent, HomePageState> {
  HomePageBloc({required this.getAssetListUseCase})
      : super(const HomePageState()) {
    on<PostFetched>(
      _onPostFetched,
      transformer: throttleDroppable(throttleDuration),
    );
  }

  final GetAssetListUseCase getAssetListUseCase;

  Future<void> _onPostFetched(
    PostFetched event,
    Emitter<HomePageState> emit,
  ) async {
    if (state.hasReachedMax) return;
    try {
      if (state.status == PostStatus.initial) {
        final posts = await _fetchPosts();
        return emit(
          state.copyWith(
            status: PostStatus.success,
            posts: posts,
            hasReachedMax: false,
          ),
        );
      }
      final posts = await _fetchPosts(state.posts.length);
      posts.isEmpty
          ? emit(state.copyWith(hasReachedMax: true))
          : emit(
              state.copyWith(
                status: PostStatus.success,
                posts: List.of(state.posts)..addAll(posts),
                hasReachedMax: false,
              ),
            );
    } catch (_) {
      emit(state.copyWith(status: PostStatus.failure));
    }
  }

  Future<List<Post>> _fetchPosts([int startIndex = 0]) async {
    final assetList = await getAssetListUseCase.call();
    print('HUYHUY assetList ${assetList.data.length}');
    return [];
    // final response = await httpClient.get(
    //   Uri.https(
    //     'jsonplaceholder.typicode.com',
    //     '/posts',
    //     <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
    //   ),
    // );
    // if (response.statusCode == 200) {
    //   final body = json.decode(response.body) as List;
    //   return body.map((dynamic json) {
    //     final map = json as Map<String, dynamic>;
    //     return Post(
    //       id: map['id'] as int,
    //       title: map['title'] as String,
    //       body: map['body'] as String,
    //     );
    //   }).toList();
    // }
    // throw Exception('error fetching posts');
  }
}
