import 'dart:async';

import 'package:flutter/foundation.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'package:intl/intl.dart' as intl;

import 'app_localizations_en.dart';
import 'app_localizations_ne.dart';

/// Callers can lookup localized strings with an instance of AppLocalizations
/// returned by `AppLocalizations.of(context)`.
///
/// Applications need to include `AppLocalizations.delegate()` in their app's
/// `localizationDelegates` list, and the locales they support in the app's
/// `supportedLocales` list. For example:
///
/// ```dart
/// import 'gen_l10n/app_localizations.dart';
///
/// return MaterialApp(
///   localizationsDelegates: AppLocalizations.localizationsDelegates,
///   supportedLocales: AppLocalizations.supportedLocales,
///   home: MyApplicationHome(),
/// );
/// ```
///
/// ## Update pubspec.yaml
///
/// Please make sure to update your pubspec.yaml to include the following
/// packages:
///
/// ```yaml
/// dependencies:
///   # Internationalization support.
///   flutter_localizations:
///     sdk: flutter
///   intl: any # Use the pinned version from flutter_localizations
///
///   # Rest of dependencies
/// ```
///
/// ## iOS Applications
///
/// iOS applications define key application metadata, including supported
/// locales, in an Info.plist file that is built into the application bundle.
/// To configure the locales supported by your app, you’ll need to edit this
/// file.
///
/// First, open your project’s ios/Runner.xcworkspace Xcode workspace file.
/// Then, in the Project Navigator, open the Info.plist file under the Runner
/// project’s Runner folder.
///
/// Next, select the Information Property List item, select Add Item from the
/// Editor menu, then select Localizations from the pop-up menu.
///
/// Select and expand the newly-created Localizations item then, for each
/// locale your application supports, add a new item and select the locale
/// you wish to add from the pop-up menu in the Value field. This list should
/// be consistent with the languages listed in the AppLocalizations.supportedLocales
/// property.
abstract class AppLocalizations {
  AppLocalizations(String locale) : localeName = intl.Intl.canonicalizedLocale(locale.toString());

  final String localeName;

  static AppLocalizations of(BuildContext context) {
    return Localizations.of<AppLocalizations>(context, AppLocalizations)!;
  }

  static const LocalizationsDelegate<AppLocalizations> delegate = _AppLocalizationsDelegate();

  /// A list of this localizations delegate along with the default localizations
  /// delegates.
  ///
  /// Returns a list of localizations delegates containing this delegate along with
  /// GlobalMaterialLocalizations.delegate, GlobalCupertinoLocalizations.delegate,
  /// and GlobalWidgetsLocalizations.delegate.
  ///
  /// Additional delegates can be added by appending to this list in
  /// MaterialApp. This list does not have to be used at all if a custom list
  /// of delegates is preferred or required.
  static const List<LocalizationsDelegate<dynamic>> localizationsDelegates = <LocalizationsDelegate<dynamic>>[
    delegate,
    GlobalMaterialLocalizations.delegate,
    GlobalCupertinoLocalizations.delegate,
    GlobalWidgetsLocalizations.delegate,
  ];

  /// A list of this localizations delegate's supported locales.
  static const List<Locale> supportedLocales = <Locale>[
    Locale('en'),
    Locale('ne')
  ];

  /// No description provided for @appName.
  ///
  /// In en, this message translates to:
  /// **'veda'**
  String get appName;

  /// No description provided for @description.
  ///
  /// In en, this message translates to:
  /// **'Description'**
  String get description;

  /// No description provided for @details.
  ///
  /// In en, this message translates to:
  /// **'Details'**
  String get details;

  /// No description provided for @when.
  ///
  /// In en, this message translates to:
  /// **'When'**
  String get when;

  /// No description provided for @okay.
  ///
  /// In en, this message translates to:
  /// **'Ok'**
  String get okay;

  /// No description provided for @cancel.
  ///
  /// In en, this message translates to:
  /// **'Cancel'**
  String get cancel;

  /// No description provided for @onThePlace.
  ///
  /// In en, this message translates to:
  /// **'On The Place'**
  String get onThePlace;

  /// No description provided for @editDetails.
  ///
  /// In en, this message translates to:
  /// **'Edit Details'**
  String get editDetails;

  /// No description provided for @saveDetails.
  ///
  /// In en, this message translates to:
  /// **'Save Details'**
  String get saveDetails;

