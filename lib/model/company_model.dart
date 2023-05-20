// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:cloud_firestore/cloud_firestore.dart';

class Company {
  final int? order;
  final int? Season_Number;
  final String? Season_Start;
  final int? Episode_Number;
  final String? Episode_Title;
  final int? Pitch_Number;
  final String? Startup_Name_Space;
  final String? Startup_Name_Joint;
  final String? Industry;
  final String? Business_Description;
  final String? Company_Website;
  final int? Number_of_Presenters;
  final int? Male_Presenters;
  final int? Female_Presenters;
  final int? Transgender_Presenters;
  final int? Couple_Presenters;
  final String? Pitchers_Average_Age;
  final int? Started_in;
  final String? Pitchers_City;
  final String? Pitchers_State;
  final int? Yearly_Revenue;
  final double? Monthly_Sales;
  final int? Gross_Margin;
  final int? Net_Margin;
  final double? Original_Ask_Amount;
  final double? Original_Offered_Equity;
  final double? Valuation_Requested;
  final int? Received_Offer;
  final int? Accepted_Offer;
  final double? Total_Deal_Amount;
  final double? Total_Deal_Equity;
  final int? Total_Deal_Debt;
  final int? Debt_Interest;
  final double? Deal_Valuation;
  final int? Number_of_sharks_in_deal;
  final bool? Deal_has_conditions;
  final int? Has_Patents;
  final double? Ashneer_Investment_Amount;
  final double? Ashneer_Investment_Equity;
  final int? Ashneer_Debt_Amount;
  final double? Namita_Investment_Amount;
  final double? Namita_Investment_Equity;
  final double? Namita_Debt_Amount;
  final double? Anupam_Investment_Amount;
  final double? Anupam_Investment_Equity;
  final double? Anupam_Debt_Amount;
  final double? Vineeta_Investment_Amount;
  final double? Vineeta_Investment_Equity;
  final double? Vineeta_Debt_Amount;
  final double? Aman_Investment_Amount;
  final double? Aman_Investment_Equity;
  final double? Aman_Debt_Amount;
  final double? Peyush_Investment_Amount;
  final double? Peyush_Investment_Equity;
  final int? Peyush_Debt_Amount;
  final double? Ghazal_Investment_Amount;
  final double? Ghazal_Investment_Equity;
  final int? Ghazal_Debt_Amount;
  final double? Amit_Investment_Amount;
  final double? Amit_Investment_Equity;
  final int? Amit_Debt_Amount;
  final double? Guest_Investment_Amount;
  final double? Guest_Investment_Equity;
  final double? Guest_Debt_Amount;
  final String? Guest_Name;
  final String? Yearly_Revenue_in_words;
  final String? Monthly_Sales_in_words;
  final String? Gross_Margin_in_words;
  final String? Original_Ask_Amount_in_words;
  final String? Original_Offered_Equity_in_words;
  final String? Valuation_Requested_in_words;
  final String? Total_Deal_Debt_in_words;
  final String? Deal_Valuation_in_words;

  Company(
    this.order,
    this.Season_Number,
    this.Season_Start,
    this.Episode_Number,
    this.Episode_Title,
    this.Pitch_Number,
    this.Startup_Name_Space,
    this.Startup_Name_Joint,
    this.Industry,
    this.Business_Description,
    this.Company_Website,
    this.Number_of_Presenters,
    this.Male_Presenters,
    this.Female_Presenters,
    this.Transgender_Presenters,
    this.Couple_Presenters,
    this.Pitchers_Average_Age,
    this.Started_in,
    this.Pitchers_City,
    this.Pitchers_State,
    this.Yearly_Revenue,
    this.Monthly_Sales,
    this.Gross_Margin,
    this.Net_Margin,
    this.Original_Ask_Amount,
    this.Original_Offered_Equity,
    this.Valuation_Requested,
    this.Received_Offer,
    this.Accepted_Offer,
    this.Total_Deal_Amount,
    this.Total_Deal_Equity,
    this.Total_Deal_Debt,
    this.Debt_Interest,
    this.Deal_Valuation,
    this.Number_of_sharks_in_deal,
    this.Deal_has_conditions,
    this.Has_Patents,
    this.Ashneer_Investment_Amount,
    this.Ashneer_Investment_Equity,
    this.Ashneer_Debt_Amount,
    this.Namita_Investment_Amount,
    this.Namita_Investment_Equity,
    this.Namita_Debt_Amount,
    this.Anupam_Investment_Amount,
    this.Anupam_Investment_Equity,
    this.Anupam_Debt_Amount,
    this.Vineeta_Investment_Amount,
    this.Vineeta_Investment_Equity,
    this.Vineeta_Debt_Amount,
    this.Aman_Investment_Amount,
    this.Aman_Investment_Equity,
    this.Aman_Debt_Amount,
    this.Peyush_Investment_Amount,
    this.Peyush_Investment_Equity,
    this.Peyush_Debt_Amount,
    this.Ghazal_Investment_Amount,
    this.Ghazal_Investment_Equity,
    this.Ghazal_Debt_Amount,
    this.Amit_Investment_Amount,
    this.Amit_Investment_Equity,
    this.Amit_Debt_Amount,
    this.Guest_Investment_Amount,
    this.Guest_Investment_Equity,
    this.Guest_Debt_Amount,
    this.Guest_Name,
    this.Yearly_Revenue_in_words,
    this.Monthly_Sales_in_words,
    this.Gross_Margin_in_words,
    this.Original_Ask_Amount_in_words,
    this.Original_Offered_Equity_in_words,
    this.Valuation_Requested_in_words,
    this.Total_Deal_Debt_in_words,
    this.Deal_Valuation_in_words,
  );

