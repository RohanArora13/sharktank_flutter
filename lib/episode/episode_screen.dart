import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter/material.dart';
import 'package:sharktank/common/loader.dart';
import 'package:sharktank/episode/episode_controller.dart';
import 'package:sharktank/model/company_model.dart';
import 'package:sharktank/model/filter_options.dart';
import 'package:sharktank/utils/utils.dart';

import '../common/error.dart';

final ShownCompanyListProvider = StateProvider<List<Company>?>((ref) => null);

class EpisodeScreen extends ConsumerStatefulWidget {
  const EpisodeScreen({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _EpisodeScreenState();
}

class _EpisodeScreenState extends ConsumerState<EpisodeScreen> {
  bool startAnimation = false;
  final searchController = TextEditingController();
  List<Company> _ogList = [];

  // fliter sheet elements
  final List<bool> _selectedSeasons = <bool>[true, true];
  final List<Widget> seasonNames = <Widget>[Text('season 1'), Text('season 2')];
  final List<String> industryList = Utils.staticIndustryList;
  FilterOption filterOption = FilterOption(
    selectedSeasons: {"season1", "season2"},
    selectedIndustry: 'All',
  );

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
    ref
        .read(ShownCompanyListProvider.notifier)
        .update((state) => _listOfCompanies);
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
          .read(ShownCompanyListProvider.notifier)
          .update((state) => finalSetOfSearch.toList());
    } else {
      // if search length is zero show all
      ref.read(ShownCompanyListProvider.notifier).update((state) => _ogList);
    }

    //finalSetOfSearch.add();
    //print("searchList" + searchList.toString());
  }

  void onFilter() {}

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
    final List<Company>? listCompanies = ref.watch(ShownCompanyListProvider);
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
                        onPressed: () => showModalBottomSheet(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.vertical(
                                    top: Radius.circular(20))),
                            clipBehavior: Clip.antiAliasWithSaveLayer,
                            context: context,
                            builder: (context) => BottomSheetFilter()),
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

  Widget BottomSheetFilter() {
    return StatefulBuilder(
      builder: (BuildContext context, StateSetter setState) {
        return Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: Column(
            //mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Align(
                  alignment: Alignment.topCenter,
                  child: Text("Filter",
                      style: TextStyle(
                          fontSize: 23, fontWeight: FontWeight.bold))),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Divider(),
              ),
              Text(
                "Select Seasons -",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              // toggle button
              ToggleButtons(
                direction: Axis
                    .horizontal, //vertical ? Axis.vertical : Axis.horizontal,
                onPressed: (int index) {
                  int count = 0;
                  for (final bool value in _selectedSeasons) {
                    if (value) {
                      count += 1;
                    }
                  }
                  if (_selectedSeasons[index] && count < 2) {
                    return;
                  }

                  // All buttons are selectable.
                  setState(() {
                    _selectedSeasons[index] = !_selectedSeasons[index];

                    // adding in filter model
                    int count_index = 0;
                    for (final bool value in _selectedSeasons) {
                      
                      if (value && count_index == 0) {
                        filterOption.selectedSeasons.add("season1");
                      } else if (value == false && count_index == 0) {
                        filterOption.selectedSeasons.remove("season1");
                      }
                      if (value && count_index == 1) {
                        filterOption.selectedSeasons.add("season2");
                      } else if (value == false && count_index == 1) {
                        filterOption.selectedSeasons.remove("season2");
                      }
                      count_index += 1;
                    }
                   // print(_selectedSeasons);
                  // print(filterOption.selectedSeasons);
                  });
                },
                borderRadius: const BorderRadius.all(Radius.circular(8)),
                selectedBorderColor: Color.fromARGB(255, 56, 136, 142),
                selectedColor: Color.fromARGB(255, 255, 255, 255),
                fillColor: Color.fromARGB(255, 140, 202, 213),
                color: Color.fromARGB(255, 102, 156, 187),
                constraints: const BoxConstraints(
                  minHeight: 40.0,
                  minWidth: 80.0,
                ),
                isSelected: _selectedSeasons,
                children: seasonNames,
              ),
              SizedBox(
                height: 10,
              ),
              Text(
                "Select Industry -",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w300),
              ),
              SizedBox(
                height: 10,
              ),
              // Drop down option
              DropdownButton(
                // Initial Value
                value: filterOption.selectedIndustry,

                // Down Arrow Icon
                icon: const Icon(Icons.keyboard_arrow_down),

                // Array list of items
                items: industryList.map((String items) {
                  //print(items);
                  return DropdownMenuItem(
                    value: items,
                    child: Text(items),
                  );
                }).toList(),
                // After selecting the desired option,it will
                // change button value to selected value
                onChanged: (String? newValue) {
                  setState(() {
                    filterOption.selectedIndustry = newValue!;
                    // dropDownValue = newValue!;
                  });
                },
              ),
            ],
          ),
        );
      },
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
