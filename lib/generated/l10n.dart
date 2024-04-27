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

  /// `We are the largest community sharing cooking recipes in Vietnam`
  String get intro {
    return Intl.message(
      'We are the largest community sharing cooking recipes in Vietnam',
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

  /// `Email must not be empty`
  String get emailEmpty {
    return Intl.message(
      'Email must not be empty',
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

  /// `Password must not be empty`
  String get passwordEmpty {
    return Intl.message(
      'Password must not be empty',
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

  /// `Explore new recipes with us today !!!`
  String get registerTitle2 {
    return Intl.message(
      'Explore new recipes with us today !!!',
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

  /// `Please check your email to reset your password`
  String get forgotPasswordSuccess {
    return Intl.message(
      'Please check your email to reset your password',
      name: 'forgotPasswordSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Registration successful. Please check your email to confirm your account`
  String get registerSuccess {
    return Intl.message(
      'Registration successful. Please check your email to confirm your account',
      name: 'registerSuccess',
      desc: '',
      args: [],
    );
  }

  /// `Already have an account? `
  String get loginText1 {
    return Intl.message(
      'Already have an account? ',
      name: 'loginText1',
      desc: '',
      args: [],
    );
  }

  /// `Log in`
  String get loginText2 {
    return Intl.message(
      'Log in',
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

  /// `Please fill in your name`
  String get nameError {
    return Intl.message(
      'Please fill in your name',
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

  /// `Recipe Detail`
  String get recipe {
    return Intl.message(
      'Recipe Detail',
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

  /// `Confirm`
  String get confirm {
    return Intl.message(
      'Confirm',
      name: 'confirm',
      desc: '',
      args: [],
    );
  }

  /// `Cancel`
  String get cancel {
    return Intl.message(
      'Cancel',
      name: 'cancel',
      desc: '',
      args: [],
    );
  }

  /// `Write a review for this recipe`
  String get writeReview {
    return Intl.message(
      'Write a review for this recipe',
      name: 'writeReview',
      desc: '',
      args: [],
    );
  }

  /// `Enter your review here...`
  String get enterReview {
    return Intl.message(
      'Enter your review here...',
      name: 'enterReview',
      desc: '',
      args: [],
    );
  }

  /// `Rate this recipe`
  String get rateRecipe {
    return Intl.message(
      'Rate this recipe',
      name: 'rateRecipe',
      desc: '',
      args: [],
    );
  }

  /// `YOUR REVIEW`
  String get yourReview {
    return Intl.message(
      'YOUR REVIEW',
      name: 'yourReview',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get edit_profile {
    return Intl.message(
      'Edit Profile',
      name: 'edit_profile',
      desc: '',
      args: [],
    );
  }

  /// `Notifications`
  String get notification {
    return Intl.message(
      'Notifications',
      name: 'notification',
      desc: '',
      args: [],
    );
  }

  /// `Language`
  String get language {
    return Intl.message(
      'Language',
      name: 'language',
      desc: '',
      args: [],
    );
  }

  /// `English`
  String get lang {
    return Intl.message(
      'English',
      name: 'lang',
      desc: '',
      args: [],
    );
  }

  /// `Logout`
  String get logout {
    return Intl.message(
      'Logout',
      name: 'logout',
      desc: '',
      args: [],
    );
  }

  /// `Change Password`
  String get changePassword {
    return Intl.message(
      'Change Password',
      name: 'changePassword',
      desc: '',
      args: [],
    );
  }

  /// `Edit Profile`
  String get editProfile {
    return Intl.message(
      'Edit Profile',
      name: 'editProfile',
      desc: '',
      args: [],
    );
  }

  /// `SUBMIT`
  String get submit {
    return Intl.message(
      'SUBMIT',
      name: 'submit',
      desc: '',
      args: [],
    );
  }

  /// `Description`
  String get userDescription {
    return Intl.message(
      'Description',
      name: 'userDescription',
      desc: '',
      args: [],
    );
  }

  /// `User has no description`
  String get emptyUserDescription {
    return Intl.message(
      'User has no description',
      name: 'emptyUserDescription',
      desc: '',
      args: [],
    );
  }

  /// `Old Password`
  String get oldPassword {
    return Intl.message(
      'Old Password',
      name: 'oldPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your Old Password`
  String get oldPasswordHint {
    return Intl.message(
      'Enter Your Old Password',
      name: 'oldPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Old Password must not be empty`
  String get oldPasswordEmpty {
    return Intl.message(
      'Old Password must not be empty',
      name: 'oldPasswordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `New Password`
  String get newPassword {
    return Intl.message(
      'New Password',
      name: 'newPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your New Password`
  String get newPasswordHint {
    return Intl.message(
      'Enter Your New Password',
      name: 'newPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Old Password must not be empty`
  String get newPasswordEmpty {
    return Intl.message(
      'Old Password must not be empty',
      name: 'newPasswordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Confirm New Password`
  String get confirmNewPassword {
    return Intl.message(
      'Confirm New Password',
      name: 'confirmNewPassword',
      desc: '',
      args: [],
    );
  }

  /// `Enter Your New Password Again`
  String get confirmNewPasswordHint {
    return Intl.message(
      'Enter Your New Password Again',
      name: 'confirmNewPasswordHint',
      desc: '',
      args: [],
    );
  }

  /// `Confirmation Password must not be empty`
  String get confirmNewPasswordEmpty {
    return Intl.message(
      'Confirmation Password must not be empty',
      name: 'confirmNewPasswordEmpty',
      desc: '',
      args: [],
    );
  }

  /// `Edit your password`
  String get editPassword {
    return Intl.message(
      'Edit your password',
      name: 'editPassword',
      desc: '',
      args: [],
    );
  }

  /// `Logging Out`
  String get logoutDialogTitle {
    return Intl.message(
      'Logging Out',
      name: 'logoutDialogTitle',
      desc: '',
      args: [],
    );
  }

  /// `Are you sure you want to log out of this account?`
  String get logoutDialogContent {
    return Intl.message(
      'Are you sure you want to log out of this account?',
      name: 'logoutDialogContent',
      desc: '',
      args: [],
    );
  }

  /// `User Profile`
  String get userProfile {
    return Intl.message(
      'User Profile',
      name: 'userProfile',
      desc: '',
      args: [],
    );
  }

  /// `Follow`
  String get follow {
    return Intl.message(
      'Follow',
      name: 'follow',
      desc: '',
      args: [],
    );
  }

  /// `Following`
  String get following {
    return Intl.message(
      'Following',
      name: 'following',
      desc: '',
      args: [],
    );
  }

  /// `Follower`
  String get follower {
    return Intl.message(
      'Follower',
      name: 'follower',
      desc: '',
      args: [],
    );
  }

  /// `Recipe`
  String get recipeProfile {
    return Intl.message(
      'Recipe',
      name: 'recipeProfile',
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
