import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sharktank/common/loader.dart';
import 'package:sharktank/episode/episode_controller.dart';
import 'package:sharktank/model/company_model.dart';
import 'package:sharktank/utils/utils.dart';

import '../common/error.dart';

class EpisodeScreen extends ConsumerStatefulWidget {
  const EpisodeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends ConsumerState<EpisodeScreen> {
  List<Company> _listOfCompanies = [];

  void getAllData() async {
    // print("getAllData");
    _listOfCompanies =
        await ref.read(EpisodeControllerProvider).getCompanyInfo();
    setState(() {
      // print("_listOfCompanies" + _listOfCompanies.toString());
    });
  }

  @override
  void initState() {
    getAllData();
  }

  @override
  Widget build(BuildContext context) {
    return Expanded(
        child: ListView.builder(
            scrollDirection: Axis.vertical,
            shrinkWrap: true,
            itemCount: _listOfCompanies.length,
            itemBuilder: (BuildContext, Index) {
              final company = _listOfCompanies[Index];
              return EpisodeCard(company: company);
            }));
  }
}

class EpisodeCard extends ConsumerWidget {
  final Company company;
  const EpisodeCard({super.key, required this.company});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Container(
      height: 150,
      padding: EdgeInsets.symmetric(vertical: 5, horizontal: 5),
      child: Card(
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(25.0),
        ),
        color: Utils().cardColor(company.Industry.toString().trim()),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Align(
            alignment: Alignment.topLeft,
            child: Row(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Padding(
                padding: const EdgeInsets.fromLTRB(8.0, 8, 0, 0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                            width: 250,
                            child: Text(
                              maxLines: 2,
                              company.Startup_Name_Space.toString(),
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.bold),
                            ))),
                    SizedBox(
                      height: 5,
                    ),
                    Align(
                        alignment: Alignment.topLeft,
                        child: SizedBox(
                          width: 230,
                          child: Text(
                            company.Business_Description.toString(),
                            maxLines: 2,
                          ),
                        ))
                  ],
                ),
              ),
              Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 5,
                  ),
                  Image.asset(
                    fit: BoxFit.contain,
                    Utils().cardImage(company.Industry.toString().trim()),
                    height: 100,
                    width: 100,
                  )
                ],
              )
            ]),
          ),
        ),
      ),
    );
  }
  
}

