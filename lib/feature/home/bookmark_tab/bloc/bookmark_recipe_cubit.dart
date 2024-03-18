import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:foodie/feature/home/bookmark_tab/bloc/bookmark_recipe_state.dart';
import 'package:foodie/feature/home/bookmark_tab/repository/bookmark_recipe_repository.dart';
import 'package:foodie/model/recipe/recipe_basic.dart';

class BookmarkRecipeCubit extends Cubit<BookmarkRecipeState> {
  BookmarkRecipeCubit({required this.bookmarkRecipeRepository})
      : super(const BookmarkRecipeState());

  final BookmarkRecipeRepository bookmarkRecipeRepository;

  Future<void> getBookmarkRecipe() async {
    emit(
      state.copyWith(
        getBookmarkRecipeStatus: GetBookmarkRecipeStatus.loading,
        mess: '',
      ),
    );
    final result = await bookmarkRecipeRepository
        .getBookmarkRecipe(page: state.page)
        .run();

    result.match(
      (error) => emit(
        state.copyWith(
          getBookmarkRecipeStatus: GetBookmarkRecipeStatus.failure,
          mess: error,
        ),
      ),
      (response) {
        emit(
          state.copyWith(
            getBookmarkRecipeStatus: GetBookmarkRecipeStatus.success,
            bookmarkRecipeList:
                response.bookmarkRecipeList ?? state.bookmarkRecipeList,
            filterBookmarkRecipeList:
                response.bookmarkRecipeList ?? state.filterBookmarkRecipeList,
            page: state.page + 1,
          ),
        );
        filterRecipeList();
        search();
      },
    );
  }

  void filterRecipeList() {
    emit(state.copyWith(
      filterBookmarkRecipeStatus: FilterBookmarkRecipeStatus.start,
    ));

    List<RecipeBasic> filterList = [...state.filterBookmarkRecipeList];
    if (state.filterRecipe == FilterMode.rating) {
      filterList.sort((a, b) => (b.rating ?? 0).compareTo((a.rating ?? 0)));
    } else if (state.filterRecipe == FilterMode.comments) {
      filterList.sort(
          (a, b) => (b.numOfComment ?? 0).compareTo((a.numOfComment ?? 0)));
    } else if (state.filterRecipe == FilterMode.bookmarkNum) {
      filterList.sort(
          (a, b) => (b.numOfFollower ?? 0).compareTo((a.numOfFollower ?? 0)));
    } else {
      filterList = [...state.bookmarkRecipeList];
    }

    emit(state.copyWith(
      filterBookmarkRecipeList: filterList,
      filterBookmarkRecipeStatus: FilterBookmarkRecipeStatus.finish,
    ));
  }

  void search() {
    emit(state.copyWith(
      searchBookmarkRecipeStatus: SearchBookmarkRecipeStatus.start,
    ));

    List<RecipeBasic> searchList = (state.searchString != '')
        ? [
            ...state.filterBookmarkRecipeList.where(
              (recipe) => (recipe.recipeName ?? '').toLowerCase().contains(
                    state.searchString.toLowerCase(),
                  ),
            )
          ]
        : [...state.filterBookmarkRecipeList];

    emit(state.copyWith(
      filterBookmarkRecipeList: searchList,
      searchBookmarkRecipeStatus: SearchBookmarkRecipeStatus.finish,
    ));
  }

  void resetFilter() {
    emit(state.copyWith(
      // filterRecipe: FilterMode.none,
      filterBookmarkRecipeList: state.bookmarkRecipeList,
      filterBookmarkRecipeStatus: FilterBookmarkRecipeStatus.initial,
    ));
    search();
  }

  void resetSearch(){
    emit(state.copyWith(
      searchString: '',
      filterBookmarkRecipeList: state.bookmarkRecipeList,
      searchBookmarkRecipeStatus: SearchBookmarkRecipeStatus.initial,
    ));
    filterRecipeList();
  }

  void setFilterRecipe(FilterMode filterMode) {
    emit(state.copyWith(filterRecipe: filterMode));
    filterRecipeList();
  }

  void setSearchString(String searchString) =>
      emit(state.copyWith(searchString: searchString));
}
