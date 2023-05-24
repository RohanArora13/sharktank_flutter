import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sharktank/common/loader.dart';
import 'package:sharktank/episode/episode_controller.dart';
import 'package:sharktank/model/company_model.dart';
import 'package:sharktank/utils/utils.dart';

import '../common/error.dart';

final CompanyListProvider = StateProvider<List<Company>?>((ref) => null);

class EpisodeScreen extends ConsumerStatefulWidget {
  const EpisodeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends ConsumerState<EpisodeScreen> {
  bool startAnimation = false;
  final searchController = TextEditingController();
  List<Company> _ogList = [];

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    searchController.dispose();
  }

  void getAllData() async {
    List<Company> _listOfCompanies = [];
    // print("getAllData");
    _listOfCompanies =
        await ref.read(EpisodeControllerProvider).getCompanyInfo();
    _ogList = _listOfCompanies;
    ref.read(CompanyListProvider.notifier).update((state) => _listOfCompanies);
    // setState(() {
    //   startAnimation = true;
    //   // print("_listOfCompanies" + _listOfCompanies.toString());
    // });
  }

  void onSearch() async {
    String searchString = searchController.text;
    print(searchString);
    final Set<Company> finalSetOfSearch = Set();

    final searchList = _ogList;

    if (searchString.length > 0) {
      final searchStartupNameList = await searchList
          .where((element) => element.Startup_Name_Space!
              .toLowerCase()
              .contains(searchString.toLowerCase()))
          .toList();

      final searchStartupDescList = await searchList
          .where((element) => element.Business_Description!
              .toLowerCase()
              .contains(searchString.toLowerCase()))
          .toList();

      searchStartupNameList.forEach((element) {
        finalSetOfSearch.add(element);
      });
      searchStartupDescList.forEach((element) {
        finalSetOfSearch.add(element);
      });

      ref
          .read(CompanyListProvider.notifier)
          .update((state) => finalSetOfSearch.toList());
    } else {
      // if search length is zero show all
      ref.read(CompanyListProvider.notifier).update((state) => _ogList);
    }

    //finalSetOfSearch.add();
    //print("searchList" + searchList.toString());
  }

  @override
  void initState() {
    getAllData();
    searchController.addListener(() => onSearch());
    // WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
    //   setState(() {
    //     Future.delayed(const Duration(milliseconds: 2000), () {
    //       startAnimation = true;
    //     });
    //   });
    //});
  }

  @override
  Widget build(BuildContext context) {
    final screenHeight = MediaQuery.of(context).size.height;
    final screenWidth = MediaQuery.of(context).size.width;
    final List<Company>? listCompanies = ref.watch(CompanyListProvider);
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            // Align(
            //   alignment: Alignment.topCenter,
            //   child: Image.asset(
            //     alignment: Alignment.center,
            //     height: 80,
            //     fit: BoxFit.contain,
            //     "assets/shark_tank_logo.png",
            //   ),
            // ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 20.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    child: new Stack(
                        //alignment: const Alignment(1.0, 1.0),
                        children: <Widget>[
                          Container(
                            height: 45,
                            width: screenWidth / 1.25,
                            child: TextFormField(
                              decoration: InputDecoration(
                                contentPadding: EdgeInsets.all(10.0),
                                filled: true,
                                fillColor: Utils.searchGrey,
                                border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(10),
                                  borderSide: BorderSide.none,
                                ),
                                hintText: "Search Startups",
                                // suffixIcon: searchController.text.length > 0
                                //     ? IconButton(
                                //         onPressed: searchController.clear,
                                //         icon: Icon(Icons.clear),
                                //       )
                                //     : Container(
                                //         height: 0,
                                //       ),
                              ),
                              onChanged: (text) {
                                setState(() {
                                  // print(text);
                                });
                              },
                              controller: searchController,
                            ),
                          ),
                          Positioned(
                              right: 0,
                              child: searchController.text.length > 0
                                  ? new IconButton(
                                      icon: new Icon(Icons.clear),
                                      onPressed: () {
                                        setState(() {
                                          searchController.clear();
                                        });
                                      })
                                  : new Container(
                                      height: 0.0,
                                    )),
                        ]),
                  ),
                  Padding(
                    padding: const EdgeInsets.fromLTRB(8, 0, 0, 0),
                    child: Container(
                      //color: Color.fromARGB(255, 222, 221, 221),
                      decoration: BoxDecoration(
                          color: Color.fromARGB(255, 222, 221, 221),
                          borderRadius: BorderRadius.circular(10)),
                      child: IconButton(
                        color: Color.fromARGB(255, 91, 91, 91),
                        onPressed: () {},
                        icon: Icon(Icons.filter_list),
                      ),
                    ),
                  ),
                  // SizedBox(
                  //   width: 10,
                  // )
                ],
              ),
            ),
            listCompanies == null
                ? LoaderCircular()
                : Expanded(
                    child: ListView.builder(
                        primary: false,
                        scrollDirection: Axis.vertical,
                        shrinkWrap: true,
                        itemCount: listCompanies.length,
                        itemBuilder: (BuildContext, Index) {
                          final company = listCompanies[Index];
                          return SingleCard(company, Index, screenWidth);
                        }))
          ],
        ),
      ),
    );
  }

  Widget SingleCard(Company company, int index, double screenWidth) {
    return Container(
      // height: 55,
      height: 150,
      width: screenWidth,
      // curve: Curves.easeInOut,
      // duration: Duration(milliseconds: 500 + (index * 300)),
      // transform:
      //     Matrix4.translationValues(startAnimation ? 0 : screenWidth, 0, 0),
      // margin: const EdgeInsets.only(
      //   bottom: 6,
      // ),
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
