// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Chúng tôi là cộng đồng chia sẻ công thức nấu ăn lớn nhất Việt Nam`
  String get intro {
    return Intl.message(
      'Chúng tôi là cộng đồng chia sẻ công thức nấu ăn lớn nhất Việt Nam',
      name: 'intro',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login {
    return Intl.message(
      'Login',
      name: 'login',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get email {
    return Intl.message(
      'Email',
      name: 'email',
      desc: '',
      args: [],
    );
  }

  /// `Email`
  String get emailHint {
    return Intl.message(
      'Email',
      name: 'emailHint',
      desc: '',
      args: [],
    );
  }

  /// `Email must not empty`
  String get emailEmpty {
    return Intl.message(
      'Email must not empty',
      name: 'emailEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Email is not valid`
  String get emailFormatError {
    return Intl.message(
      'Email is not valid',
      name: 'emailFormatError',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get password {
    return Intl.message(
      'Password',
      name: 'password',
      desc: '',
      args: [],
    );
  }

  /// `Password`
  String get passwordHint {
    return Intl.message(
      'Password',
      name: 'passwordHint',
      desc: '',
      args: [],
    );
  }

  /// `Password must not empty`
  String get passwordEmpty {
    return Intl.message(
      'Password must not empty',
      name: 'passwordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Register`
  String get register {
    return Intl.message(
      'Register',
      name: 'register',
      desc: '',
      args: [],
    );
  }

  /// `Don't have an account? `
  String get registerText1 {
    return Intl.message(
      'Don\'t have an account? ',
      name: 'registerText1',
      desc: '',
      args: [],
    );
  }

  /// `Create one`
  String get registerText2 {
    return Intl.message(
      'Create one',
      name: 'registerText2',
      desc: '',
      args: [],
    );
  }

  /// `Create Account`
  String get registerTitle1 {
    return Intl.message(
      'Create Account',
      name: 'registerTitle1',
      desc: '',
      args: [],
    );
  }

  /// `Explore new recipe with us today !!!`
  String get registerTitle2 {
    return Intl.message(
      'Explore new recipe with us today !!!',
      name: 'registerTitle2',
      desc: '',
      args: [],
    );
  }

  /// `Forgot Password?`
  String get forgotPassword {
    return Intl.message(
      'Forgot Password?',
      name: 'forgotPassword',
      desc: '',
      args: [],
    );
  }

  /// `Hãy kiểm tra email của bạn để lấy lại mật khẩu`
  String get forgotPasswordSuccess {
    return Intl.message(
      'Hãy kiểm tra email của bạn để lấy lại mật khẩu',
      name: 'forgotPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Đăng ký thành công, hãy kiểm tra email của bạn để xác nhận tài khoản`
  String get registerSuccess {
    return Intl.message(
      'Đăng ký thành công, hãy kiểm tra email của bạn để xác nhận tài khoản',
      name: 'registerSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Bạn đã có tài khoản? `
  String get loginText1 {
    return Intl.message(
      'Bạn đã có tài khoản? ',
      name: 'loginText1',
      desc: '',
      args: [],
    );
  }

  /// `Đăng nhập`
  String get loginText2 {
    return Intl.message(
      'Đăng nhập',
      name: 'loginText2',
      desc: '',
      args: [],
    );
  }

  /// `Name`
  String get name {
    return Intl.message(
      'Name',
      name: 'name',
      desc: '',
      args: [],
    );
  }

  /// `Enter your Name`
  String get nameHint {
    return Intl.message(
      'Enter your Name',
      name: 'nameHint',
      desc: '',
      args: [],
    );
  }

  /// `Please fill name`
  String get nameError {
    return Intl.message(
      'Please fill name',
      name: 'nameError',
      desc: '',
      args: [],
    );
  }

  /// `OK`
  String get ok {
    return Intl.message(
      'OK',
      name: 'ok',
      desc: '',
      args: [],
    );
  }

  /// `Search`
  String get searchAll {
    return Intl.message(
      'Search',
      name: 'searchAll',
      desc: '',
      args: [],
    );
  }

  /// `What would you like to cook today?`
  String get explore {
    return Intl.message(
      'What would you like to cook today?',
      name: 'explore',
      desc: '',
      args: [],
    );
  }

  /// `Explore`
  String get homeExplore {
    return Intl.message(
      'Explore',
      name: 'homeExplore',
      desc: '',
      args: [],
    );
  }

  /// `Create Recipe`
  String get homeCreateRecipe {
    return Intl.message(
      'Create Recipe',
      name: 'homeCreateRecipe',
      desc: '',
      args: [],
    );
  }

  /// `Bookmark`
  String get homeBookmarkRecipe {
    return Intl.message(
      'Bookmark',
      name: 'homeBookmarkRecipe',
      desc: '',
      args: [],
    );
  }

  /// `Profile`
  String get homeProfile {
    return Intl.message(
      'Profile',
      name: 'homeProfile',
      desc: '',
      args: [],
    );
  }

  /// `New Recipe From Your Followed User`
  String get recipeNewFollow {
    return Intl.message(
      'New Recipe From Your Followed User',
      name: 'recipeNewFollow',
      desc: '',
      args: [],
    );
  }

  /// `No new recipe from your followed user`
  String get recipeNewFollowNo {
    return Intl.message(
      'No new recipe from your followed user',
      name: 'recipeNewFollowNo',
      desc: '',
      args: [],
    );
  }

  /// `New Recipe`
  String get recipeNew {
    return Intl.message(
      'New Recipe',
      name: 'recipeNew',
      desc: '',
      args: [],
    );
  }

  /// `Top Recipe`
  String get topRecipe {
    return Intl.message(
      'Top Recipe',
      name: 'topRecipe',
      desc: '',
      args: [],
    );
  }

  /// `Add New Recipe`
  String get addRecipe {
    return Intl.message(
      'Add New Recipe',
      name: 'addRecipe',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Name`
  String get recipeLableField {
    return Intl.message(
      'Recipe Name',
      name: 'recipeLableField',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Name`
  String get recipeHintField {
    return Intl.message(
      'Recipe Name',
      name: 'recipeHintField',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Name must not empty`
  String get recipeErrorField {
    return Intl.message(
      'Recipe Name must not empty',
      name: 'recipeErrorField',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Description`
  String get recipeDescriptionLabel {
    return Intl.message(
      'Recipe Description',
      name: 'recipeDescriptionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Description`
  String get recipeDescriptionHint {
    return Intl.message(
      'Recipe Description',
      name: 'recipeDescriptionHint',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Instruction`
  String get recipeInstuctionLabel {
    return Intl.message(
      'Recipe Instruction',
      name: 'recipeInstuctionLabel',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Instruction`
  String get recipeInstuctionHint {
    return Intl.message(
      'Recipe Instruction',
      name: 'recipeInstuctionHint',
      desc: '',
      args: [],
    );
  }

  /// `Ingredient`
  String get ingredientLabel {
    return Intl.message(
      'Ingredient',
      name: 'ingredientLabel',
      desc: '',
      args: [],
    );
  }

  /// `Ingredient`
  String get ingredientHint {
    return Intl.message(
      'Ingredient',
      name: 'ingredientHint',
      desc: '',
      args: [],
    );
  }

  /// `Ingredient must not empty`
  String get ingredientError {
    return Intl.message(
      'Ingredient must not empty',
      name: 'ingredientError',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantityLabel {
    return Intl.message(
      'Quantity',
      name: 'quantityLabel',
      desc: '',
      args: [],
    );
  }

  /// `Quantity`
  String get quantityHint {
    return Intl.message(
      'Quantity',
      name: 'quantityHint',
      desc: '',
      args: [],
    );
  }

  /// `Quantity must not empty`
  String get quantityError {
    return Intl.message(
      'Quantity must not empty',
      name: 'quantityError',
      desc: '',
      args: [],
    );
  }

  /// `Add Ingredient`
  String get addIngredientButton {
    return Intl.message(
      'Add Ingredient',
      name: 'addIngredientButton',
      desc: '',
      args: [],
    );
  }

  /// `Create New Recipe !!!`
  String get createNewRecipe {
    return Intl.message(
      'Create New Recipe !!!',
      name: 'createNewRecipe',
      desc: '',
      args: [],
    );
  }

  /// `'Remove Photo'`
  String get removePhotoButton {
    return Intl.message(
      '\'Remove Photo\'',
      name: 'removePhotoButton',
      desc: '',
      args: [],
    );
  }

  /// `Add Photo`
  String get addPhotoButton {
    return Intl.message(
      'Add Photo',
      name: 'addPhotoButton',
      desc: '',
      args: [],
    );
  }

  /// `Choose Another Photo`
  String get chooseAnotherPhotoButton {
    return Intl.message(
      'Choose Another Photo',
      name: 'chooseAnotherPhotoButton',
      desc: '',
      args: [],
    );
  }

  /// `Camera`
  String get camera {
    return Intl.message(
      'Camera',
      name: 'camera',
      desc: '',
      args: [],
    );
  }

  /// `Gallery`
  String get gallery {
    return Intl.message(
      'Gallery',
      name: 'gallery',
      desc: '',
      args: [],
    );
  }

  /// `Your Bookmark Recipe`
  String get bookmarkTab {
    return Intl.message(
      'Your Bookmark Recipe',
      name: 'bookmarkTab',
      desc: '',
      args: [],
    );
  }

  /// `No Bookmark Recipe Found`
  String get noBookmarkRecipefound {
    return Intl.message(
      'No Bookmark Recipe Found',
      name: 'noBookmarkRecipefound',
      desc: '',
      args: [],
    );
  }

  /// `All`
  String get allFilter {
    return Intl.message(
      'All',
      name: 'allFilter',
      desc: '',
      args: [],
    );
  }

  /// `Rating`
  String get ratingFilter {
    return Intl.message(
      'Rating',
      name: 'ratingFilter',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get commentsFilter {
    return Intl.message(
      'Comments',
      name: 'commentsFilter',
      desc: '',
      args: [],
    );
  }

  /// `Bookmark`
  String get bookmarkNumFilter {
    return Intl.message(
      'Bookmark',
      name: 'bookmarkNumFilter',
      desc: '',
      args: [],
    );
  }

  /// `No Name Recipe`
  String get noNameRecipe {
    return Intl.message(
      'No Name Recipe',
      name: 'noNameRecipe',
      desc: '',
      args: [],
    );
  }

  /// `No Name User`
  String get noNameUser {
    return Intl.message(
      'No Name User',
      name: 'noNameUser',
      desc: '',
      args: [],
    );
  }

  /// `No Review`
  String get noReviewText {
    return Intl.message(
      'No Review',
      name: 'noReviewText',
      desc: '',
      args: [],
    );
  }

  /// `Your recipes`
  String get yourRecipeTab {
    return Intl.message(
      'Your recipes',
      name: 'yourRecipeTab',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get yourReviews {
    return Intl.message(
      'Reviews',
      name: 'yourReviews',
      desc: '',
      args: [],
    );
  }

  /// `No Recipe Found`
  String get emptyRecipe {
    return Intl.message(
      'No Recipe Found',
      name: 'emptyRecipe',
      desc: '',
      args: [],
    );
  }

  /// `No Review Found`
  String get emptyReview {
    return Intl.message(
      'No Review Found',
      name: 'emptyReview',
      desc: '',
      args: [],
    );
  }

  /// `Your Profile`
  String get yourProfile {
    return Intl.message(
      'Your Profile',
      name: 'yourProfile',
      desc: '',
      args: [],
    );
  }

  /// `User don't have an Email`
  String get noEmail {
    return Intl.message(
      'User don\'t have an Email',
      name: 'noEmail',
      desc: '',
      args: [],
    );
  }

  /// `User don't have a Description`
  String get noDescription {
    return Intl.message(
      'User don\'t have a Description',
      name: 'noDescription',
      desc: '',
      args: [],
    );
  }

  /// `Author`
  String get author {
    return Intl.message(
      'Author',
      name: 'author',
      desc: '',
      args: [],
    );
  }

  /// `Join Since`
  String get joinSince {
    return Intl.message(
      'Join Since',
      name: 'joinSince',
      desc: '',
      args: [],
    );
  }

  /// `Update At`
  String get updateAt {
    return Intl.message(
      'Update At',
      name: 'updateAt',
      desc: '',
      args: [],
    );
  }

  /// `Follwers`
  String get numOfFollower {
    return Intl.message(
      'Follwers',
      name: 'numOfFollower',
      desc: '',
      args: [],
    );
  }

  /// `Empty`
  String get empty {
    return Intl.message(
      'Empty',
      name: 'empty',
      desc: '',
      args: [],
    );
  }

  /// `No Description Author`
  String get noDescriptionAuthor {
    return Intl.message(
      'No Description Author',
      name: 'noDescriptionAuthor',
      desc: '',
      args: [],
    );
  }

  /// `No Description Recipe`
  String get noDescriptionRecipe {
    return Intl.message(
      'No Description Recipe',
      name: 'noDescriptionRecipe',
      desc: '',
      args: [],
    );
  }

  /// `Ingredients`
  String get numOfIngredients {
    return Intl.message(
      'Ingredients',
      name: 'numOfIngredients',
      desc: '',
      args: [],
    );
  }

  /// `Detail`
  String get detail {
    return Intl.message(
      'Detail',
      name: 'detail',
      desc: '',
      args: [],
    );
  }

  /// `Reviews`
  String get review {
    return Intl.message(
      'Reviews',
      name: 'review',
      desc: '',
      args: [],
    );
  }

  /// `Comments`
  String get comment {
    return Intl.message(
      'Comments',
      name: 'comment',
      desc: '',
      args: [],
    );
  }

  /// `Recipe Infomation`
  String get recipeInfo {
    return Intl.message(
      'Recipe Infomation',
      name: 'recipeInfo',
      desc: '',
      args: [],
    );
  }

  /// `Recipe`
  String get recipe {
    return Intl.message(
      'Recipe',
      name: 'recipe',
      desc: '',
      args: [],
    );
  }

  /// `Empty Ingredient`
  String get emptyIngrdients {
    return Intl.message(
      'Empty Ingredient',
      name: 'emptyIngrdients',
      desc: '',
      args: [],
    );
  }

  /// `No Ingredient Name`
  String get noIngredientName {
    return Intl.message(
      'No Ingredient Name',
      name: 'noIngredientName',
      desc: '',
      args: [],
    );
  }

  /// `No Ingredient Amount Specified`
  String get noIngredientAmount {
    return Intl.message(
      'No Ingredient Amount Specified',
      name: 'noIngredientAmount',
      desc: '',
      args: [],
    );
  }

  /// `This recipe has no instruction !`
  String get noInstructionRecipe {
    return Intl.message(
      'This recipe has no instruction !',
      name: 'noInstructionRecipe',
      desc: '',
      args: [],
    );
  }

  /// `Rate For This Recipe`
  String get rateThisRecipe {
    return Intl.message(
      'Rate For This Recipe',
      name: 'rateThisRecipe',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
      Locale.fromSubtags(languageCode: 'vi'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
