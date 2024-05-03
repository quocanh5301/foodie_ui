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
        if (response.recipeList != null) {
          if (response.recipeList!.length <
              bookmarkRecipeRepository.bookmarkRecipeProvider.pageSize) {
            emit(
              state.copyWith(
                getBookmarkRecipeStatus: GetBookmarkRecipeStatus.noMore,
                bookmarkRecipeList: [
                  ...state.bookmarkRecipeList,
                  ...response.recipeList!,
                ],
                filterBookmarkRecipeList: [
                  ...state.filterBookmarkRecipeList,
                  ...response.recipeList!,
                ],
                page: state.page + 1,
              ),
            );
          } else {
            emit(
              state.copyWith(
                getBookmarkRecipeStatus: GetBookmarkRecipeStatus.success,
                bookmarkRecipeList: [
                  ...state.bookmarkRecipeList,
                  ...response.recipeList!,
                ],
                filterBookmarkRecipeList: [
                  ...state.filterBookmarkRecipeList,
                  ...response.recipeList!,
                ],
                page: state.page + 1,
              ),
            );
          }
        } else {
          emit(
            state.copyWith(
              getBookmarkRecipeStatus: GetBookmarkRecipeStatus.noMore,
              page: state.page + 1,
            ),
          );
        }
        filterRecipeList();
        // search();
      },
    );
  }

  Future<void> refreshBookmarkRecipe() async {
    emit(
      state.copyWith(
        page: 0,
        bookmarkRecipeList: [],
        filterBookmarkRecipeList: [],
        getBookmarkRecipeStatus: GetBookmarkRecipeStatus.initial,
        mess: '',
      ),
    );

    await getBookmarkRecipe();
  }

  void filterRecipeList() {
    emit(state.copyWith(
      filterBookmarkRecipeStatus: FilterBookmarkRecipeStatus.start,
    ));

    List<RecipeBasic> filterList = [...state.bookmarkRecipeList];

    if (state.filterRecipe == FilterMode.rating) {
      filterList.sort(
        (recipe, anotherRecipe) =>
            (anotherRecipe.rating ?? 0).compareTo((recipe.rating ?? 0)),
      );
    } else if (state.filterRecipe == FilterMode.comments) {
      filterList.sort(
        (recipe, anotherRecipe) => (anotherRecipe.numOfComment ?? 0)
            .compareTo((recipe.numOfComment ?? 0)),
      );
    } else if (state.filterRecipe == FilterMode.bookmarkNum) {
      filterList.sort(
        (recipe, anotherRecipe) => (anotherRecipe.numOfFollower ?? 0)
            .compareTo((recipe.numOfFollower ?? 0)),
      );
    } else {
      filterList = [...state.bookmarkRecipeList];
    }

    emit(state.copyWith(
      filterBookmarkRecipeList: filterList,
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
      filterBookmarkRecipeStatus: FilterBookmarkRecipeStatus.finish,
    ));
  }

  void search() {
    emit(state.copyWith(
      searchBookmarkRecipeStatus: SearchBookmarkRecipeStatus.start,
    ));

    List<RecipeBasic> searchList = (state.searchString != '')
        ? [
            ...state.bookmarkRecipeList.where(
              (recipe) => (recipe.recipeName ?? '').toLowerCase().contains(
                    state.searchString.toLowerCase(),
                  ),
            )
          ]
        : [...state.bookmarkRecipeList];

    emit(state.copyWith(
      filterBookmarkRecipeList: searchList,
    ));

    List<RecipeBasic> filterList = [...state.filterBookmarkRecipeList];

    if (state.filterRecipe == FilterMode.rating) {
      filterList.sort(
        (recipe, anotherRecipe) =>
            (anotherRecipe.rating ?? 0).compareTo((recipe.rating ?? 0)),
      );
    } else if (state.filterRecipe == FilterMode.comments) {
      filterList.sort(
        (recipe, anotherRecipe) => (anotherRecipe.numOfComment ?? 0)
            .compareTo((recipe.numOfComment ?? 0)),
      );
    } else if (state.filterRecipe == FilterMode.bookmarkNum) {
      filterList.sort(
        (recipe, anotherRecipe) => (anotherRecipe.numOfFollower ?? 0)
            .compareTo((recipe.numOfFollower ?? 0)),
      );
    } 
    // else {
    //   filterList = [...state.bookmarkRecipeList];
    // }

    emit(state.copyWith(
      filterBookmarkRecipeList: filterList,
      searchBookmarkRecipeStatus: SearchBookmarkRecipeStatus.finish,
    ));
  }

  void resetSearch() {
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
