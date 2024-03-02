import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_staggered_animations/flutter_staggered_animations.dart';
import 'package:marvel/core/errors/custom_error_widget.dart';
import 'package:marvel/core/errors/custom_loading.dart';
import 'package:marvel/features/home/presentation/manager/fetch_popular_movies/fetch_popular_movies_cubit.dart';
import 'package:marvel/features/home/presentation/view/widgets/newmovies_item.dart';

class NewMoviesScrollView extends StatelessWidget {
  const NewMoviesScrollView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<FetchPopularMoviesCubit, FetchPopularMoviesState>(
      builder: (context, state) {
        if (state is PopularMoviesSuccess) {
          return SizedBox(
              width: MediaQuery.of(context).size.height * 1,
              child: CarouselSlider.builder(
                itemCount: 5,
                itemBuilder:
                    (BuildContext context, int itemIndex, int pageViewIndex) {
                  return AnimationConfiguration.staggeredList(
                      position: 0,
                      duration: Duration(milliseconds: 2500),
                      child: SlideAnimation(
                          horizontalOffset: 50,
                          child: FadeInAnimation(
                              child: NewMoviesItem(
                            popularMovies: state.PopularMovies[itemIndex],
                          ))));
                },
                options: CarouselOptions(
                    autoPlay: true,
                    aspectRatio: 16 / 8,
                    enlargeCenterPage: true,
                    autoPlayAnimationDuration: const Duration(seconds: 2),
                    enlargeFactor: 0.2),
              ));
        } else if (state is PopularMoviesFailure) {
          return CustomErrorWidget(errMessage: state.errMessage);
        } else
          return CustomLoadingIndicator();
      },
    );
  }
}