  /// No description provided for @voucher.
  ///
  /// In en, this message translates to:
  /// **'Voucher'**
  String get voucher;

  /// No description provided for @search.
  ///
  /// In en, this message translates to:
  /// **'Search'**
  String get search;

  /// No description provided for @menu.
  ///
  /// In en, this message translates to:
  /// **'Menu'**
  String get menu;

  /// No description provided for @buyVouchers.
  ///
  /// In en, this message translates to:
  /// **'Buy Vouchers'**
  String get buyVouchers;

  /// No description provided for @balance.
  ///
  /// In en, this message translates to:
  /// **'Balance'**
  String get balance;

  /// No description provided for @payment.
  ///
  /// In en, this message translates to:
  /// **'Payment'**
  String get payment;

  /// No description provided for @name.
  ///
  /// In en, this message translates to:
  /// **'Name'**
  String get name;

  /// No description provided for @vouchersValue.
  ///
  /// In en, this message translates to:
  /// **'Vouchers Value'**
  String get vouchersValue;

  /// No description provided for @numberOfVouchers.
  ///
  /// In en, this message translates to:
  /// **'Number of Vouchers'**
  String get numberOfVouchers;

  /// No description provided for @doYouHaveAPromocode.
  ///
  /// In en, this message translates to:
  /// **'Do you have a promo code ?'**
  String get doYouHaveAPromocode;

  /// No description provided for @buy.
  ///
  /// In en, this message translates to:
  /// **'Buy'**
  String get buy;

  /// No description provided for @assign.
  ///
  /// In en, this message translates to:
  /// **'Assign'**
  String get assign;

  /// No description provided for @send.
  ///
  /// In en, this message translates to:
  /// **'Send'**
  String get send;

  /// No description provided for @login.
  ///
  /// In en, this message translates to:
  /// **'Login'**
  String get login;

  /// No description provided for @vouchersCode.
  ///
  /// In en, this message translates to:
  /// **'Vouchers Code'**
  String get vouchersCode;

  /// No description provided for @enterDigitsCode.
  ///
  /// In en, this message translates to:
  /// **'enter 16 digits code'**
  String get enterDigitsCode;

  /// No description provided for @redeem.
  ///
  /// In en, this message translates to:
  /// **'Redeem'**
  String get redeem;

  /// No description provided for @add.
  ///
  /// In en, this message translates to:
  /// **'Add'**
  String get add;

  /// No description provided for @yourBalance.
  ///
  /// In en, this message translates to:
  /// **'Your Balance'**
  String get yourBalance;

  /// No description provided for @expiryDate.
  ///
  /// In en, this message translates to:
  /// **'Expiry Date'**
  String get expiryDate;

  /// No description provided for @notice.
  ///
  /// In en, this message translates to:
  /// **'Notice'**
  String get notice;

  /// No description provided for @addDialogueContentText.
  ///
  /// In en, this message translates to:
  /// **'After clicking OK, this voucher will be added to your list of vouchers on the veda app, and can be used with your future payments. Redeemed vouchers cannot be sent to third parties'**
  String get addDialogueContentText;

  /// No description provided for @redeemDialogueContentText.
  ///
  /// In en, this message translates to:
  /// **'In order for you to use this voucher without adding it to your vouchers list. Click “Redeem”. Otherwise, click “Add”'**
  String get redeemDialogueContentText;

  /// No description provided for @totalItem.
  ///
  /// In en, this message translates to:
  /// **'Total Item'**
  String get totalItem;

  /// No description provided for @selectAVoucher.
  ///
  /// In en, this message translates to:
  /// **'Select A Voucher'**
  String get selectAVoucher;

  /// No description provided for @addPaymentMethod.
  ///
  /// In en, this message translates to:
  /// **'Add Payment Method'**
  String get addPaymentMethod;

  /// No description provided for @remaingAmount.
  ///
  /// In en, this message translates to:
  /// **'Remaining Amount'**
  String get remaingAmount;

  /// No description provided for @underConstruction.
  ///
  /// In en, this message translates to:
  /// **'Under Construction'**
  String get underConstruction;

  /// No description provided for @sucessMessage.
  ///
  /// In en, this message translates to:
  /// **'Sucess'**
  String get sucessMessage;

  /// No description provided for @paymentSucess.
  ///
  /// In en, this message translates to:
  /// **'Payment Sucess.'**
  String get paymentSucess;