  Company copyWith({
    int? order,
    int? Season_Number,
    String? Season_Start,
    int? Episode_Number,
    String? Episode_Title,
    int? Pitch_Number,
    String? Startup_Name_Space,
    String? Startup_Name_Joint,
    String? Industry,
    String? Business_Description,
    String? Company_Website,
    int? Number_of_Presenters,
    int? Male_Presenters,
    int? Female_Presenters,
    int? Transgender_Presenters,
    int? Couple_Presenters,
    String? Pitchers_Average_Age,
    int? Started_in,
    String? Pitchers_City,
    String? Pitchers_State,
    int? Yearly_Revenue,
    double? Monthly_Sales,
    int? Gross_Margin,
    int? Net_Margin,
    double? Original_Ask_Amount,
    double? Original_Offered_Equity,
    double? Valuation_Requested,
    int? Received_Offer,
    int? Accepted_Offer,
    double? Total_Deal_Amount,
    double? Total_Deal_Equity,
    int? Total_Deal_Debt,
    int? Debt_Interest,
    double? Deal_Valuation,
    int? Number_of_sharks_in_deal,
    bool? Deal_has_conditions,
    int? Has_Patents,
    double? Ashneer_Investment_Amount,
    double? Ashneer_Investment_Equity,
    int? Ashneer_Debt_Amount,
    double? Namita_Investment_Amount,
    double? Namita_Investment_Equity,
    double? Namita_Debt_Amount,
    double? Anupam_Investment_Amount,
    double? Anupam_Investment_Equity,
    double? Anupam_Debt_Amount,
    double? Vineeta_Investment_Amount,
    double? Vineeta_Investment_Equity,
    double? Vineeta_Debt_Amount,
    double? Aman_Investment_Amount,
    double? Aman_Investment_Equity,
    double? Aman_Debt_Amount,
    double? Peyush_Investment_Amount,
    double? Peyush_Investment_Equity,
    int? Peyush_Debt_Amount,
    double? Ghazal_Investment_Amount,
    double? Ghazal_Investment_Equity,
    int? Ghazal_Debt_Amount,
    double? Amit_Investment_Amount,
    double? Amit_Investment_Equity,
    int? Amit_Debt_Amount,
    double? Guest_Investment_Amount,
    double? Guest_Investment_Equity,
    double? Guest_Debt_Amount,
    String? Guest_Name,
    String? Yearly_Revenue_in_words,
    String? Monthly_Sales_in_words,
    String? Gross_Margin_in_words,
    String? Original_Ask_Amount_in_words,
    String? Original_Offered_Equity_in_words,
    String? Valuation_Requested_in_words,
    String? Total_Deal_Debt_in_words,
    String? Deal_Valuation_in_words,
  }) {
    return Company(
      order ?? this.order,
      Season_Number ?? this.Season_Number,
      Season_Start ?? this.Season_Start,
      Episode_Number ?? this.Episode_Number,
      Episode_Title ?? this.Episode_Title,
      Pitch_Number ?? this.Pitch_Number,
      Startup_Name_Space ?? this.Startup_Name_Space,
      Startup_Name_Joint ?? this.Startup_Name_Joint,
      Industry ?? this.Industry,
      Business_Description ?? this.Business_Description,
      Company_Website ?? this.Company_Website,
      Number_of_Presenters ?? this.Number_of_Presenters,
      Male_Presenters ?? this.Male_Presenters,
      Female_Presenters ?? this.Female_Presenters,
      Transgender_Presenters ?? this.Transgender_Presenters,
      Couple_Presenters ?? this.Couple_Presenters,
      Pitchers_Average_Age ?? this.Pitchers_Average_Age,
      Started_in ?? this.Started_in,
      Pitchers_City ?? this.Pitchers_City,
      Pitchers_State ?? this.Pitchers_State,
      Yearly_Revenue ?? this.Yearly_Revenue,
      Monthly_Sales ?? this.Monthly_Sales,
      Gross_Margin ?? this.Gross_Margin,
      Net_Margin ?? this.Net_Margin,
      Original_Ask_Amount ?? this.Original_Ask_Amount,
      Original_Offered_Equity ?? this.Original_Offered_Equity,
      Valuation_Requested ?? this.Valuation_Requested,
      Received_Offer ?? this.Received_Offer,
      Accepted_Offer ?? this.Accepted_Offer,
      Total_Deal_Amount ?? this.Total_Deal_Amount,
      Total_Deal_Equity ?? this.Total_Deal_Equity,
      Total_Deal_Debt ?? this.Total_Deal_Debt,
      Debt_Interest ?? this.Debt_Interest,
      Deal_Valuation ?? this.Deal_Valuation,
      Number_of_sharks_in_deal ?? this.Number_of_sharks_in_deal,
      Deal_has_conditions ?? this.Deal_has_conditions,
      Has_Patents ?? this.Has_Patents,
      Ashneer_Investment_Amount ?? this.Ashneer_Investment_Amount,
      Ashneer_Investment_Equity ?? this.Ashneer_Investment_Equity,
      Ashneer_Debt_Amount ?? this.Ashneer_Debt_Amount,
      Namita_Investment_Amount ?? this.Namita_Investment_Amount,
      Namita_Investment_Equity ?? this.Namita_Investment_Equity,
      Namita_Debt_Amount ?? this.Namita_Debt_Amount,
      Anupam_Investment_Amount ?? this.Anupam_Investment_Amount,
      Anupam_Investment_Equity ?? this.Anupam_Investment_Equity,
      Anupam_Debt_Amount ?? this.Anupam_Debt_Amount,
      Vineeta_Investment_Amount ?? this.Vineeta_Investment_Amount,
      Vineeta_Investment_Equity ?? this.Vineeta_Investment_Equity,
      Vineeta_Debt_Amount ?? this.Vineeta_Debt_Amount,
      Aman_Investment_Amount ?? this.Aman_Investment_Amount,
      Aman_Investment_Equity ?? this.Aman_Investment_Equity,
      Aman_Debt_Amount ?? this.Aman_Debt_Amount,
      Peyush_Investment_Amount ?? this.Peyush_Investment_Amount,
      Peyush_Investment_Equity ?? this.Peyush_Investment_Equity,
      Peyush_Debt_Amount ?? this.Peyush_Debt_Amount,
      Ghazal_Investment_Amount ?? this.Ghazal_Investment_Amount,
      Ghazal_Investment_Equity ?? this.Ghazal_Investment_Equity,
      Ghazal_Debt_Amount ?? this.Ghazal_Debt_Amount,
      Amit_Investment_Amount ?? this.Amit_Investment_Amount,
      Amit_Investment_Equity ?? this.Amit_Investment_Equity,
      Amit_Debt_Amount ?? this.Amit_Debt_Amount,
      Guest_Investment_Amount ?? this.Guest_Investment_Amount,
      Guest_Investment_Equity ?? this.Guest_Investment_Equity,
      Guest_Debt_Amount ?? this.Guest_Debt_Amount,
      Guest_Name ?? this.Guest_Name,
      Yearly_Revenue_in_words ?? this.Yearly_Revenue_in_words,
      Monthly_Sales_in_words ?? this.Monthly_Sales_in_words,
      Gross_Margin_in_words ?? this.Gross_Margin_in_words,
      Original_Ask_Amount_in_words ?? this.Original_Ask_Amount_in_words,
      Original_Offered_Equity_in_words ?? this.Original_Offered_Equity_in_words,
      Valuation_Requested_in_words ?? this.Valuation_Requested_in_words,
      Total_Deal_Debt_in_words ?? this.Total_Deal_Debt_in_words,
      Deal_Valuation_in_words ?? this.Deal_Valuation_in_words,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'order': order,
      'Season_Number': Season_Number,
      'Season_Start': Season_Start,
      'Episode_Number': Episode_Number,
      'Episode_Title': Episode_Title,
      'Pitch_Number': Pitch_Number,
      'Startup_Name_Space': Startup_Name_Space,
      'Startup_Name_Joint': Startup_Name_Joint,
      'Industry': Industry,
      'Business_Description': Business_Description,
      'Company_Website': Company_Website,
      'Number_of_Presenters': Number_of_Presenters,
      'Male_Presenters': Male_Presenters,
      'Female_Presenters': Female_Presenters,
      'Transgender_Presenters': Transgender_Presenters,
      'Couple_Presenters': Couple_Presenters,
      'Pitchers_Average_Age': Pitchers_Average_Age,
      'Started_in': Started_in,
      'Pitchers_City': Pitchers_City,
      'Pitchers_State': Pitchers_State,
      'Yearly_Revenue': Yearly_Revenue,
      'Monthly_Sales': Monthly_Sales,
      'Gross_Margin': Gross_Margin,
      'Net_Margin': Net_Margin,
      'Original_Ask_Amount': Original_Ask_Amount,
      'Original_Offered_Equity': Original_Offered_Equity,
      'Valuation_Requested': Valuation_Requested,
      'Received_Offer': Received_Offer,
      'Accepted_Offer': Accepted_Offer,
      'Total_Deal_Amount': Total_Deal_Amount,
      'Total_Deal_Equity': Total_Deal_Equity,
      'Total_Deal_Debt': Total_Deal_Debt,
      'Debt_Interest': Debt_Interest,
      'Deal_Valuation': Deal_Valuation,
      'Number_of_sharks_in_deal': Number_of_sharks_in_deal,
      'Deal_has_conditions': Deal_has_conditions,
      'Has_Patents': Has_Patents,
      'Ashneer_Investment_Amount': Ashneer_Investment_Amount,
      'Ashneer_Investment_Equity': Ashneer_Investment_Equity,
      'Ashneer_Debt_Amount': Ashneer_Debt_Amount,
      'Namita_Investment_Amount': Namita_Investment_Amount,
      'Namita_Investment_Equity': Namita_Investment_Equity,
      'Namita_Debt_Amount': Namita_Debt_Amount,
      'Anupam_Investment_Amount': Anupam_Investment_Amount,
      'Anupam_Investment_Equity': Anupam_Investment_Equity,
      'Anupam_Debt_Amount': Anupam_Debt_Amount,
      'Vineeta_Investment_Amount': Vineeta_Investment_Amount,
      'Vineeta_Investment_Equity': Vineeta_Investment_Equity,
      'Vineeta_Debt_Amount': Vineeta_Debt_Amount,
      'Aman_Investment_Amount': Aman_Investment_Amount,
      'Aman_Investment_Equity': Aman_Investment_Equity,
      'Aman_Debt_Amount': Aman_Debt_Amount,
      'Peyush_Investment_Amount': Peyush_Investment_Amount,
      'Peyush_Investment_Equity': Peyush_Investment_Equity,
      'Peyush_Debt_Amount': Peyush_Debt_Amount,
      'Ghazal_Investment_Amount': Ghazal_Investment_Amount,
      'Ghazal_Investment_Equity': Ghazal_Investment_Equity,
      'Ghazal_Debt_Amount': Ghazal_Debt_Amount,
      'Amit_Investment_Amount': Amit_Investment_Amount,
      'Amit_Investment_Equity': Amit_Investment_Equity,
      'Amit_Debt_Amount': Amit_Debt_Amount,
      'Guest_Investment_Amount': Guest_Investment_Amount,
      'Guest_Investment_Equity': Guest_Investment_Equity,
      'Guest_Debt_Amount': Guest_Debt_Amount,
      'Guest_Name': Guest_Name,
      'Yearly_Revenue_in_words': Yearly_Revenue_in_words,
      'Monthly_Sales_in_words': Monthly_Sales_in_words,
      'Gross_Margin_in_words': Gross_Margin_in_words,
      'Original_Ask_Amount_in_words': Original_Ask_Amount_in_words,
      'Original_Offered_Equity_in_words': Original_Offered_Equity_in_words,
      'Valuation_Requested_in_words': Valuation_Requested_in_words,
      'Total_Deal_Debt_in_words': Total_Deal_Debt_in_words,
      'Deal_Valuation_in_words': Deal_Valuation_in_words,
    };
  }

