// ignore_for_file: public_member_api_docs, sort_constructors_first
import 'dart:convert';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class FilterOption {
  Set<String> selectedSeasons;
  //final List<String> seasonNames;
  String selectedIndustry;

  FilterOption({
    required this.selectedSeasons,
    required this.selectedIndustry,
  });

  FilterOption copyWith({
    Set<String>? selectedSeasons,
    String? selectedIndustry,
  }) {
    return FilterOption(
      selectedSeasons: selectedSeasons ?? this.selectedSeasons,
      selectedIndustry: selectedIndustry ?? this.selectedIndustry,
    );
  }

  Map<String, dynamic> toMap() {
    return <String, dynamic>{
      'selectedSeasons': selectedSeasons.toList(),
      'selectedIndustry': selectedIndustry,
    };
  }

  factory FilterOption.fromMap(Map<String, dynamic> map) {
    return FilterOption(
      selectedSeasons:
          Set<String>.from((map['selectedSeasons'] as Set<String>)),
      selectedIndustry: map['selectedIndustry'] as String,
    );
  }

  String toJson() => json.encode(toMap());

  factory FilterOption.fromJson(String source) =>
      FilterOption.fromMap(json.decode(source) as Map<String, dynamic>);

  @override
  String toString() =>
      'FilterOption(selectedSeasons: $selectedSeasons, selectedIndustry: $selectedIndustry)';

  @override
  bool operator ==(covariant FilterOption other) {
    if (identical(this, other)) return true;

    return setEquals(other.selectedSeasons, selectedSeasons) &&
        other.selectedIndustry == selectedIndustry;
  }

  @override
  int get hashCode => selectedSeasons.hashCode ^ selectedIndustry.hashCode;
}