  /// No description provided for @enterPromoCode.
  ///
  /// In en, this message translates to:
  /// **'Enter promocode'**
  String get enterPromoCode;

  /// No description provided for @call.
  ///
  /// In en, this message translates to:
  /// **'Call'**
  String get call;

  /// No description provided for @direction.
  ///
  /// In en, this message translates to:
  /// **'Direction'**
  String get direction;

  /// No description provided for @share.
  ///
  /// In en, this message translates to:
  /// **'Share'**
  String get share;

  /// No description provided for @aboutThePlace.
  ///
  /// In en, this message translates to:
  /// **'About the Place'**
  String get aboutThePlace;

  /// No description provided for @viewOnTheMap.
  ///
  /// In en, this message translates to:
  /// **'View on the Map'**
  String get viewOnTheMap;

  /// No description provided for @quantity.
  ///
  /// In en, this message translates to:
  /// **'Quantity'**
  String get quantity;

  /// No description provided for @myTrip.
  ///
  /// In en, this message translates to:
  /// **'My Trips'**
  String get myTrip;

  /// No description provided for @createTrip.
  ///
  /// In en, this message translates to:
  /// **'Create Trip'**
  String get createTrip;

  /// No description provided for @business.
  ///
  /// In en, this message translates to:
  /// **'Business'**
  String get business;

  /// No description provided for @addPlace.
  ///
  /// In en, this message translates to:
  /// **'Add Place'**
  String get addPlace;

  /// No description provided for @helloGuest.
  ///
  /// In en, this message translates to:
  /// **'Hello Guest'**
  String get helloGuest;

  /// No description provided for @commonQuestions.
  ///
  /// In en, this message translates to:
  /// **'Common Questions'**
  String get commonQuestions;

  /// No description provided for @contact.
  ///
  /// In en, this message translates to:
  /// **'Contact'**
  String get contact;

  /// No description provided for @termsAndCondition.
  ///
  /// In en, this message translates to:
  /// **'TERMS & CONDITIONS'**
  String get termsAndCondition;

  /// No description provided for @loginBusinessOwners.
  ///
  /// In en, this message translates to:
  /// **'Login Business Owners'**
  String get loginBusinessOwners;

  /// No description provided for @addAbusiness.
  ///
  /// In en, this message translates to:
  /// **'Add a business'**
  String get addAbusiness;

  /// No description provided for @loginScreenIntroText.
  ///
  /// In en, this message translates to:
  /// **'In order to start bulding your tour, you will have to login'**
  String get loginScreenIntroText;

  /// No description provided for @emailAddress.
  ///
  /// In en, this message translates to:
  /// **'E-Mail Address'**
  String get emailAddress;

  /// No description provided for @phoneNumber.
  ///
  /// In en, this message translates to:
  /// **'Phone Number'**
  String get phoneNumber;

  /// No description provided for @password.
  ///
  /// In en, this message translates to:
  /// **'Password'**
  String get password;

  /// No description provided for @registration.
  ///
  /// In en, this message translates to:
  /// **'Registration'**
  String get registration;

  /// No description provided for @fullName.
  ///
  /// In en, this message translates to:
  /// **'Full Name'**
  String get fullName;

  /// No description provided for @homeAddress.
  ///
  /// In en, this message translates to:
  /// **'Home Address'**
  String get homeAddress;

  /// No description provided for @registrationIntroText.
  ///
  /// In en, this message translates to:
  /// **'By registering, you agree to the veda Agreement and Privacy and Cookie Statement.'**
  String get registrationIntroText;

  /// No description provided for @addProducts.
  ///
  /// In en, this message translates to:
  /// **'Add Product'**
  String get addProducts;

  /// No description provided for @enterProductName.
  ///
  /// In en, this message translates to:
  /// **'Enter Product Name'**
  String get enterProductName;

  /// No description provided for @price.
  ///
  /// In en, this message translates to:
  /// **'Price'**
  String get price;

  /// No description provided for @longDescInfoText.
  ///
  /// In en, this message translates to:
  /// **'Enter The Product Description,Be Informative, Description, Inheritances,Etc.'**
  String get longDescInfoText;

  /// No description provided for @saveProduct.
  ///
  /// In en, this message translates to:
  /// **'Save Product'**
  String get saveProduct;

  /// No description provided for @sharing.
  ///
  /// In en, this message translates to:
  /// **'Sharing'**
  String get sharing;