  factory Company.fromMap(Map<String, dynamic> map) {
    return Company(
      map['order'] != null ? map['order'] as int : null,
      map['Season_Number'] != null ? map['Season_Number'] as int : null,
      map['Season_Start'] != null ? map['Season_Start'] as String : null,
      map['Episode_Number'] != null ? map['Episode_Number'] as int : null,
      map['Episode_Title'] != null ? map['Episode_Title'] as String : null,
      map['Pitch_Number'] != null ? map['Pitch_Number'] as int : null,
      map['Startup_Name_Space'] != null ? map['Startup_Name_Space'] as String : null,
      map['Startup_Name_Joint'] != null ? map['Startup_Name_Joint'] as String : null,
      map['Industry'] != null ? map['Industry'] as String : null,
      map['Business_Description'] != null ? map['Business_Description'] as String : null,
      map['Company_Website'] != null ? map['Company_Website'] as String : null,
      map['Number_of_Presenters'] != null ? map['Number_of_Presenters'] as int : null,
      map['Male_Presenters'] != null ? map['Male_Presenters'] as int : null,
      map['Female_Presenters'] != null ? map['Female_Presenters'] as int : null,
      map['Transgender_Presenters'] != null ? map['Transgender_Presenters'] as int : null,
      map['Couple_Presenters'] != null ? map['Couple_Presenters'] as int : null,
      map['Pitchers_Average_Age'] != null ? map['Pitchers_Average_Age'] as String : null,
      map['Started_in'] != null ? map['Started_in'] as int : null,
      map['Pitchers_City'] != null ? map['Pitchers_City'] as String : null,
      map['Pitchers_State'] != null ? map['Pitchers_State'] as String : null,
      map['Yearly_Revenue'] != null ? map['Yearly_Revenue'] as int : null,
      map['Monthly_Sales'] != null ? map['Monthly_Sales'] as double : null,
      map['Gross_Margin'] != null ? map['Gross_Margin'] as int : null,
      map['Net_Margin'] != null ? map['Net_Margin'] as int : null,
      map['Original_Ask_Amount'] != null ? map['Original_Ask_Amount'] as double : null,
      map['Original_Offered_Equity'] != null ? map['Original_Offered_Equity'] as double : null,
      map['Valuation_Requested'] != null ? map['Valuation_Requested'] as double : null,
      map['Received_Offer'] != null ? map['Received_Offer'] as int : null,
      map['Accepted_Offer'] != null ? map['Accepted_Offer'] as int : null,
      map['Total_Deal_Amount'] != null ? map['Total_Deal_Amount'] as double : null,
      map['Total_Deal_Equity'] != null ? map['Total_Deal_Equity'] as double : null,
      map['Total_Deal_Debt'] != null ? map['Total_Deal_Debt'] as int : null,
      map['Debt_Interest'] != null ? map['Debt_Interest'] as int : null,
      map['Deal_Valuation'] != null ? map['Deal_Valuation'] as double : null,
      map['Number_of_sharks_in_deal'] != null ? map['Number_of_sharks_in_deal'] as int : null,
      map['Deal_has_conditions'] != null ? map['Deal_has_conditions'] as bool : null,
      map['Has_Patents'] != null ? map['Has_Patents'] as int : null,
      map['Ashneer_Investment_Amount'] != null ? map['Ashneer_Investment_Amount'] as double : null,
      map['Ashneer_Investment_Equity'] != null ? map['Ashneer_Investment_Equity'] as double : null,
      map['Ashneer_Debt_Amount'] != null ? map['Ashneer_Debt_Amount'] as int : null,
      map['Namita_Investment_Amount'] != null ? map['Namita_Investment_Amount'] as double : null,
      map['Namita_Investment_Equity'] != null ? map['Namita_Investment_Equity'] as double : null,
      map['Namita_Debt_Amount'] != null ? map['Namita_Debt_Amount'] as double : null,
      map['Anupam_Investment_Amount'] != null ? map['Anupam_Investment_Amount'] as double : null,
      map['Anupam_Investment_Equity'] != null ? map['Anupam_Investment_Equity'] as double : null,
      map['Anupam_Debt_Amount'] != null ? map['Anupam_Debt_Amount'] as double : null,
      map['Vineeta_Investment_Amount'] != null ? map['Vineeta_Investment_Amount'] as double : null,
      map['Vineeta_Investment_Equity'] != null ? map['Vineeta_Investment_Equity'] as double : null,
      map['Vineeta_Debt_Amount'] != null ? map['Vineeta_Debt_Amount'] as double : null,
      map['Aman_Investment_Amount'] != null ? map['Aman_Investment_Amount'] as double : null,
      map['Aman_Investment_Equity'] != null ? map['Aman_Investment_Equity'] as double : null,
      map['Aman_Debt_Amount'] != null ? map['Aman_Debt_Amount'] as double : null,
      map['Peyush_Investment_Amount'] != null ? map['Peyush_Investment_Amount'] as double : null,
      map['Peyush_Investment_Equity'] != null ? map['Peyush_Investment_Equity'] as double : null,
      map['Peyush_Debt_Amount'] != null ? map['Peyush_Debt_Amount'] as int : null,
      map['Ghazal_Investment_Amount'] != null ? map['Ghazal_Investment_Amount'] as double : null,
      map['Ghazal_Investment_Equity'] != null ? map['Ghazal_Investment_Equity'] as double : null,
      map['Ghazal_Debt_Amount'] != null ? map['Ghazal_Debt_Amount'] as int : null,
      map['Amit_Investment_Amount'] != null ? map['Amit_Investment_Amount'] as double : null,
      map['Amit_Investment_Equity'] != null ? map['Amit_Investment_Equity'] as double : null,
      map['Amit_Debt_Amount'] != null ? map['Amit_Debt_Amount'] as int : null,
      map['Guest_Investment_Amount'] != null ? map['Guest_Investment_Amount'] as double : null,
      map['Guest_Investment_Equity'] != null ? map['Guest_Investment_Equity'] as double : null,
      map['Guest_Debt_Amount'] != null ? map['Guest_Debt_Amount'] as double : null,
      map['Guest_Name'] != null ? map['Guest_Name'] as String : null,
      map['Yearly_Revenue_in_words'] != null ? map['Yearly_Revenue_in_words'] as String : null,
      map['Monthly_Sales_in_words'] != null ? map['Monthly_Sales_in_words'] as String : null,
      map['Gross_Margin_in_words'] != null ? map['Gross_Margin_in_words'] as String : null,
      map['Original_Ask_Amount_in_words'] != null ? map['Original_Ask_Amount_in_words'] as String : null,
      map['Original_Offered_Equity_in_words'] != null ? map['Original_Offered_Equity_in_words'] as String : null,
      map['Valuation_Requested_in_words'] != null ? map['Valuation_Requested_in_words'] as String : null,
      map['Total_Deal_Debt_in_words'] != null ? map['Total_Deal_Debt_in_words'] as String : null,
      map['Deal_Valuation_in_words'] != null ? map['Deal_Valuation_in_words'] as String : null,
    );
  }

