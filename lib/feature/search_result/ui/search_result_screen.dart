import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/core/injection.dart';
import 'package:foodie/core/resource/styles.dart';
import 'package:foodie/feature/search_result/bloc/search_result_cubit.dart';
import 'package:foodie/feature/search_result/bloc/search_result_state.dart';
import 'package:foodie/feature/search_result/ui/widget/search_tabbar.dart';
import 'package:foodie/generated/l10n.dart';

class SearchResultScreen extends StatelessWidget {
  const SearchResultScreen({
    super.key,
    required this.keyword,
  });

  final String keyword;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: '#2b2b2b'.toColor(),
      appBar: AppBar(
          backgroundColor: '#FF6B00'.toColor().withOpacity(0.3),
          centerTitle: false,
          iconTheme: const IconThemeData(color: Colors.white),
          title: Text(
            '${S.of(context).searchResult} \'$keyword\'',
            style: AppStyles.f16sb().copyWith(
              color: Colors.white,
            ),
          )),
      body: BlocProvider<SearchResultCubit>(
        create: (context) => sl<SearchResultCubit>()..setSearchKey(keyword),
        child: BlocBuilder<SearchResultCubit, SearchResultState>(
          builder: (context, state) {
            return const SearchTabWidget();
          },
        ),
      ),
    );
  }
}