  /// No description provided for @additionalInformatiom.
  ///
  /// In en, this message translates to:
  /// **'AdditionalInformatiom'**
  String get additionalInformatiom;

  /// No description provided for @addAddress.
  ///
  /// In en, this message translates to:
  /// **'Add Address'**
  String get addAddress;

  /// No description provided for @favorites.
  ///
  /// In en, this message translates to:
  /// **'favorites'**
  String get favorites;

  /// No description provided for @goodMorning.
  ///
  /// In en, this message translates to:
  /// **'Good Morning'**
  String get goodMorning;

  /// No description provided for @goodAfternoon.
  ///
  /// In en, this message translates to:
  /// **'Good Afternoon'**
  String get goodAfternoon;

  /// No description provided for @goodEvening.
  ///
  /// In en, this message translates to:
  /// **'Good Evening'**
  String get goodEvening;

  /// No description provided for @goodNight.
  ///
  /// In en, this message translates to:
  /// **'Good Night'**
  String get goodNight;

  /// No description provided for @myVouchers.
  ///
  /// In en, this message translates to:
  /// **'My Vouchers'**
  String get myVouchers;

  /// No description provided for @totalAmount.
  ///
  /// In en, this message translates to:
  /// **'Total Amount'**
  String get totalAmount;

  /// No description provided for @vouchersList.
  ///
  /// In en, this message translates to:
  /// **'Vouchers List'**
  String get vouchersList;

  /// No description provided for @assigned.
  ///
  /// In en, this message translates to:
  /// **'Assigned'**
  String get assigned;

  /// No description provided for @added.
  ///
  /// In en, this message translates to:
  /// **'Added'**
  String get added;

  /// No description provided for @unAssigned.
  ///
  /// In en, this message translates to:
  /// **'Un-Assigned'**
  String get unAssigned;

  /// No description provided for @waitingForUser.
  ///
  /// In en, this message translates to:
  /// **'Waiting For User'**
  String get waitingForUser;

  /// No description provided for @expired.
  ///
  /// In en, this message translates to:
  /// **'Expired'**
  String get expired;

  /// No description provided for @iHaveAVoucherCode.
  ///
  /// In en, this message translates to:
  /// **'I Have A Voucher Code'**
  String get iHaveAVoucherCode;

  /// No description provided for @reAssignContent.
  ///
  /// In en, this message translates to:
  /// **'You selected to reassign a voucher to <email/phone number of the assignee>. The assignee will receive a notification with all the relevant information for it to be able to redeem the voucher. If the infornation is correct, press Send.'**
  String get reAssignContent;

  /// No description provided for @addVoucherContentText.
  ///
  /// In en, this message translates to:
  /// **'After clicking OK, this voucher will be added to your total balance and can be used with your future payments. Redeemed vouchers cannot be sent to third parties'**
  String get addVoucherContentText;

  /// No description provided for @assigneeEmailPhone.
  ///
  /// In en, this message translates to:
  /// **'Assignee Email/Phone'**
  String get assigneeEmailPhone;

  /// No description provided for @typeTheUserEmaillOrPhone.
  ///
  /// In en, this message translates to:
  /// **'Type the user\'s emaill or phone'**
  String get typeTheUserEmaillOrPhone;

  /// No description provided for @assignAVoucher.
  ///
  /// In en, this message translates to:
  /// **'Assign a voucher'**
  String get assignAVoucher;
}

class _AppLocalizationsDelegate extends LocalizationsDelegate<AppLocalizations> {
  const _AppLocalizationsDelegate();

  @override
  Future<AppLocalizations> load(Locale locale) {
    return SynchronousFuture<AppLocalizations>(lookupAppLocalizations(locale));
  }

  @override
  bool isSupported(Locale locale) => <String>['en', 'ne'].contains(locale.languageCode);

  @override
  bool shouldReload(_AppLocalizationsDelegate old) => false;
}

AppLocalizations lookupAppLocalizations(Locale locale) {


  // Lookup logic when only language code is specified.
  switch (locale.languageCode) {
    case 'en': return AppLocalizationsEn();
    case 'ne': return AppLocalizationsNe();
  }

  throw FlutterError(
    'AppLocalizations.delegate failed to load unsupported locale "$locale". This is likely '
    'an issue with the localizations generation tool. Please file an issue '
    'on GitHub with a reproducible sample app and the gen-l10n configuration '
    'that was used.'
  );
}