  String toJson() => json.encode(toMap());

  factory Company.fromJson(String source) => Company.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() {
    return 'Company(order: $order, Season_Number: $Season_Number, Season_Start: $Season_Start, Episode_Number: $Episode_Number, Episode_Title: $Episode_Title, Pitch_Number: $Pitch_Number, Startup_Name_Space: $Startup_Name_Space, Startup_Name_Joint: $Startup_Name_Joint, Industry: $Industry, Business_Description: $Business_Description, Company_Website: $Company_Website, Number_of_Presenters: $Number_of_Presenters, Male_Presenters: $Male_Presenters, Female_Presenters: $Female_Presenters, Transgender_Presenters: $Transgender_Presenters, Couple_Presenters: $Couple_Presenters, Pitchers_Average_Age: $Pitchers_Average_Age, Started_in: $Started_in, Pitchers_City: $Pitchers_City, Pitchers_State: $Pitchers_State, Yearly_Revenue: $Yearly_Revenue, Monthly_Sales: $Monthly_Sales, Gross_Margin: $Gross_Margin, Net_Margin: $Net_Margin, Original_Ask_Amount: $Original_Ask_Amount, Original_Offered_Equity: $Original_Offered_Equity, Valuation_Requested: $Valuation_Requested, Received_Offer: $Received_Offer, Accepted_Offer: $Accepted_Offer, Total_Deal_Amount: $Total_Deal_Amount, Total_Deal_Equity: $Total_Deal_Equity, Total_Deal_Debt: $Total_Deal_Debt, Debt_Interest: $Debt_Interest, Deal_Valuation: $Deal_Valuation, Number_of_sharks_in_deal: $Number_of_sharks_in_deal, Deal_has_conditions: $Deal_has_conditions, Has_Patents: $Has_Patents, Ashneer_Investment_Amount: $Ashneer_Investment_Amount, Ashneer_Investment_Equity: $Ashneer_Investment_Equity, Ashneer_Debt_Amount: $Ashneer_Debt_Amount, Namita_Investment_Amount: $Namita_Investment_Amount, Namita_Investment_Equity: $Namita_Investment_Equity, Namita_Debt_Amount: $Namita_Debt_Amount, Anupam_Investment_Amount: $Anupam_Investment_Amount, Anupam_Investment_Equity: $Anupam_Investment_Equity, Anupam_Debt_Amount: $Anupam_Debt_Amount, Vineeta_Investment_Amount: $Vineeta_Investment_Amount, Vineeta_Investment_Equity: $Vineeta_Investment_Equity, Vineeta_Debt_Amount: $Vineeta_Debt_Amount, Aman_Investment_Amount: $Aman_Investment_Amount, Aman_Investment_Equity: $Aman_Investment_Equity, Aman_Debt_Amount: $Aman_Debt_Amount, Peyush_Investment_Amount: $Peyush_Investment_Amount, Peyush_Investment_Equity: $Peyush_Investment_Equity, Peyush_Debt_Amount: $Peyush_Debt_Amount, Ghazal_Investment_Amount: $Ghazal_Investment_Amount, Ghazal_Investment_Equity: $Ghazal_Investment_Equity, Ghazal_Debt_Amount: $Ghazal_Debt_Amount, Amit_Investment_Amount: $Amit_Investment_Amount, Amit_Investment_Equity: $Amit_Investment_Equity, Amit_Debt_Amount: $Amit_Debt_Amount, Guest_Investment_Amount: $Guest_Investment_Amount, Guest_Investment_Equity: $Guest_Investment_Equity, Guest_Debt_Amount: $Guest_Debt_Amount, Guest_Name: $Guest_Name, Yearly_Revenue_in_words: $Yearly_Revenue_in_words, Monthly_Sales_in_words: $Monthly_Sales_in_words, Gross_Margin_in_words: $Gross_Margin_in_words, Original_Ask_Amount_in_words: $Original_Ask_Amount_in_words, Original_Offered_Equity_in_words: $Original_Offered_Equity_in_words, Valuation_Requested_in_words: $Valuation_Requested_in_words, Total_Deal_Debt_in_words: $Total_Deal_Debt_in_words, Deal_Valuation_in_words: $Deal_Valuation_in_words)';
  }

