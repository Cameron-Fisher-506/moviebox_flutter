
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:moviebox/common/enum/status.dart';
import 'package:moviebox/common/manager/navigationManager/navigation_manager.dart';
import 'package:moviebox/domain/fetch_movie_list_by_title_use_case.dart';
import 'package:moviebox/presentation/home/homeMovieScreenBloc/home_movie_event.dart';
import 'package:moviebox/presentation/home/homeMovieScreenBloc/home_movie_state.dart';
import 'package:moviebox/presentation/home/home_movie_flow_manager.dart';

import '../../../common/di/locator.dart';

class HomeMovieBloc extends Bloc<HomeMovieEvent, MovieListState> {
  final NavigationManager _navigationManager = locator<NavigationManager>();
  final FetchMovieListByTitleUseCase _fetchMovieListByTitleUseCase = locator<FetchMovieListByTitleUseCase>();

  HomeMovieBloc() : super(MovieListState(isLoading: true)) {
    on<InitState>((event, emit) async {
      await _fetchMovieListByTitleUseCase("ATL").forEach((resource) {
        switch(resource.status) {
          case Status.loading:
            emit(MovieListState(isLoading: true));
          case Status.success:
            final data = resource.data;
            if (data != null) {
              emit(MovieListState(movieList: data));
            }
          case Status.error:
            emit(MovieListState(errorMessage: "No movies found."));
        }
      });
    });
  }

}