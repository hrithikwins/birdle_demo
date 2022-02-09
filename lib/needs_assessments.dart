import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'package:birdle/Function/media_query.dart';
import 'package:birdle/Helper/services.dart';

class NeedAssessments extends StatelessWidget {
  const NeedAssessments({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var model = ApiServiceController.to.clientModel.value.data!.data![0]
      ..careplanAssessments![8].assessment;
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Expanded(
              flex: 1,
              child: Container(
                color: Colors.white,
                child: Padding(
                  padding: EdgeInsets.only(left: 13),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Icon(
                          Icons.arrow_back_ios_new,
                          size: 22,
                          color: Colors.blue[700],
                        ),
                      ),
                      const SizedBox(
                        width: 6,
                      ),
                      InkWell(
                        onTap: () {
                          Get.back();
                        },
                        child: Text(
                          "Back",
                          style: TextStyle(
                              fontSize: 18,
                              fontWeight: FontWeight.w900,
                              color: Colors.blue[700]),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
            Expanded(
                flex: 12,
                child: Container(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        showHeading(title: "Toilet"),
                        SizedBox(
                          height: Get.height - 20,
                          child: Container(
                            alignment: Alignment.centerLeft,
                            padding: const EdgeInsets.all(12),
                            child: ListView(
                              // =======================
                              children: [
                                showSomeInfo(
                                  "Can Toilet Themselves",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .canToiletThemself!
                                      .canToiletThemself,
                                ),
                                showSomeInfo(
                                  "Additional Toilet Details",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .canToiletThemself!
                                      .additionalDetails,
                                ),
                                showSomeInfo(
                                  "Have Control Over Bowels",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .haveControlOverBowels!
                                      .haveControlOverBowels,
                                ),
                                showSomeInfo(
                                  "Control Over Bowel Details",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .haveControlOverBowels!
                                      .additionalDetails,
                                ),
                                showSomeInfo(
                                  "Have Control Over Bladder",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .haveControlOverBladder!
                                      .haveControlOverBladder,
                                ),
                                showSomeInfo(
                                  "Control Over Bladder Details",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .haveControlOverBladder!
                                      .additionalDetails,
                                ),
                                showSomeInfo(
                                  "Need Support With Following",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .needSupportWithFollowing!
                                      .incontinencePad,
                                ),
                                showHeading(title: "Bathing"),
                                SizedBox(
                                  height: 10,
                                ),
                                showSomeInfo(
                                  "Bathing additional details",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .needSupportWithFollowing!
                                      .incontinencePad,
                                ),
                                showSomeInfo(
                                  "Need Support With Following",
                                  model
                                      .careplanAssessments![1]
                                      .assessment!
                                      .toilet!
                                      .needSupportWithFollowing!
                                      .incontinencePad,
                                ),
                                // "bathing": {
                                // "additional_details": "Aut eligendi fugiat"
                                // },
                                // "oral_hygiene": {
                                //     "wear_dentures": {
                                //         "wear_dentures": "no",
                                //         "additional_details": "Irure qui aut qui at"
                                //     },
                                //     "can_maintain_oral_hygiene": {
                                //         "additional_details": "Architecto eos in se",
                                //         "can_maintain_oral_hygiene": "No, fully dependent"
                                //     }
                                // },
                                // "review_detail": {
                                //     "outcome": {
                                //         "outcome": "No changes required",
                                //         "additional_details": "Minima dolor ea id"
                                //     }
                                // },
                                // "personal_appearance": {
                                //     "can_dress_themself": {
                                //         "additional_details": "Suscipit omnis non l",
                                //         "can_dress_themself": "No, fully dependent"
                                //     },
                                //     "maintain_personal_appearance": {
                                //         "additional_details": "Consequatur molliti",
                                //         "maintain_personal_appearance": "No, fully dependent"
                                //     }
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ))
          ],
        ),
      ),
    );
  }

  Widget showSomeInfo(title, data) {
    return Container(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            '$title',
            style: const TextStyle(
              fontWeight: FontWeight.w500,
              fontSize: 20,
              color: Colors.grey,
            ),
          ),
          const SizedBox(
            height: 6,
          ),
          Text(
            "- " + (data ?? ""),
            style: const TextStyle(
              fontWeight: FontWeight.w700,
              fontSize: 22,
              color: Colors.black87,
            ),
          ),
          const SizedBox(
            height: 40,
          ),
        ],
      ),
    );
  }
}

class showHeading extends StatelessWidget {
  const showHeading({Key? key, required this.title}) : super(key: key);
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 12),
      alignment: Alignment.centerLeft,
      width: getWidth(context: context),
      height: 76,
      color: Colors.grey[300],
      child: Text(
        title,
        style: const TextStyle(fontWeight: FontWeight.w600, fontSize: 22),
      ),
    );
  }
}
