import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:marvel/core/utils/api_service.dart';
import 'package:marvel/core/utils/go_router.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:marvel/features/home/presentation/manager/fetch_popular_movies/fetch_popular_movies_cubit.dart';
import 'package:marvel/features/home/presentation/manager/movies_details/movies_details_cubit.dart';
import 'package:marvel/features/home/presentation/manager/popular_series/popular_series_cubit.dart';
import 'package:marvel/features/home/presentation/manager/series_details/series_details_cubit.dart';

import 'features/home/data/repos/home_repo_impl.dart';

void main() {
  runApp(const MarvelApp());
}

class MarvelApp extends StatelessWidget {
  const MarvelApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
            create: (context) =>
                FetchPopularMoviesCubit((HomeRepoImpl(ApiService(Dio()))))..fetchPopularMovies()
                ),
        BlocProvider(
            create: (context) =>
                PopularSeriesCubit((HomeRepoImpl(ApiService(Dio()))))),
        BlocProvider(
            create: (context) =>
                MoviesDetailsCubit((HomeRepoImpl(ApiService(Dio()))))),
        BlocProvider(
            create: (context) =>
                SeriesDetailsCubit((HomeRepoImpl(ApiService(Dio())))))
      ],
      child: MaterialApp.router(
        routerConfig: AppRouter.router,
        title: 'MarvelApp',
        theme: ThemeData(
          fontFamily: 'Gilroy',
          useMaterial3: true,
        ),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