  @override
  bool operator ==(covariant Company other) {
    if (identical(this, other)) return true;
  
    return 
      other.order == order &&
      other.Season_Number == Season_Number &&
      other.Season_Start == Season_Start &&
      other.Episode_Number == Episode_Number &&
      other.Episode_Title == Episode_Title &&
      other.Pitch_Number == Pitch_Number &&
      other.Startup_Name_Space == Startup_Name_Space &&
      other.Startup_Name_Joint == Startup_Name_Joint &&
      other.Industry == Industry &&
      other.Business_Description == Business_Description &&
      other.Company_Website == Company_Website &&
      other.Number_of_Presenters == Number_of_Presenters &&
      other.Male_Presenters == Male_Presenters &&
      other.Female_Presenters == Female_Presenters &&
      other.Transgender_Presenters == Transgender_Presenters &&
      other.Couple_Presenters == Couple_Presenters &&
      other.Pitchers_Average_Age == Pitchers_Average_Age &&
      other.Started_in == Started_in &&
      other.Pitchers_City == Pitchers_City &&
      other.Pitchers_State == Pitchers_State &&
      other.Yearly_Revenue == Yearly_Revenue &&
      other.Monthly_Sales == Monthly_Sales &&
      other.Gross_Margin == Gross_Margin &&
      other.Net_Margin == Net_Margin &&
      other.Original_Ask_Amount == Original_Ask_Amount &&
      other.Original_Offered_Equity == Original_Offered_Equity &&
      other.Valuation_Requested == Valuation_Requested &&
      other.Received_Offer == Received_Offer &&
      other.Accepted_Offer == Accepted_Offer &&
      other.Total_Deal_Amount == Total_Deal_Amount &&
      other.Total_Deal_Equity == Total_Deal_Equity &&
      other.Total_Deal_Debt == Total_Deal_Debt &&
      other.Debt_Interest == Debt_Interest &&
      other.Deal_Valuation == Deal_Valuation &&
      other.Number_of_sharks_in_deal == Number_of_sharks_in_deal &&
      other.Deal_has_conditions == Deal_has_conditions &&
      other.Has_Patents == Has_Patents &&
      other.Ashneer_Investment_Amount == Ashneer_Investment_Amount &&
      other.Ashneer_Investment_Equity == Ashneer_Investment_Equity &&
      other.Ashneer_Debt_Amount == Ashneer_Debt_Amount &&
      other.Namita_Investment_Amount == Namita_Investment_Amount &&
      other.Namita_Investment_Equity == Namita_Investment_Equity &&
      other.Namita_Debt_Amount == Namita_Debt_Amount &&
      other.Anupam_Investment_Amount == Anupam_Investment_Amount &&
      other.Anupam_Investment_Equity == Anupam_Investment_Equity &&
      other.Anupam_Debt_Amount == Anupam_Debt_Amount &&
      other.Vineeta_Investment_Amount == Vineeta_Investment_Amount &&
      other.Vineeta_Investment_Equity == Vineeta_Investment_Equity &&
      other.Vineeta_Debt_Amount == Vineeta_Debt_Amount &&
      other.Aman_Investment_Amount == Aman_Investment_Amount &&
      other.Aman_Investment_Equity == Aman_Investment_Equity &&
      other.Aman_Debt_Amount == Aman_Debt_Amount &&
      other.Peyush_Investment_Amount == Peyush_Investment_Amount &&
      other.Peyush_Investment_Equity == Peyush_Investment_Equity &&
      other.Peyush_Debt_Amount == Peyush_Debt_Amount &&
      other.Ghazal_Investment_Amount == Ghazal_Investment_Amount &&
      other.Ghazal_Investment_Equity == Ghazal_Investment_Equity &&
      other.Ghazal_Debt_Amount == Ghazal_Debt_Amount &&
      other.Amit_Investment_Amount == Amit_Investment_Amount &&
      other.Amit_Investment_Equity == Amit_Investment_Equity &&
      other.Amit_Debt_Amount == Amit_Debt_Amount &&
      other.Guest_Investment_Amount == Guest_Investment_Amount &&
      other.Guest_Investment_Equity == Guest_Investment_Equity &&
      other.Guest_Debt_Amount == Guest_Debt_Amount &&
      other.Guest_Name == Guest_Name &&
      other.Yearly_Revenue_in_words == Yearly_Revenue_in_words &&
      other.Monthly_Sales_in_words == Monthly_Sales_in_words &&
      other.Gross_Margin_in_words == Gross_Margin_in_words &&
      other.Original_Ask_Amount_in_words == Original_Ask_Amount_in_words &&
      other.Original_Offered_Equity_in_words == Original_Offered_Equity_in_words &&
      other.Valuation_Requested_in_words == Valuation_Requested_in_words &&
      other.Total_Deal_Debt_in_words == Total_Deal_Debt_in_words &&
      other.Deal_Valuation_in_words == Deal_Valuation_in_words;
  }

  @override
  int get hashCode {
    return order.hashCode ^
      Season_Number.hashCode ^
      Season_Start.hashCode ^
      Episode_Number.hashCode ^
      Episode_Title.hashCode ^
      Pitch_Number.hashCode ^
      Startup_Name_Space.hashCode ^
      Startup_Name_Joint.hashCode ^
      Industry.hashCode ^
      Business_Description.hashCode ^
      Company_Website.hashCode ^
      Number_of_Presenters.hashCode ^
      Male_Presenters.hashCode ^
      Female_Presenters.hashCode ^
      Transgender_Presenters.hashCode ^
      Couple_Presenters.hashCode ^
      Pitchers_Average_Age.hashCode ^
      Started_in.hashCode ^
      Pitchers_City.hashCode ^
      Pitchers_State.hashCode ^
      Yearly_Revenue.hashCode ^
      Monthly_Sales.hashCode ^
      Gross_Margin.hashCode ^
      Net_Margin.hashCode ^
      Original_Ask_Amount.hashCode ^
      Original_Offered_Equity.hashCode ^
      Valuation_Requested.hashCode ^
      Received_Offer.hashCode ^
      Accepted_Offer.hashCode ^
      Total_Deal_Amount.hashCode ^
      Total_Deal_Equity.hashCode ^
      Total_Deal_Debt.hashCode ^
      Debt_Interest.hashCode ^
      Deal_Valuation.hashCode ^
      Number_of_sharks_in_deal.hashCode ^
      Deal_has_conditions.hashCode ^
      Has_Patents.hashCode ^
      Ashneer_Investment_Amount.hashCode ^
      Ashneer_Investment_Equity.hashCode ^
      Ashneer_Debt_Amount.hashCode ^
      Namita_Investment_Amount.hashCode ^
      Namita_Investment_Equity.hashCode ^
      Namita_Debt_Amount.hashCode ^
      Anupam_Investment_Amount.hashCode ^
      Anupam_Investment_Equity.hashCode ^
      Anupam_Debt_Amount.hashCode ^
      Vineeta_Investment_Amount.hashCode ^
      Vineeta_Investment_Equity.hashCode ^
      Vineeta_Debt_Amount.hashCode ^
      Aman_Investment_Amount.hashCode ^
      Aman_Investment_Equity.hashCode ^
      Aman_Debt_Amount.hashCode ^
      Peyush_Investment_Amount.hashCode ^
      Peyush_Investment_Equity.hashCode ^
      Peyush_Debt_Amount.hashCode ^
      Ghazal_Investment_Amount.hashCode ^
      Ghazal_Investment_Equity.hashCode ^
      Ghazal_Debt_Amount.hashCode ^
      Amit_Investment_Amount.hashCode ^
      Amit_Investment_Equity.hashCode ^
      Amit_Debt_Amount.hashCode ^
      Guest_Investment_Amount.hashCode ^
      Guest_Investment_Equity.hashCode ^
      Guest_Debt_Amount.hashCode ^
      Guest_Name.hashCode ^
      Yearly_Revenue_in_words.hashCode ^
      Monthly_Sales_in_words.hashCode ^
      Gross_Margin_in_words.hashCode ^
      Original_Ask_Amount_in_words.hashCode ^
      Original_Offered_Equity_in_words.hashCode ^
      Valuation_Requested_in_words.hashCode ^
      Total_Deal_Debt_in_words.hashCode ^
      Deal_Valuation_in_words.hashCode;
  }
}
