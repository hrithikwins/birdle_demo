import 'dart:convert';

// To parse this JSON data, do
//
//     final clientParticular = clientParticularFromJson(jsonString);

ClientParticular clientParticularFromJson(String str) =>
    ClientParticular.fromJson(json.decode(str));

String clientParticularToJson(ClientParticular data) =>
    json.encode(data.toJson());

class ClientParticular {
  ClientParticular({
    this.status,
    this.data,
    this.errors,
  });

  bool? status;
  Data? data;
  List<dynamic>? errors;

  factory ClientParticular.fromJson(Map<String, dynamic> json) =>
      ClientParticular(
        status: json["status"] == null ? null : json["status"],
        data: json["data"] == null ? null : Data.fromJson(json["data"]),
        errors: json["errors"] == null
            ? null
            : List<dynamic>.from(json["errors"].map((x) => x)),
      );

  Map<String, dynamic> toJson() => {
        "status": status == null ? null : status,
        "data": data == null ? null : data!.toJson(),
        "errors":
            errors == null ? null : List<dynamic>.from(errors!.map((x) => x)),
      };
}

class Data {
  Data({
    this.data,
    this.pagination,
  });

  List<Datum>? data;
  Pagination? pagination;

  factory Data.fromJson(Map<String, dynamic> json) => Data(
        data: json["data"] == null
            ? null
            : List<Datum>.from(json["data"].map((x) => Datum.fromJson(x))),
        pagination: json["pagination"] == null
            ? null
            : Pagination.fromJson(json["pagination"]),
      );

  Map<String, dynamic> toJson() => {
        "data": data == null
            ? null
            : List<dynamic>.from(data!.map((x) => x.toJson())),
        "pagination": pagination == null ? null : pagination!.toJson(),
      };
}

class Datum {
  Datum({
    this.id,
    this.personalDetails,
    this.personalIdentity,
    this.clinicalDetails,
    this.clientContacts,
    this.futurePlans,
    this.agencyAdmin,
    this.email,
    this.riskLabel,
    this.genrateCode,
    this.codeGeneratedAt,
    this.checkInOut,
    this.qrCheckIn,
    this.qrCode,
    this.careplanAssessments,
    this.careplanRisks,
    this.careplanSummaryAndOutComes,
    this.careplanTasks,
    this.careplanDocuments,
  });

  int? id;
  PersonalDetails? personalDetails;
  PersonalIdentity? personalIdentity;
  ClinicalDetails? clinicalDetails;
  List<ClientContact>? clientContacts;
  FuturePlans? futurePlans;
  AgencyAdmin? agencyAdmin;
  String? email;
  String? riskLabel;
  String? genrateCode;
  DateTime? codeGeneratedAt;
  String? checkInOut;
  int? qrCheckIn;
  String? qrCode;
  List<CareplanAssessment>? careplanAssessments;
  List<CareplanRisk>? careplanRisks;
  List<CareplanSummaryAndOutCome>? careplanSummaryAndOutComes;
  List<CareplanTask>? careplanTasks;
  List<CareplanDocument>? careplanDocuments;

  factory Datum.fromJson(Map<String, dynamic> json) => Datum(
        id: json["id"] == null ? null : json["id"],
        personalDetails: json["personalDetails"] == null
            ? null
            : PersonalDetails.fromJson(json["personalDetails"]),
        personalIdentity: json["personalIdentity"] == null
            ? null
            : PersonalIdentity.fromJson(json["personalIdentity"]),
        clinicalDetails: json["clinicalDetails"] == null
            ? null
            : ClinicalDetails.fromJson(json["clinicalDetails"]),
        clientContacts: json["clientContacts"] == null
            ? null
            : List<ClientContact>.from(
                json["clientContacts"].map((x) => ClientContact.fromJson(x))),
        futurePlans: json["futurePlans"] == null
            ? null
            : FuturePlans.fromJson(json["futurePlans"]),
        agencyAdmin: json["agencyAdmin"] == null
            ? null
            : AgencyAdmin.fromJson(json["agencyAdmin"]),
        email: json["email"] == null ? null : json["email"],
        riskLabel: json["riskLabel"] == null ? null : json["riskLabel"],
        genrateCode: json["genrateCode"] == null ? null : json["genrateCode"],
        codeGeneratedAt: json["codeGeneratedAt"] == null
            ? null
            : DateTime.parse(json["codeGeneratedAt"]),
        checkInOut: json["checkInOut"] == null ? null : json["checkInOut"],
        qrCheckIn: json["qrCheckIn"] == null ? null : json["qrCheckIn"],
        qrCode: json["qrCode"] == null ? null : json["qrCode"],
        careplanAssessments: json["careplanAssessments"] == null
            ? null
            : List<CareplanAssessment>.from(json["careplanAssessments"]
                .map((x) => CareplanAssessment.fromJson(x))),
        careplanRisks: json["careplanRisks"] == null
            ? null
            : List<CareplanRisk>.from(
                json["careplanRisks"].map((x) => CareplanRisk.fromJson(x))),
        careplanSummaryAndOutComes: json["careplanSummaryAndOutComes"] == null
            ? null
            : List<CareplanSummaryAndOutCome>.from(
                json["careplanSummaryAndOutComes"]
                    .map((x) => CareplanSummaryAndOutCome.fromJson(x))),
        careplanTasks: json["careplanTasks"] == null
            ? null
            : List<CareplanTask>.from(
                json["careplanTasks"].map((x) => CareplanTask.fromJson(x))),
        careplanDocuments: json["careplanDocuments"] == null
            ? null
            : List<CareplanDocument>.from(json["careplanDocuments"]
                .map((x) => CareplanDocument.fromJson(x))),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "personalDetails":
            personalDetails == null ? null : personalDetails!.toJson(),
        "personalIdentity":
            personalIdentity == null ? null : personalIdentity!.toJson(),
        "clinicalDetails":
            clinicalDetails == null ? null : clinicalDetails!.toJson(),
        "clientContacts": clientContacts == null
            ? null
            : List<dynamic>.from(clientContacts!.map((x) => x.toJson())),
        "futurePlans": futurePlans == null ? null : futurePlans!.toJson(),
        "agencyAdmin": agencyAdmin == null ? null : agencyAdmin!.toJson(),
        "email": email == null ? null : email,
        "riskLabel": riskLabel == null ? null : riskLabel,
        "genrateCode": genrateCode == null ? null : genrateCode,
        "codeGeneratedAt":
            codeGeneratedAt == null ? null : codeGeneratedAt!.toIso8601String(),
        "checkInOut": checkInOut == null ? null : checkInOut,
        "qrCheckIn": qrCheckIn == null ? null : qrCheckIn,
        "qrCode": qrCode == null ? null : qrCode,
        "careplanAssessments": careplanAssessments == null
            ? null
            : List<dynamic>.from(careplanAssessments!.map((x) => x.toJson())),
        "careplanRisks": careplanRisks == null
            ? null
            : List<dynamic>.from(careplanRisks!.map((x) => x.toJson())),
        "careplanSummaryAndOutComes": careplanSummaryAndOutComes == null
            ? null
            : List<dynamic>.from(
                careplanSummaryAndOutComes!.map((x) => x.toJson())),
        "careplanTasks": careplanTasks == null
            ? null
            : List<dynamic>.from(careplanTasks!.map((x) => x.toJson())),
        "careplanDocuments": careplanDocuments == null
            ? null
            : List<dynamic>.from(careplanDocuments!.map((x) => x.toJson())),
      };
}

class AgencyAdmin {
  AgencyAdmin({
    this.id,
    this.clientId,
    this.riskLevel,
    this.riskLevelDetails,
    this.familyInvolment,
    this.fundingOptions,
    this.localAuthorityId,
  });

  int? id;
  int? clientId;
  String? riskLevel;
  String? riskLevelDetails;
  String? familyInvolment;
  String? fundingOptions;
  String? localAuthorityId;

  factory AgencyAdmin.fromJson(Map<String, dynamic> json) => AgencyAdmin(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        riskLevel: json["riskLevel"] == null ? null : json["riskLevel"],
        riskLevelDetails:
            json["riskLevelDetails"] == null ? null : json["riskLevelDetails"],
        familyInvolment:
            json["familyInvolment"] == null ? null : json["familyInvolment"],
        fundingOptions:
            json["fundingOptions"] == null ? null : json["fundingOptions"],
        localAuthorityId:
            json["localAuthorityId"] == null ? null : json["localAuthorityId"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "riskLevel": riskLevel == null ? null : riskLevel,
        "riskLevelDetails": riskLevelDetails == null ? null : riskLevelDetails,
        "familyInvolment": familyInvolment == null ? null : familyInvolment,
        "fundingOptions": fundingOptions == null ? null : fundingOptions,
        "localAuthorityId": localAuthorityId == null ? null : localAuthorityId,
      };
}

class CareplanAssessment {
  CareplanAssessment({
    this.id,
    this.clientId,
    this.createdBy,
    this.assesmentName,
    this.careplanModuleId,
    this.assessment,
  });

  int? id;
  int? clientId;
  int? createdBy;
  String? assesmentName;
  CareplanModuleId? careplanModuleId;
  Assessment? assessment;

  factory CareplanAssessment.fromJson(Map<String, dynamic> json) =>
      CareplanAssessment(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        assesmentName:
            json["assesmentName"] == null ? null : json["assesmentName"],
        careplanModuleId: json["careplanModuleId"] == null
            ? null
            : CareplanModuleId.fromJson(json["careplanModuleId"]),
        assessment: json["assessment"] == null
            ? null
            : Assessment.fromJson(json["assessment"]),
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "createdBy": createdBy == null ? null : createdBy,
        "assesmentName": assesmentName == null ? null : assesmentName,
        "careplanModuleId":
            careplanModuleId == null ? null : careplanModuleId!.toJson(),
        "assessment": assessment == null ? null : assessment!.toJson(),
      };
}

class Assessment {
  Assessment({
    this.sight,
    this.speech,
    this.hearing,
    this.expression,
    this.comprehension,
    this.problemUsingPhone,
    this.personalPreferences,
    this.problemSummoningEmergency,
    this.skin,
    this.breathing,
    this.safeguardingIssues,
    this.toilet,
    this.bathing,
    this.oralHygiene,
    this.reviewDetail,
    this.personalAppearance,
    this.will,
    this.finances,
    this.advancedDirective,
    this.memory,
    this.moodAndSleep,
    this.satisfactionAndMotivation,
    this.feeding,
    this.appetiteAndSwallow,
    this.formalCare,
    this.informalCare,
    this.livingArrangements,
    this.house,
    this.housekeeping,
    this.homeEnvironment,
    this.storing,
    this.disposing,
    this.collecting,
    this.functional,
    this.prescriptions,
    this.medicationRisks,
    this.currentMedication,
    this.typesOfMedication,
    this.administrationSupport,
    this.client,
    this.mobility,
    this.equipment,
    this.transfers,
    this.workingEnviroment,
    this.bedroom,
    this.kitchen,
    this.outside,
    this.storage,
    this.bathroom,
    this.security,
    this.utilities,
    this.livingArea,
    this.carbonMonoxide,
    this.firePrevention,
    this.visitorsAndPets,
    this.collection,
    this.management,
    this.conclusion,
    this.capacityDetails,
    this.bmi,
    this.mst,
    this.age,
    this.sex,
    this.skinType,
    this.continence,
    this.medication,
    this.riskLevel,
    this.tissueMalnutrition,
    this.neurologicalDeficit,
    this.majorSurgeryOrTrauma,
  });

  Sight? sight;
  Speech? speech;
  Hearing? hearing;
  Expression? expression;
  Comprehension? comprehension;
  String? problemUsingPhone;
  PersonalPreferences? personalPreferences;
  ProblemSummoningEmergency? problemSummoningEmergency;
  Skin? skin;
  Breathing? breathing;
  SafeguardingIssues? safeguardingIssues;
  Toilet? toilet;
  Bathing? bathing;
  OralHygiene? oralHygiene;
  ReviewDetail? reviewDetail;
  PersonalAppearance? personalAppearance;
  Will? will;
  Finances? finances;
  AdvancedDirective? advancedDirective;
  Memory? memory;
  MoodAndSleep? moodAndSleep;
  SatisfactionAndMotivation? satisfactionAndMotivation;
  Feeding? feeding;
  AppetiteAndSwallow? appetiteAndSwallow;
  FormalCare? formalCare;
  InformalCare? informalCare;
  LivingArrangements? livingArrangements;
  House? house;
  Housekeeping? housekeeping;
  HomeEnvironment? homeEnvironment;
  Storing? storing;
  Disposing? disposing;
  Collecting? collecting;
  Functional? functional;
  Prescriptions? prescriptions;
  MedicationRisks? medicationRisks;
  CurrentMedication? currentMedication;
  TypesOfMedication? typesOfMedication;
  AdministrationSupport? administrationSupport;
  Client? client;
  Mobility? mobility;
  Equipment? equipment;
  Transfers? transfers;
  WorkingEnviroment? workingEnviroment;
  Bedroom? bedroom;
  Kitchen? kitchen;
  Outside? outside;
  Storage? storage;
  Bathroom? bathroom;
  Security? security;
  Utilities? utilities;
  LivingArea? livingArea;
  CarbonMonoxide? carbonMonoxide;
  AssessmentFirePrevention? firePrevention;
  VisitorsAndPets? visitorsAndPets;
  Collection? collection;
  Management? management;
  Conclusion? conclusion;
  CapacityDetails? capacityDetails;
  Bmi? bmi;
  Mst? mst;
  Age? age;
  Sex? sex;
  SkinType? skinType;
  Continence? continence;
  AssessmentMedication? medication;
  RiskLevel? riskLevel;
  TissueMalnutrition? tissueMalnutrition;
  NeurologicalDeficit? neurologicalDeficit;
  MajorSurgeryOrTrauma? majorSurgeryOrTrauma;

  factory Assessment.fromJson(Map<String, dynamic> json) => Assessment(
        sight: json["sight"] == null ? null : Sight.fromJson(json["sight"]),
        speech: json["speech"] == null ? null : Speech.fromJson(json["speech"]),
        hearing:
            json["hearing"] == null ? null : Hearing.fromJson(json["hearing"]),
        expression: json["expression"] == null
            ? null
            : Expression.fromJson(json["expression"]),
        comprehension: json["comprehension"] == null
            ? null
            : Comprehension.fromJson(json["comprehension"]),
        problemUsingPhone: json["problem_using_phone"] == null
            ? null
            : json["problem_using_phone"],
        personalPreferences: json["personal_preferences"] == null
            ? null
            : PersonalPreferences.fromJson(json["personal_preferences"]),
        problemSummoningEmergency: json["problem_summoning_emergency"] == null
            ? null
            : ProblemSummoningEmergency.fromJson(
                json["problem_summoning_emergency"]),
        skin: json["skin"] == null ? null : Skin.fromJson(json["skin"]),
        breathing: json["breathing"] == null
            ? null
            : Breathing.fromJson(json["breathing"]),
        safeguardingIssues: json["safeguarding_issues"] == null
            ? null
            : SafeguardingIssues.fromJson(json["safeguarding_issues"]),
        toilet: json["toilet"] == null ? null : Toilet.fromJson(json["toilet"]),
        bathing:
            json["bathing"] == null ? null : Bathing.fromJson(json["bathing"]),
        oralHygiene: json["oral_hygiene"] == null
            ? null
            : OralHygiene.fromJson(json["oral_hygiene"]),
        reviewDetail: json["review_detail"] == null
            ? null
            : ReviewDetail.fromJson(json["review_detail"]),
        personalAppearance: json["personal_appearance"] == null
            ? null
            : PersonalAppearance.fromJson(json["personal_appearance"]),
        will: json["will"] == null ? null : Will.fromJson(json["will"]),
        finances: json["finances"] == null
            ? null
            : Finances.fromJson(json["finances"]),
        advancedDirective: json["advanced_directive"] == null
            ? null
            : AdvancedDirective.fromJson(json["advanced_directive"]),
        memory: json["memory"] == null ? null : Memory.fromJson(json["memory"]),
        moodAndSleep: json["mood_and_sleep"] == null
            ? null
            : MoodAndSleep.fromJson(json["mood_and_sleep"]),
        satisfactionAndMotivation: json["satisfaction_and_motivation"] == null
            ? null
            : SatisfactionAndMotivation.fromJson(
                json["satisfaction_and_motivation"]),
        feeding:
            json["feeding"] == null ? null : Feeding.fromJson(json["feeding"]),
        appetiteAndSwallow: json["appetite_and_swallow"] == null
            ? null
            : AppetiteAndSwallow.fromJson(json["appetite_and_swallow"]),
        formalCare: json["formal_care"] == null
            ? null
            : FormalCare.fromJson(json["formal_care"]),
        informalCare: json["informal_care"] == null
            ? null
            : InformalCare.fromJson(json["informal_care"]),
        livingArrangements: json["living_arrangements"] == null
            ? null
            : LivingArrangements.fromJson(json["living_arrangements"]),
        house: json["house"] == null ? null : House.fromJson(json["house"]),
        housekeeping: json["housekeeping"] == null
            ? null
            : Housekeeping.fromJson(json["housekeeping"]),
        homeEnvironment: json["home_environment"] == null
            ? null
            : HomeEnvironment.fromJson(json["home_environment"]),
        storing:
            json["storing"] == null ? null : Storing.fromJson(json["storing"]),
        disposing: json["disposing"] == null
            ? null
            : Disposing.fromJson(json["disposing"]),
        collecting: json["collecting"] == null
            ? null
            : Collecting.fromJson(json["collecting"]),
        functional: json["functional"] == null
            ? null
            : Functional.fromJson(json["functional"]),
        prescriptions: json["prescriptions"] == null
            ? null
            : Prescriptions.fromJson(json["prescriptions"]),
        medicationRisks: json["medication_risks"] == null
            ? null
            : MedicationRisks.fromJson(json["medication_risks"]),
        currentMedication: json["current_medication"] == null
            ? null
            : CurrentMedication.fromJson(json["current_medication"]),
        typesOfMedication: json["types_of_medication"] == null
            ? null
            : TypesOfMedication.fromJson(json["types_of_medication"]),
        administrationSupport: json["administration_support"] == null
            ? null
            : AdministrationSupport.fromJson(json["administration_support"]),
        client: json["client"] == null ? null : Client.fromJson(json["client"]),
        mobility: json["mobility"] == null
            ? null
            : Mobility.fromJson(json["mobility"]),
        equipment: json["equipment"] == null
            ? null
            : Equipment.fromJson(json["equipment"]),
        transfers: json["transfers"] == null
            ? null
            : Transfers.fromJson(json["transfers"]),
        workingEnviroment: json["working_enviroment"] == null
            ? null
            : WorkingEnviroment.fromJson(json["working_enviroment"]),
        bedroom:
            json["bedroom"] == null ? null : Bedroom.fromJson(json["bedroom"]),
        kitchen:
            json["kitchen"] == null ? null : Kitchen.fromJson(json["kitchen"]),
        outside:
            json["outside"] == null ? null : Outside.fromJson(json["outside"]),
        storage:
            json["storage"] == null ? null : Storage.fromJson(json["storage"]),
        bathroom: json["bathroom"] == null
            ? null
            : Bathroom.fromJson(json["bathroom"]),
        security: json["security"] == null
            ? null
            : Security.fromJson(json["security"]),
        utilities: json["utilities"] == null
            ? null
            : Utilities.fromJson(json["utilities"]),
        livingArea: json["living_area"] == null
            ? null
            : LivingArea.fromJson(json["living_area"]),
        carbonMonoxide: json["carbon_monoxide"] == null
            ? null
            : CarbonMonoxide.fromJson(json["carbon_monoxide"]),
        firePrevention: json["fire_prevention"] == null
            ? null
            : AssessmentFirePrevention.fromJson(json["fire_prevention"]),
        visitorsAndPets: json["visitors_and_pets"] == null
            ? null
            : VisitorsAndPets.fromJson(json["visitors_and_pets"]),
        collection: json["collection"] == null
            ? null
            : Collection.fromJson(json["collection"]),
        management: json["management"] == null
            ? null
            : Management.fromJson(json["management"]),
        conclusion: json["conclusion"] == null
            ? null
            : Conclusion.fromJson(json["conclusion"]),
        capacityDetails: json["capacity_details"] == null
            ? null
            : CapacityDetails.fromJson(json["capacity_details"]),
        bmi: json["BMI"] == null ? null : Bmi.fromJson(json["BMI"]),
        mst: json["MST"] == null ? null : Mst.fromJson(json["MST"]),
        age: json["age"] == null ? null : Age.fromJson(json["age"]),
        sex: json["sex"] == null ? null : Sex.fromJson(json["sex"]),
        skinType: json["skin_type"] == null
            ? null
            : SkinType.fromJson(json["skin_type"]),
        continence: json["continence"] == null
            ? null
            : Continence.fromJson(json["continence"]),
        medication: json["medication"] == null
            ? null
            : AssessmentMedication.fromJson(json["medication"]),
        riskLevel: json["risk_level"] == null
            ? null
            : RiskLevel.fromJson(json["risk_level"]),
        tissueMalnutrition: json["tissue_malnutrition"] == null
            ? null
            : TissueMalnutrition.fromJson(json["tissue_malnutrition"]),
        neurologicalDeficit: json["neurological_deficit"] == null
            ? null
            : NeurologicalDeficit.fromJson(json["neurological_deficit"]),
        majorSurgeryOrTrauma: json["major_surgery_or_trauma"] == null
            ? null
            : MajorSurgeryOrTrauma.fromJson(json["major_surgery_or_trauma"]),
      );

  Map<String, dynamic> toJson() => {
        "sight": sight == null ? null : sight!.toJson(),
        "speech": speech == null ? null : speech!.toJson(),
        "hearing": hearing == null ? null : hearing!.toJson(),
        "expression": expression == null ? null : expression!.toJson(),
        "comprehension": comprehension == null ? null : comprehension!.toJson(),
        "problem_using_phone":
            problemUsingPhone == null ? null : problemUsingPhone,
        "personal_preferences":
            personalPreferences == null ? null : personalPreferences!.toJson(),
        "problem_summoning_emergency": problemSummoningEmergency == null
            ? null
            : problemSummoningEmergency!.toJson(),
        "skin": skin == null ? null : skin!.toJson(),
        "breathing": breathing == null ? null : breathing!.toJson(),
        "safeguarding_issues":
            safeguardingIssues == null ? null : safeguardingIssues!.toJson(),
        "toilet": toilet == null ? null : toilet!.toJson(),
        "bathing": bathing == null ? null : bathing!.toJson(),
        "oral_hygiene": oralHygiene == null ? null : oralHygiene!.toJson(),
        "review_detail": reviewDetail == null ? null : reviewDetail!.toJson(),
        "personal_appearance":
            personalAppearance == null ? null : personalAppearance!.toJson(),
        "will": will == null ? null : will!.toJson(),
        "finances": finances == null ? null : finances!.toJson(),
        "advanced_directive":
            advancedDirective == null ? null : advancedDirective!.toJson(),
        "memory": memory == null ? null : memory!.toJson(),
        "mood_and_sleep": moodAndSleep == null ? null : moodAndSleep!.toJson(),
        "satisfaction_and_motivation": satisfactionAndMotivation == null
            ? null
            : satisfactionAndMotivation!.toJson(),
        "feeding": feeding == null ? null : feeding!.toJson(),
        "appetite_and_swallow":
            appetiteAndSwallow == null ? null : appetiteAndSwallow!.toJson(),
        "formal_care": formalCare == null ? null : formalCare!.toJson(),
        "informal_care": informalCare == null ? null : informalCare!.toJson(),
        "living_arrangements":
            livingArrangements == null ? null : livingArrangements!.toJson(),
        "house": house == null ? null : house!.toJson(),
        "housekeeping": housekeeping == null ? null : housekeeping!.toJson(),
        "home_environment":
            homeEnvironment == null ? null : homeEnvironment!.toJson(),
        "storing": storing == null ? null : storing!.toJson(),
        "disposing": disposing == null ? null : disposing!.toJson(),
        "collecting": collecting == null ? null : collecting!.toJson(),
        "functional": functional == null ? null : functional!.toJson(),
        "prescriptions": prescriptions == null ? null : prescriptions!.toJson(),
        "medication_risks":
            medicationRisks == null ? null : medicationRisks!.toJson(),
        "current_medication":
            currentMedication == null ? null : currentMedication!.toJson(),
        "types_of_medication":
            typesOfMedication == null ? null : typesOfMedication!.toJson(),
        "administration_support": administrationSupport == null
            ? null
            : administrationSupport!.toJson(),
        "client": client == null ? null : client!.toJson(),
        "mobility": mobility == null ? null : mobility!.toJson(),
        "equipment": equipment == null ? null : equipment!.toJson(),
        "transfers": transfers == null ? null : transfers!.toJson(),
        "working_enviroment":
            workingEnviroment == null ? null : workingEnviroment!.toJson(),
        "bedroom": bedroom == null ? null : bedroom!.toJson(),
        "kitchen": kitchen == null ? null : kitchen!.toJson(),
        "outside": outside == null ? null : outside!.toJson(),
        "storage": storage == null ? null : storage!.toJson(),
        "bathroom": bathroom == null ? null : bathroom!.toJson(),
        "security": security == null ? null : security!.toJson(),
        "utilities": utilities == null ? null : utilities!.toJson(),
        "living_area": livingArea == null ? null : livingArea!.toJson(),
        "carbon_monoxide":
            carbonMonoxide == null ? null : carbonMonoxide!.toJson(),
        "fire_prevention":
            firePrevention == null ? null : firePrevention!.toJson(),
        "visitors_and_pets":
            visitorsAndPets == null ? null : visitorsAndPets!.toJson(),
        "collection": collection == null ? null : collection!.toJson(),
        "management": management == null ? null : management!.toJson(),
        "conclusion": conclusion == null ? null : conclusion!.toJson(),
        "capacity_details":
            capacityDetails == null ? null : capacityDetails!.toJson(),
        "BMI": bmi == null ? null : bmi!.toJson(),
        "MST": mst == null ? null : mst!.toJson(),
        "age": age == null ? null : age!.toJson(),
        "sex": sex == null ? null : sex!.toJson(),
        "skin_type": skinType == null ? null : skinType!.toJson(),
        "continence": continence == null ? null : continence!.toJson(),
        "medication": medication == null ? null : medication!.toJson(),
        "risk_level": riskLevel == null ? null : riskLevel!.toJson(),
        "tissue_malnutrition":
            tissueMalnutrition == null ? null : tissueMalnutrition!.toJson(),
        "neurological_deficit":
            neurologicalDeficit == null ? null : neurologicalDeficit!.toJson(),
        "major_surgery_or_trauma": majorSurgeryOrTrauma == null
            ? null
            : majorSurgeryOrTrauma!.toJson(),
      };
}

class AdministrationSupport {
  AdministrationSupport({
    this.provideAdministerMedication,
    this.levelOfSupportInMedication,
    this.needsAssociatedWithMedication,
  });

  ProvideAdministerMedication? provideAdministerMedication;
  LevelOfSupportInMedication? levelOfSupportInMedication;
  NeedsAssociatedWithMedication? needsAssociatedWithMedication;

  factory AdministrationSupport.fromJson(Map<String, dynamic> json) =>
      AdministrationSupport(
        provideAdministerMedication:
            json["provide_administer_medication"] == null
                ? null
                : ProvideAdministerMedication.fromJson(
                    json["provide_administer_medication"]),
        levelOfSupportInMedication:
            json["level_of_support_in_medication"] == null
                ? null
                : LevelOfSupportInMedication.fromJson(
                    json["level_of_support_in_medication"]),
        needsAssociatedWithMedication:
            json["needs_associated_with_medication"] == null
                ? null
                : NeedsAssociatedWithMedication.fromJson(
                    json["needs_associated_with_medication"]),
      );

  Map<String, dynamic> toJson() => {
        "provide_administer_medication": provideAdministerMedication == null
            ? null
            : provideAdministerMedication!.toJson(),
        "level_of_support_in_medication": levelOfSupportInMedication == null
            ? null
            : levelOfSupportInMedication!.toJson(),
        "needs_associated_with_medication":
            needsAssociatedWithMedication == null
                ? null
                : needsAssociatedWithMedication!.toJson(),
      };
}

class LevelOfSupportInMedication {
  LevelOfSupportInMedication({
    this.additionalDetails,
    this.levelOfSupportInMedication,
  });

  String? additionalDetails;
  String? levelOfSupportInMedication;

  factory LevelOfSupportInMedication.fromJson(Map<String, dynamic> json) =>
      LevelOfSupportInMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        levelOfSupportInMedication:
            json["level_of_support_in_medication"] == null
                ? null
                : json["level_of_support_in_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "level_of_support_in_medication": levelOfSupportInMedication == null
            ? null
            : levelOfSupportInMedication,
      };
}

class NeedsAssociatedWithMedication {
  NeedsAssociatedWithMedication({
    this.additionalDetails,
    this.needsAssociatedWithMedication,
  });

  String? additionalDetails;
  String? needsAssociatedWithMedication;

  factory NeedsAssociatedWithMedication.fromJson(Map<String, dynamic> json) =>
      NeedsAssociatedWithMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        needsAssociatedWithMedication:
            json["needs_associated_with_medication"] == null
                ? null
                : json["needs_associated_with_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "needs_associated_with_medication":
            needsAssociatedWithMedication == null
                ? null
                : needsAssociatedWithMedication,
      };
}

class ProvideAdministerMedication {
  ProvideAdministerMedication({
    this.additionalDetails,
    this.provideAdministerMedication,
  });

  String? additionalDetails;
  String? provideAdministerMedication;

  factory ProvideAdministerMedication.fromJson(Map<String, dynamic> json) =>
      ProvideAdministerMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        provideAdministerMedication:
            json["provide_administer_medication"] == null
                ? null
                : json["provide_administer_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "provide_administer_medication": provideAdministerMedication == null
            ? null
            : provideAdministerMedication,
      };
}

class AdvancedDirective {
  AdvancedDirective({
    this.additionDetails,
    this.haveAdvancedDirective,
    this.whereAdvancedDirectiveIsKept,
  });

  String? additionDetails;
  String? haveAdvancedDirective;
  String? whereAdvancedDirectiveIsKept;

  factory AdvancedDirective.fromJson(Map<String, dynamic> json) =>
      AdvancedDirective(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        haveAdvancedDirective: json["have_advanced_directive"] == null
            ? null
            : json["have_advanced_directive"],
        whereAdvancedDirectiveIsKept:
            json["where_advanced_directive_is_kept"] == null
                ? null
                : json["where_advanced_directive_is_kept"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "have_advanced_directive":
            haveAdvancedDirective == null ? null : haveAdvancedDirective,
        "where_advanced_directive_is_kept": whereAdvancedDirectiveIsKept == null
            ? null
            : whereAdvancedDirectiveIsKept,
      };
}

class Age {
  Age({
    this.age,
    this.addScore,
  });

  String? age;
  String? addScore;

  factory Age.fromJson(Map<String, dynamic> json) => Age(
        age: json["'age'"] == null ? null : json["'age'"],
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
      );

  Map<String, dynamic> toJson() => {
        "'age'": age == null ? null : age,
        "'add_score'": addScore == null ? null : addScore,
      };
}

class AppetiteAndSwallow {
  AppetiteAndSwallow({
    this.whatSwallowLike,
    this.whatAppetiteLike,
  });

  WhatSwallowLike? whatSwallowLike;
  WhatAppetiteLike? whatAppetiteLike;

  factory AppetiteAndSwallow.fromJson(Map<String, dynamic> json) =>
      AppetiteAndSwallow(
        whatSwallowLike: json["what_swallow_like"] == null
            ? null
            : WhatSwallowLike.fromJson(json["what_swallow_like"]),
        whatAppetiteLike: json["what_appetite_like"] == null
            ? null
            : WhatAppetiteLike.fromJson(json["what_appetite_like"]),
      );

  Map<String, dynamic> toJson() => {
        "what_swallow_like":
            whatSwallowLike == null ? null : whatSwallowLike!.toJson(),
        "what_appetite_like":
            whatAppetiteLike == null ? null : whatAppetiteLike!.toJson(),
      };
}

class WhatAppetiteLike {
  WhatAppetiteLike({
    this.additionDetails,
    this.whatAppetiteLike,
  });

  String? additionDetails;
  String? whatAppetiteLike;

  factory WhatAppetiteLike.fromJson(Map<String, dynamic> json) =>
      WhatAppetiteLike(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        whatAppetiteLike: json["what_appetite_like"] == null
            ? null
            : json["what_appetite_like"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "what_appetite_like":
            whatAppetiteLike == null ? null : whatAppetiteLike,
      };
}

class WhatSwallowLike {
  WhatSwallowLike({
    this.additionDetails,
    this.whatSwallowLike,
  });

  String? additionDetails;
  String? whatSwallowLike;

  factory WhatSwallowLike.fromJson(Map<String, dynamic> json) =>
      WhatSwallowLike(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        whatSwallowLike: json["what_swallow_like"] == null
            ? null
            : json["what_swallow_like"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "what_swallow_like": whatSwallowLike == null ? null : whatSwallowLike,
      };
}

class Bathing {
  Bathing({
    this.canWashThemself,
    this.additionalDetails,
  });

  String? canWashThemself;
  String? additionalDetails;

  factory Bathing.fromJson(Map<String, dynamic> json) => Bathing(
        canWashThemself: json["can_wash_themself"] == null
            ? null
            : json["can_wash_themself"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "can_wash_themself": canWashThemself == null ? null : canWashThemself,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Bathroom {
  Bathroom({
    this.riskWithShower,
    this.riskWithToilet,
    this.otherBathroomRisks,
    this.riskWithBathroomFlooring,
  });

  RiskWithShower? riskWithShower;
  RiskWithToilet? riskWithToilet;
  OtherBathroomRisks? otherBathroomRisks;
  RiskWithBathroomFlooring? riskWithBathroomFlooring;

  factory Bathroom.fromJson(Map<String, dynamic> json) => Bathroom(
        riskWithShower: json["risk_with_shower"] == null
            ? null
            : RiskWithShower.fromJson(json["risk_with_shower"]),
        riskWithToilet: json["risk_with_toilet"] == null
            ? null
            : RiskWithToilet.fromJson(json["risk_with_toilet"]),
        otherBathroomRisks: json["other_bathroom_risks"] == null
            ? null
            : OtherBathroomRisks.fromJson(json["other_bathroom_risks"]),
        riskWithBathroomFlooring: json["risk_with_bathroom_flooring"] == null
            ? null
            : RiskWithBathroomFlooring.fromJson(
                json["risk_with_bathroom_flooring"]),
      );

  Map<String, dynamic> toJson() => {
        "risk_with_shower":
            riskWithShower == null ? null : riskWithShower!.toJson(),
        "risk_with_toilet":
            riskWithToilet == null ? null : riskWithToilet!.toJson(),
        "other_bathroom_risks":
            otherBathroomRisks == null ? null : otherBathroomRisks!.toJson(),
        "risk_with_bathroom_flooring": riskWithBathroomFlooring == null
            ? null
            : riskWithBathroomFlooring!.toJson(),
      };
}

class OtherBathroomRisks {
  OtherBathroomRisks({
    this.riskMitigated,
    this.additionalDetails,
    this.otherBathroomRisks,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? otherBathroomRisks;

  factory OtherBathroomRisks.fromJson(Map<String, dynamic> json) =>
      OtherBathroomRisks(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        otherBathroomRisks: json["other_bathroom_risks"] == null
            ? null
            : json["other_bathroom_risks"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "other_bathroom_risks":
            otherBathroomRisks == null ? null : otherBathroomRisks,
      };
}

class RiskWithBathroomFlooring {
  RiskWithBathroomFlooring({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithBathroomFlooring,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithBathroomFlooring;

  factory RiskWithBathroomFlooring.fromJson(Map<String, dynamic> json) =>
      RiskWithBathroomFlooring(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithBathroomFlooring: json["risk_with_bathroom_flooring"] == null
            ? null
            : json["risk_with_bathroom_flooring"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_bathroom_flooring":
            riskWithBathroomFlooring == null ? null : riskWithBathroomFlooring,
      };
}

class RiskWithShower {
  RiskWithShower({
    this.riskMitigated,
    this.riskWithShower,
    this.additionalDetails,
  });

  dynamic riskMitigated;
  String? riskWithShower;
  String? additionalDetails;

  factory RiskWithShower.fromJson(Map<String, dynamic> json) => RiskWithShower(
        riskMitigated: json["risk_mitigated"],
        riskWithShower:
            json["risk_with_shower"] == null ? null : json["risk_with_shower"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "risk_with_shower": riskWithShower == null ? null : riskWithShower,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiskWithToilet {
  RiskWithToilet({
    this.riskMitigated,
    this.riskWithToilet,
    this.additionalDetails,
  });

  dynamic riskMitigated;
  String? riskWithToilet;
  String? additionalDetails;

  factory RiskWithToilet.fromJson(Map<String, dynamic> json) => RiskWithToilet(
        riskMitigated: json["risk_mitigated"],
        riskWithToilet:
            json["risk_with_toilet"] == null ? null : json["risk_with_toilet"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "risk_with_toilet": riskWithToilet == null ? null : riskWithToilet,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Bedroom {
  Bedroom({
    this.riskWithBed,
    this.otherRiskInBedroom,
    this.riskWithBedroomFlooring,
    this.concernsWithCordsInBedroom,
  });

  RiskWithBed? riskWithBed;
  OtherRiskInBedroom? otherRiskInBedroom;
  RiskWithBedroomFlooring? riskWithBedroomFlooring;
  ConcernsWithCordsInBedroom? concernsWithCordsInBedroom;

  factory Bedroom.fromJson(Map<String, dynamic> json) => Bedroom(
        riskWithBed: json["risk_with_bed"] == null
            ? null
            : RiskWithBed.fromJson(json["risk_with_bed"]),
        otherRiskInBedroom: json["other_risk_in_bedroom"] == null
            ? null
            : OtherRiskInBedroom.fromJson(json["other_risk_in_bedroom"]),
        riskWithBedroomFlooring: json["risk_with_bedroom_flooring"] == null
            ? null
            : RiskWithBedroomFlooring.fromJson(
                json["risk_with_bedroom_flooring"]),
        concernsWithCordsInBedroom:
            json["concerns_with_cords_in_bedroom"] == null
                ? null
                : ConcernsWithCordsInBedroom.fromJson(
                    json["concerns_with_cords_in_bedroom"]),
      );

  Map<String, dynamic> toJson() => {
        "risk_with_bed": riskWithBed == null ? null : riskWithBed!.toJson(),
        "other_risk_in_bedroom":
            otherRiskInBedroom == null ? null : otherRiskInBedroom!.toJson(),
        "risk_with_bedroom_flooring": riskWithBedroomFlooring == null
            ? null
            : riskWithBedroomFlooring!.toJson(),
        "concerns_with_cords_in_bedroom": concernsWithCordsInBedroom == null
            ? null
            : concernsWithCordsInBedroom!.toJson(),
      };
}

class ConcernsWithCordsInBedroom {
  ConcernsWithCordsInBedroom({
    this.riskMitigated,
    this.additionalDetails,
    this.concernsWithCordsInBedroom,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? concernsWithCordsInBedroom;

  factory ConcernsWithCordsInBedroom.fromJson(Map<String, dynamic> json) =>
      ConcernsWithCordsInBedroom(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        concernsWithCordsInBedroom:
            json["concerns_with_cords_in_bedroom"] == null
                ? null
                : json["concerns_with_cords_in_bedroom"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "concerns_with_cords_in_bedroom": concernsWithCordsInBedroom == null
            ? null
            : concernsWithCordsInBedroom,
      };
}

class OtherRiskInBedroom {
  OtherRiskInBedroom({
    this.riskMitigated,
    this.additionalDetails,
    this.otherRiskInBedroom,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? otherRiskInBedroom;

  factory OtherRiskInBedroom.fromJson(Map<String, dynamic> json) =>
      OtherRiskInBedroom(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        otherRiskInBedroom: json["other_risk_in_bedroom"] == null
            ? null
            : json["other_risk_in_bedroom"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "other_risk_in_bedroom":
            otherRiskInBedroom == null ? null : otherRiskInBedroom,
      };
}

class RiskWithBed {
  RiskWithBed({
    this.riskWithBed,
    this.riskMitigated,
    this.additionalDetails,
  });

  String? riskWithBed;
  String? riskMitigated;
  String? additionalDetails;

  factory RiskWithBed.fromJson(Map<String, dynamic> json) => RiskWithBed(
        riskWithBed:
            json["risk_with_bed"] == null ? null : json["risk_with_bed"],
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_with_bed": riskWithBed == null ? null : riskWithBed,
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiskWithBedroomFlooring {
  RiskWithBedroomFlooring({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithBedroomFlooring,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithBedroomFlooring;

  factory RiskWithBedroomFlooring.fromJson(Map<String, dynamic> json) =>
      RiskWithBedroomFlooring(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithBedroomFlooring: json["risk_with_bedroom_flooring"] == null
            ? null
            : json["risk_with_bedroom_flooring"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_bedroom_flooring":
            riskWithBedroomFlooring == null ? null : riskWithBedroomFlooring,
      };
}

class Bmi {
  Bmi({
    this.addScore,
    this.buildForHeight,
    this.knowHeightAndWeight,
  });

  String? addScore;
  String? buildForHeight;
  String? knowHeightAndWeight;

  factory Bmi.fromJson(Map<String, dynamic> json) => Bmi(
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        buildForHeight: json["'build_for_height'"] == null
            ? null
            : json["'build_for_height'"],
        knowHeightAndWeight: json["know_height_and_weight"] == null
            ? null
            : json["know_height_and_weight"],
      );

  Map<String, dynamic> toJson() => {
        "'add_score'": addScore == null ? null : addScore,
        "'build_for_height'": buildForHeight == null ? null : buildForHeight,
        "know_height_and_weight":
            knowHeightAndWeight == null ? null : knowHeightAndWeight,
      };
}

class Breathing {
  Breathing({
    this.additionDetails,
    this.anyDifficultyInBreathing,
  });

  String? additionDetails;
  String? anyDifficultyInBreathing;

  factory Breathing.fromJson(Map<String, dynamic> json) => Breathing(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        anyDifficultyInBreathing: json["any_difficulty_in_breathing"] == null
            ? null
            : json["any_difficulty_in_breathing"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "any_difficulty_in_breathing":
            anyDifficultyInBreathing == null ? null : anyDifficultyInBreathing,
      };
}

class CapacityDetails {
  CapacityDetails({
    this.impairmentOfMind,
    this.pastAndPresentWishes,
    this.communicateTheirDecision,
    this.remeberAndUnderstandInfo,
    this.impairmentInDecisionMaking,
    this.suppotyToMakeThisDecision,
    this.generalUnderstaingToMakeDecision,
    this.generalUnderstaingOfConsequencesOfDecision,
  });

  ImpairmentOfMind? impairmentOfMind;
  String? pastAndPresentWishes;
  CommunicateTheirDecision? communicateTheirDecision;
  RemeberAndUnderstandInfo? remeberAndUnderstandInfo;
  ImpairmentInDecisionMaking? impairmentInDecisionMaking;
  String? suppotyToMakeThisDecision;
  GeneralUnderstaingToMakeDecision? generalUnderstaingToMakeDecision;
  GeneralUnderstaingOfConsequencesOfDecision?
      generalUnderstaingOfConsequencesOfDecision;

  factory CapacityDetails.fromJson(Map<String, dynamic> json) =>
      CapacityDetails(
        impairmentOfMind: json["impairment_of_mind"] == null
            ? null
            : ImpairmentOfMind.fromJson(json["impairment_of_mind"]),
        pastAndPresentWishes: json["past_and_present_wishes"] == null
            ? null
            : json["past_and_present_wishes"],
        communicateTheirDecision: json["communicate_their_decision"] == null
            ? null
            : CommunicateTheirDecision.fromJson(
                json["communicate_their_decision"]),
        remeberAndUnderstandInfo: json["remeber_and_understand_info"] == null
            ? null
            : RemeberAndUnderstandInfo.fromJson(
                json["remeber_and_understand_info"]),
        impairmentInDecisionMaking:
            json["impairment_in_decision_making"] == null
                ? null
                : ImpairmentInDecisionMaking.fromJson(
                    json["impairment_in_decision_making"]),
        suppotyToMakeThisDecision: json["suppoty_to_make_this_decision"] == null
            ? null
            : json["suppoty_to_make_this_decision"],
        generalUnderstaingToMakeDecision:
            json["general_understaing_to_make_decision"] == null
                ? null
                : GeneralUnderstaingToMakeDecision.fromJson(
                    json["general_understaing_to_make_decision"]),
        generalUnderstaingOfConsequencesOfDecision:
            json["general_understaing_of_consequences_of_decision"] == null
                ? null
                : GeneralUnderstaingOfConsequencesOfDecision.fromJson(
                    json["general_understaing_of_consequences_of_decision"]),
      );

  Map<String, dynamic> toJson() => {
        "impairment_of_mind":
            impairmentOfMind == null ? null : impairmentOfMind!.toJson(),
        "past_and_present_wishes":
            pastAndPresentWishes == null ? null : pastAndPresentWishes,
        "communicate_their_decision": communicateTheirDecision == null
            ? null
            : communicateTheirDecision!.toJson(),
        "remeber_and_understand_info": remeberAndUnderstandInfo == null
            ? null
            : remeberAndUnderstandInfo!.toJson(),
        "impairment_in_decision_making": impairmentInDecisionMaking == null
            ? null
            : impairmentInDecisionMaking!.toJson(),
        "suppoty_to_make_this_decision": suppotyToMakeThisDecision == null
            ? null
            : suppotyToMakeThisDecision,
        "general_understaing_to_make_decision":
            generalUnderstaingToMakeDecision == null
                ? null
                : generalUnderstaingToMakeDecision!.toJson(),
        "general_understaing_of_consequences_of_decision":
            generalUnderstaingOfConsequencesOfDecision == null
                ? null
                : generalUnderstaingOfConsequencesOfDecision!.toJson(),
      };
}

class CommunicateTheirDecision {
  CommunicateTheirDecision({
    this.additionalDetails,
    this.communicateTheirDecision,
  });

  String? additionalDetails;
  String? communicateTheirDecision;

  factory CommunicateTheirDecision.fromJson(Map<String, dynamic> json) =>
      CommunicateTheirDecision(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        communicateTheirDecision: json["communicate_their_decision"] == null
            ? null
            : json["communicate_their_decision"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "communicate_their_decision":
            communicateTheirDecision == null ? null : communicateTheirDecision,
      };
}

class GeneralUnderstaingOfConsequencesOfDecision {
  GeneralUnderstaingOfConsequencesOfDecision({
    this.additionalDetails,
    this.generalUnderstaingOfConsequencesOfDecision,
  });

  String? additionalDetails;
  String? generalUnderstaingOfConsequencesOfDecision;

  factory GeneralUnderstaingOfConsequencesOfDecision.fromJson(
          Map<String, dynamic> json) =>
      GeneralUnderstaingOfConsequencesOfDecision(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        generalUnderstaingOfConsequencesOfDecision:
            json["general_understaing_of_consequences_of_decision"] == null
                ? null
                : json["general_understaing_of_consequences_of_decision"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "general_understaing_of_consequences_of_decision":
            generalUnderstaingOfConsequencesOfDecision == null
                ? null
                : generalUnderstaingOfConsequencesOfDecision,
      };
}

class GeneralUnderstaingToMakeDecision {
  GeneralUnderstaingToMakeDecision({
    this.additionalDetails,
    this.generalUnderstaingToMakeDecision,
  });

  String? additionalDetails;
  String? generalUnderstaingToMakeDecision;

  factory GeneralUnderstaingToMakeDecision.fromJson(
          Map<String, dynamic> json) =>
      GeneralUnderstaingToMakeDecision(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        generalUnderstaingToMakeDecision:
            json["general_understaing_to_make_decision"] == null
                ? null
                : json["general_understaing_to_make_decision"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "general_understaing_to_make_decision":
            generalUnderstaingToMakeDecision == null
                ? null
                : generalUnderstaingToMakeDecision,
      };
}

class ImpairmentInDecisionMaking {
  ImpairmentInDecisionMaking({
    this.additionalDetails,
    this.impairmentInDecisionMaking,
  });

  String? additionalDetails;
  String? impairmentInDecisionMaking;

  factory ImpairmentInDecisionMaking.fromJson(Map<String, dynamic> json) =>
      ImpairmentInDecisionMaking(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        impairmentInDecisionMaking:
            json["impairment_in_decision_making"] == null
                ? null
                : json["impairment_in_decision_making"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "impairment_in_decision_making": impairmentInDecisionMaking == null
            ? null
            : impairmentInDecisionMaking,
      };
}

class ImpairmentOfMind {
  ImpairmentOfMind({
    this.additionalDetails,
    this.impairmentOfMind,
  });

  String? additionalDetails;
  String? impairmentOfMind;

  factory ImpairmentOfMind.fromJson(Map<String, dynamic> json) =>
      ImpairmentOfMind(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        impairmentOfMind: json["impairment_of_mind"] == null
            ? null
            : json["impairment_of_mind"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "impairment_of_mind":
            impairmentOfMind == null ? null : impairmentOfMind,
      };
}

class RemeberAndUnderstandInfo {
  RemeberAndUnderstandInfo({
    this.additionalDetails,
    this.remeberAndUnderstandInfo,
  });

  String? additionalDetails;
  String? remeberAndUnderstandInfo;

  factory RemeberAndUnderstandInfo.fromJson(Map<String, dynamic> json) =>
      RemeberAndUnderstandInfo(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        remeberAndUnderstandInfo: json["remeber_and_understand_info"] == null
            ? null
            : json["remeber_and_understand_info"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "remeber_and_understand_info":
            remeberAndUnderstandInfo == null ? null : remeberAndUnderstandInfo,
      };
}

class CarbonMonoxide {
  CarbonMonoxide({
    this.loneWorkerRisks,
    this.carbonMonoxideDetectors,
  });

  LoneWorkerRisks? loneWorkerRisks;
  CarbonMonoxideDetectors? carbonMonoxideDetectors;

  factory CarbonMonoxide.fromJson(Map<String, dynamic> json) => CarbonMonoxide(
        loneWorkerRisks: json["lone_worker_risks"] == null
            ? null
            : LoneWorkerRisks.fromJson(json["lone_worker_risks"]),
        carbonMonoxideDetectors: json["carbon_monoxide_detectors"] == null
            ? null
            : CarbonMonoxideDetectors.fromJson(
                json["carbon_monoxide_detectors"]),
      );

  Map<String, dynamic> toJson() => {
        "lone_worker_risks":
            loneWorkerRisks == null ? null : loneWorkerRisks!.toJson(),
        "carbon_monoxide_detectors": carbonMonoxideDetectors == null
            ? null
            : carbonMonoxideDetectors!.toJson(),
      };
}

class CarbonMonoxideDetectors {
  CarbonMonoxideDetectors({
    this.riskMitigated,
    this.additionalDetails,
    this.carbonMonoxideDetectorsLocation,
    this.riskWithCarbonMonoxideDetectors,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? carbonMonoxideDetectorsLocation;
  String? riskWithCarbonMonoxideDetectors;

  factory CarbonMonoxideDetectors.fromJson(Map<String, dynamic> json) =>
      CarbonMonoxideDetectors(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        carbonMonoxideDetectorsLocation:
            json["carbon_monoxide_detectors_location"] == null
                ? null
                : json["carbon_monoxide_detectors_location"],
        riskWithCarbonMonoxideDetectors:
            json["risk_with_carbon_monoxide_detectors"] == null
                ? null
                : json["risk_with_carbon_monoxide_detectors"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "carbon_monoxide_detectors_location":
            carbonMonoxideDetectorsLocation == null
                ? null
                : carbonMonoxideDetectorsLocation,
        "risk_with_carbon_monoxide_detectors":
            riskWithCarbonMonoxideDetectors == null
                ? null
                : riskWithCarbonMonoxideDetectors,
      };
}

class LoneWorkerRisks {
  LoneWorkerRisks({
    this.riskMitigated,
    this.loneWorkerRisks,
    this.additionalDetails,
  });

  String? riskMitigated;
  String? loneWorkerRisks;
  String? additionalDetails;

  factory LoneWorkerRisks.fromJson(Map<String, dynamic> json) =>
      LoneWorkerRisks(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        loneWorkerRisks: json["lone_worker_risks"] == null
            ? null
            : json["lone_worker_risks"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "lone_worker_risks": loneWorkerRisks == null ? null : loneWorkerRisks,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Client {
  Client({
    this.noOfFalls,
    this.canBearWeight,
    this.historyOfFalls,
    this.painInMovement,
    this.additionalDetails,
    this.physiqueDifficulty,
    this.challengingBehaviour,
    this.cognitiveImpairments,
    this.clientSpecificConcerns,
  });

  String? noOfFalls;
  CanBearWeight? canBearWeight;
  String? historyOfFalls;
  PainInMovement? painInMovement;
  String? additionalDetails;
  PhysiqueDifficulty? physiqueDifficulty;
  ChallengingBehaviour? challengingBehaviour;
  CognitiveImpairments? cognitiveImpairments;
  String? clientSpecificConcerns;

  factory Client.fromJson(Map<String, dynamic> json) => Client(
        noOfFalls: json["no_of_falls"] == null ? null : json["no_of_falls"],
        canBearWeight: json["can_bear_weight"] == null
            ? null
            : CanBearWeight.fromJson(json["can_bear_weight"]),
        historyOfFalls:
            json["history_of_falls"] == null ? null : json["history_of_falls"],
        painInMovement: json["pain_in_movement"] == null
            ? null
            : PainInMovement.fromJson(json["pain_in_movement"]),
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        physiqueDifficulty: json["physique_difficulty"] == null
            ? null
            : PhysiqueDifficulty.fromJson(json["physique_difficulty"]),
        challengingBehaviour: json["challenging_behaviour"] == null
            ? null
            : ChallengingBehaviour.fromJson(json["challenging_behaviour"]),
        cognitiveImpairments: json["cognitive_impairments"] == null
            ? null
            : CognitiveImpairments.fromJson(json["cognitive_impairments"]),
        clientSpecificConcerns: json["client_specific_concerns"] == null
            ? null
            : json["client_specific_concerns"],
      );

  Map<String, dynamic> toJson() => {
        "no_of_falls": noOfFalls == null ? null : noOfFalls,
        "can_bear_weight":
            canBearWeight == null ? null : canBearWeight!.toJson(),
        "history_of_falls": historyOfFalls == null ? null : historyOfFalls,
        "pain_in_movement":
            painInMovement == null ? null : painInMovement!.toJson(),
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "physique_difficulty":
            physiqueDifficulty == null ? null : physiqueDifficulty!.toJson(),
        "challenging_behaviour": challengingBehaviour == null
            ? null
            : challengingBehaviour!.toJson(),
        "cognitive_impairments": cognitiveImpairments == null
            ? null
            : cognitiveImpairments!.toJson(),
        "client_specific_concerns":
            clientSpecificConcerns == null ? null : clientSpecificConcerns,
      };
}

class CanBearWeight {
  CanBearWeight({
    this.canBearWeight,
    this.additionalDetails,
  });

  String? canBearWeight;
  String? additionalDetails;

  factory CanBearWeight.fromJson(Map<String, dynamic> json) => CanBearWeight(
        canBearWeight:
            json["can_bear_weight"] == null ? null : json["can_bear_weight"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "can_bear_weight": canBearWeight == null ? null : canBearWeight,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class ChallengingBehaviour {
  ChallengingBehaviour({
    this.additionalDetails,
    this.challengingBehaviour,
  });

  String? additionalDetails;
  String? challengingBehaviour;

  factory ChallengingBehaviour.fromJson(Map<String, dynamic> json) =>
      ChallengingBehaviour(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        challengingBehaviour: json["challenging_behaviour"] == null
            ? null
            : json["challenging_behaviour"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "challenging_behaviour":
            challengingBehaviour == null ? null : challengingBehaviour,
      };
}

class CognitiveImpairments {
  CognitiveImpairments({
    this.additionalDetails,
    this.cognitiveImpairments,
  });

  String? additionalDetails;
  String? cognitiveImpairments;

  factory CognitiveImpairments.fromJson(Map<String, dynamic> json) =>
      CognitiveImpairments(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        cognitiveImpairments: json["cognitive_impairments"] == null
            ? null
            : json["cognitive_impairments"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "cognitive_impairments":
            cognitiveImpairments == null ? null : cognitiveImpairments,
      };
}

class PainInMovement {
  PainInMovement({
    this.painInMovement,
    this.additionalDetails,
  });

  String? painInMovement;
  String? additionalDetails;

  factory PainInMovement.fromJson(Map<String, dynamic> json) => PainInMovement(
        painInMovement:
            json["pain_in_movement"] == null ? null : json["pain_in_movement"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "pain_in_movement": painInMovement == null ? null : painInMovement,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class PhysiqueDifficulty {
  PhysiqueDifficulty({
    this.additionalDetails,
    this.physiqueDifficulty,
  });

  String? additionalDetails;
  String? physiqueDifficulty;

  factory PhysiqueDifficulty.fromJson(Map<String, dynamic> json) =>
      PhysiqueDifficulty(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        physiqueDifficulty: json["physique_difficulty"] == null
            ? null
            : json["physique_difficulty"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "physique_difficulty":
            physiqueDifficulty == null ? null : physiqueDifficulty,
      };
}

class Collecting {
  Collecting({
    this.oftenMedicationCollectedOrDelivered,
  });

  String? oftenMedicationCollectedOrDelivered;

  factory Collecting.fromJson(Map<String, dynamic> json) => Collecting(
        oftenMedicationCollectedOrDelivered:
            json["often_medication_collected_or_delivered"] == null
                ? null
                : json["often_medication_collected_or_delivered"],
      );

  Map<String, dynamic> toJson() => {
        "often_medication_collected_or_delivered":
            oftenMedicationCollectedOrDelivered == null
                ? null
                : oftenMedicationCollectedOrDelivered,
      };
}

class Collection {
  Collection({
    this.assistanceWithMoneyCollection,
    this.assistanceWithPensionCollection,
    this.assistanceWithAllowanceCollection,
  });

  AssistanceWithMoneyCollection? assistanceWithMoneyCollection;
  AssistanceWithPensionCollection? assistanceWithPensionCollection;
  AssistanceWithAllowanceCollection? assistanceWithAllowanceCollection;

  factory Collection.fromJson(Map<String, dynamic> json) => Collection(
        assistanceWithMoneyCollection:
            json["assistance_with_money_collection"] == null
                ? null
                : AssistanceWithMoneyCollection.fromJson(
                    json["assistance_with_money_collection"]),
        assistanceWithPensionCollection:
            json["assistance_with_pension_collection"] == null
                ? null
                : AssistanceWithPensionCollection.fromJson(
                    json["assistance_with_pension_collection"]),
        assistanceWithAllowanceCollection:
            json["assistance_with_allowance_collection"] == null
                ? null
                : AssistanceWithAllowanceCollection.fromJson(
                    json["assistance_with_allowance_collection"]),
      );

  Map<String, dynamic> toJson() => {
        "assistance_with_money_collection":
            assistanceWithMoneyCollection == null
                ? null
                : assistanceWithMoneyCollection!.toJson(),
        "assistance_with_pension_collection":
            assistanceWithPensionCollection == null
                ? null
                : assistanceWithPensionCollection!.toJson(),
        "assistance_with_allowance_collection":
            assistanceWithAllowanceCollection == null
                ? null
                : assistanceWithAllowanceCollection!.toJson(),
      };
}

class AssistanceWithAllowanceCollection {
  AssistanceWithAllowanceCollection({
    this.howOften,
    this.additionalDetails,
    this.whatSupportIsNeeded,
    this.whoSupportAllowanceCollection,
    this.assistanceWithAllowanceCollection,
  });

  String? howOften;
  String? additionalDetails;
  String? whatSupportIsNeeded;
  String? whoSupportAllowanceCollection;
  String? assistanceWithAllowanceCollection;

  factory AssistanceWithAllowanceCollection.fromJson(
          Map<String, dynamic> json) =>
      AssistanceWithAllowanceCollection(
        howOften: json["how_often"] == null ? null : json["how_often"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whatSupportIsNeeded: json["what_support_is_needed"] == null
            ? null
            : json["what_support_is_needed"],
        whoSupportAllowanceCollection:
            json["who_support_allowance_collection"] == null
                ? null
                : json["who_support_allowance_collection"],
        assistanceWithAllowanceCollection:
            json["assistance_with_allowance_collection"] == null
                ? null
                : json["assistance_with_allowance_collection"],
      );

  Map<String, dynamic> toJson() => {
        "how_often": howOften == null ? null : howOften,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "what_support_is_needed":
            whatSupportIsNeeded == null ? null : whatSupportIsNeeded,
        "who_support_allowance_collection":
            whoSupportAllowanceCollection == null
                ? null
                : whoSupportAllowanceCollection,
        "assistance_with_allowance_collection":
            assistanceWithAllowanceCollection == null
                ? null
                : assistanceWithAllowanceCollection,
      };
}

class AssistanceWithMoneyCollection {
  AssistanceWithMoneyCollection({
    this.howOften,
    this.additionalDetails,
    this.whatSupportIsNeeded,
    this.whoSupportMoneyCollection,
    this.assistanceWithMoneyCollection,
  });

  String? howOften;
  String? additionalDetails;
  String? whatSupportIsNeeded;
  String? whoSupportMoneyCollection;
  String? assistanceWithMoneyCollection;

  factory AssistanceWithMoneyCollection.fromJson(Map<String, dynamic> json) =>
      AssistanceWithMoneyCollection(
        howOften: json["how_often"] == null ? null : json["how_often"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whatSupportIsNeeded: json["what_support_is_needed"] == null
            ? null
            : json["what_support_is_needed"],
        whoSupportMoneyCollection: json["who_support_money_collection"] == null
            ? null
            : json["who_support_money_collection"],
        assistanceWithMoneyCollection:
            json["assistance_with_money_collection"] == null
                ? null
                : json["assistance_with_money_collection"],
      );

  Map<String, dynamic> toJson() => {
        "how_often": howOften == null ? null : howOften,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "what_support_is_needed":
            whatSupportIsNeeded == null ? null : whatSupportIsNeeded,
        "who_support_money_collection": whoSupportMoneyCollection == null
            ? null
            : whoSupportMoneyCollection,
        "assistance_with_money_collection":
            assistanceWithMoneyCollection == null
                ? null
                : assistanceWithMoneyCollection,
      };
}

class AssistanceWithPensionCollection {
  AssistanceWithPensionCollection({
    this.howOften,
    this.additionalDetails,
    this.whatSupportIsNeeded,
    this.whoSupportPensionCollection,
    this.assistanceWithPensionCollection,
  });

  String? howOften;
  String? additionalDetails;
  String? whatSupportIsNeeded;
  String? whoSupportPensionCollection;
  String? assistanceWithPensionCollection;

  factory AssistanceWithPensionCollection.fromJson(Map<String, dynamic> json) =>
      AssistanceWithPensionCollection(
        howOften: json["how_often"] == null ? null : json["how_often"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whatSupportIsNeeded: json["what_support_is_needed"] == null
            ? null
            : json["what_support_is_needed"],
        whoSupportPensionCollection:
            json["who_support_pension_collection"] == null
                ? null
                : json["who_support_pension_collection"],
        assistanceWithPensionCollection:
            json["assistance_with_pension_collection"] == null
                ? null
                : json["assistance_with_pension_collection"],
      );

  Map<String, dynamic> toJson() => {
        "how_often": howOften == null ? null : howOften,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "what_support_is_needed":
            whatSupportIsNeeded == null ? null : whatSupportIsNeeded,
        "who_support_pension_collection": whoSupportPensionCollection == null
            ? null
            : whoSupportPensionCollection,
        "assistance_with_pension_collection":
            assistanceWithPensionCollection == null
                ? null
                : assistanceWithPensionCollection,
      };
}

class Comprehension {
  Comprehension({
    this.additionalDetails,
    this.qualityOfComprehension,
  });

  String? additionalDetails;
  String? qualityOfComprehension;

  factory Comprehension.fromJson(Map<String, dynamic> json) => Comprehension(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        qualityOfComprehension: json["quality_of_comprehension"] == null
            ? null
            : json["quality_of_comprehension"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "quality_of_comprehension":
            qualityOfComprehension == null ? null : qualityOfComprehension,
      };
}

class Conclusion {
  Conclusion({
    this.mentalCapacityAct,
  });

  String? mentalCapacityAct;

  factory Conclusion.fromJson(Map<String, dynamic> json) => Conclusion(
        mentalCapacityAct: json["mental_capacity_act"] == null
            ? null
            : json["mental_capacity_act"],
      );

  Map<String, dynamic> toJson() => {
        "mental_capacity_act":
            mentalCapacityAct == null ? null : mentalCapacityAct,
      };
}

class Continence {
  Continence({
    this.addScore,
    this.continence,
  });

  String? addScore;
  String? continence;

  factory Continence.fromJson(Map<String, dynamic> json) => Continence(
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        continence: json["'continence'"] == null ? null : json["'continence'"],
      );

  Map<String, dynamic> toJson() => {
        "'add_score'": addScore == null ? null : addScore,
        "'continence'": continence == null ? null : continence,
      };
}

class CurrentMedication {
  CurrentMedication({
    this.medication,
    this.amyPrnMedication,
    this.medicationAtSetTime,
    this.helpWithOverTheCounterMedication,
    this.authorisedOverTheCounterMedication,
  });

  CurrentMedicationMedication? medication;
  AmyPrnMedication? amyPrnMedication;
  MedicationAtSetTime? medicationAtSetTime;
  HelpWithOverTheCounterMedication? helpWithOverTheCounterMedication;
  AuthorisedOverTheCounterMedication? authorisedOverTheCounterMedication;

  factory CurrentMedication.fromJson(Map<String, dynamic> json) =>
      CurrentMedication(
        medication: json["medication"] == null
            ? null
            : CurrentMedicationMedication.fromJson(json["medication"]),
        amyPrnMedication: json["amy_PRN_medication"] == null
            ? null
            : AmyPrnMedication.fromJson(json["amy_PRN_medication"]),
        medicationAtSetTime: json["medication_at_set_time"] == null
            ? null
            : MedicationAtSetTime.fromJson(json["medication_at_set_time"]),
        helpWithOverTheCounterMedication:
            json["help_with_over_the_counter_medication"] == null
                ? null
                : HelpWithOverTheCounterMedication.fromJson(
                    json["help_with_over_the_counter_medication"]),
        authorisedOverTheCounterMedication:
            json["authorised_over_the_counter_medication"] == null
                ? null
                : AuthorisedOverTheCounterMedication.fromJson(
                    json["authorised_over_the_counter_medication"]),
      );

  Map<String, dynamic> toJson() => {
        "medication": medication == null ? null : medication!.toJson(),
        "amy_PRN_medication":
            amyPrnMedication == null ? null : amyPrnMedication!.toJson(),
        "medication_at_set_time":
            medicationAtSetTime == null ? null : medicationAtSetTime!.toJson(),
        "help_with_over_the_counter_medication":
            helpWithOverTheCounterMedication == null
                ? null
                : helpWithOverTheCounterMedication!.toJson(),
        "authorised_over_the_counter_medication":
            authorisedOverTheCounterMedication == null
                ? null
                : authorisedOverTheCounterMedication!.toJson(),
      };
}

class AmyPrnMedication {
  AmyPrnMedication({
    this.additionalDetails,
    this.amyPrnMedication,
  });

  String? additionalDetails;
  String? amyPrnMedication;

  factory AmyPrnMedication.fromJson(Map<String, dynamic> json) =>
      AmyPrnMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        amyPrnMedication: json["amy_PRN_medication"] == null
            ? null
            : json["amy_PRN_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "amy_PRN_medication":
            amyPrnMedication == null ? null : amyPrnMedication,
      };
}

class AuthorisedOverTheCounterMedication {
  AuthorisedOverTheCounterMedication({
    this.additionalDetails,
    this.authorisedOverTheCounterMedication,
  });

  String? additionalDetails;
  String? authorisedOverTheCounterMedication;

  factory AuthorisedOverTheCounterMedication.fromJson(
          Map<String, dynamic> json) =>
      AuthorisedOverTheCounterMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        authorisedOverTheCounterMedication:
            json["authorised_over_the_counter_medication"] == null
                ? null
                : json["authorised_over_the_counter_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "authorised_over_the_counter_medication":
            authorisedOverTheCounterMedication == null
                ? null
                : authorisedOverTheCounterMedication,
      };
}

class HelpWithOverTheCounterMedication {
  HelpWithOverTheCounterMedication({
    this.additionalDetails,
    this.helpWithOverTheCounterMedication,
  });

  String? additionalDetails;
  String? helpWithOverTheCounterMedication;

  factory HelpWithOverTheCounterMedication.fromJson(
          Map<String, dynamic> json) =>
      HelpWithOverTheCounterMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        helpWithOverTheCounterMedication:
            json["help_with_over_the_counter_medication"] == null
                ? null
                : json["help_with_over_the_counter_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "help_with_over_the_counter_medication":
            helpWithOverTheCounterMedication == null
                ? null
                : helpWithOverTheCounterMedication,
      };
}

class CurrentMedicationMedication {
  CurrentMedicationMedication({
    this.medication,
    this.additionalDetails,
  });

  String? medication;
  String? additionalDetails;

  factory CurrentMedicationMedication.fromJson(Map<String, dynamic> json) =>
      CurrentMedicationMedication(
        medication: json["medication"] == null ? null : json["medication"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "medication": medication == null ? null : medication,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class MedicationAtSetTime {
  MedicationAtSetTime({
    this.additionalDetails,
    this.medicationAtSetTime,
  });

  String? additionalDetails;
  String? medicationAtSetTime;

  factory MedicationAtSetTime.fromJson(Map<String, dynamic> json) =>
      MedicationAtSetTime(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        medicationAtSetTime: json["medication_at_set_time"] == null
            ? null
            : json["medication_at_set_time"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "medication_at_set_time":
            medicationAtSetTime == null ? null : medicationAtSetTime,
      };
}

class Disposing {
  Disposing({
    this.whoDisposesExcessMedication,
  });

  WhoDisposesExcessMedication? whoDisposesExcessMedication;

  factory Disposing.fromJson(Map<String, dynamic> json) => Disposing(
        whoDisposesExcessMedication:
            json["who_disposes_excess_medication"] == null
                ? null
                : WhoDisposesExcessMedication.fromJson(
                    json["who_disposes_excess_medication"]),
      );

  Map<String, dynamic> toJson() => {
        "who_disposes_excess_medication": whoDisposesExcessMedication == null
            ? null
            : whoDisposesExcessMedication!.toJson(),
      };
}

class WhoDisposesExcessMedication {
  WhoDisposesExcessMedication({
    this.additionalDetails,
    this.howIsMedicationDisposed,
    this.whoDisposesExcessMedication,
  });

  String? additionalDetails;
  String? howIsMedicationDisposed;
  String? whoDisposesExcessMedication;

  factory WhoDisposesExcessMedication.fromJson(Map<String, dynamic> json) =>
      WhoDisposesExcessMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        howIsMedicationDisposed: json["how_is_medication_disposed"] == null
            ? null
            : json["how_is_medication_disposed"],
        whoDisposesExcessMedication:
            json["who_disposes_excess_medication"] == null
                ? null
                : json["who_disposes_excess_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "how_is_medication_disposed":
            howIsMedicationDisposed == null ? null : howIsMedicationDisposed,
        "who_disposes_excess_medication": whoDisposesExcessMedication == null
            ? null
            : whoDisposesExcessMedication,
      };
}

class Equipment {
  Equipment({
    this.hoist,
    this.sling,
    this.commode,
    this.stairLift,
    this.wheelchair,
    this.walkingStick,
    this.fallsDetector,
    this.perchingStool,
    this.railsAndBumper,
    this.riserReclinerChair,
    this.electricProfilingBed,
    this.transferOrBananaBoard,
  });

  Hoist? hoist;
  Sling? sling;
  Commode? commode;
  StairLift? stairLift;
  Wheelchair? wheelchair;
  WalkingStick? walkingStick;
  FallsDetector? fallsDetector;
  PerchingStool? perchingStool;
  RailsAndBumper? railsAndBumper;
  RiserReclinerChair? riserReclinerChair;
  ElectricProfilingBed? electricProfilingBed;
  TransferOrBananaBoard? transferOrBananaBoard;

  factory Equipment.fromJson(Map<String, dynamic> json) => Equipment(
        hoist: json["hoist"] == null ? null : Hoist.fromJson(json["hoist"]),
        sling: json["sling"] == null ? null : Sling.fromJson(json["sling"]),
        commode:
            json["commode"] == null ? null : Commode.fromJson(json["commode"]),
        stairLift: json["stair_lift"] == null
            ? null
            : StairLift.fromJson(json["stair_lift"]),
        wheelchair: json["wheelchair"] == null
            ? null
            : Wheelchair.fromJson(json["wheelchair"]),
        walkingStick: json["walking_stick"] == null
            ? null
            : WalkingStick.fromJson(json["walking_stick"]),
        fallsDetector: json["falls_detector"] == null
            ? null
            : FallsDetector.fromJson(json["falls_detector"]),
        perchingStool: json["perching_stool"] == null
            ? null
            : PerchingStool.fromJson(json["perching_stool"]),
        railsAndBumper: json["rails_and_bumper"] == null
            ? null
            : RailsAndBumper.fromJson(json["rails_and_bumper"]),
        riserReclinerChair: json["riser_recliner_chair"] == null
            ? null
            : RiserReclinerChair.fromJson(json["riser_recliner_chair"]),
        electricProfilingBed: json["electric_profiling_bed"] == null
            ? null
            : ElectricProfilingBed.fromJson(json["electric_profiling_bed"]),
        transferOrBananaBoard: json["transfer_or_banana_board"] == null
            ? null
            : TransferOrBananaBoard.fromJson(json["transfer_or_banana_board"]),
      );

  Map<String, dynamic> toJson() => {
        "hoist": hoist == null ? null : hoist!.toJson(),
        "sling": sling == null ? null : sling!.toJson(),
        "stair_lift": stairLift == null ? null : stairLift!.toJson(),
        "wheelchair": wheelchair == null ? null : wheelchair!.toJson(),
        "walking_stick": walkingStick == null ? null : walkingStick!.toJson(),
        "falls_detector":
            fallsDetector == null ? null : fallsDetector!.toJson(),
        "perching_stool":
            perchingStool == null ? null : perchingStool!.toJson(),
        "rails_and_bumper":
            railsAndBumper == null ? null : railsAndBumper!.toJson(),
        "riser_recliner_chair":
            riserReclinerChair == null ? null : riserReclinerChair!.toJson(),
        "electric_profiling_bed": electricProfilingBed == null
            ? null
            : electricProfilingBed!.toJson(),
        "transfer_or_banana_board": transferOrBananaBoard == null
            ? null
            : transferOrBananaBoard!.toJson(),
      };
}

class Commode {
  Commode({
    this.commode,
    this.additionalDetails,
  });

  String? commode;
  String? additionalDetails;

  factory Commode.fromJson(Map<String, dynamic> json) => Commode(
        commode: json["commode"] == null ? null : json["commode"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "commode": commode == null ? null : commode,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class ElectricProfilingBed {
  ElectricProfilingBed({
    this.additionalDetails,
    this.electricProfilingBed,
  });

  String? additionalDetails;
  String? electricProfilingBed;

  factory ElectricProfilingBed.fromJson(Map<String, dynamic> json) =>
      ElectricProfilingBed(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        electricProfilingBed: json["electric_profiling_bed"] == null
            ? null
            : json["electric_profiling_bed"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "electric_profiling_bed":
            electricProfilingBed == null ? null : electricProfilingBed,
      };
}

class FallsDetector {
  FallsDetector({
    this.fallsDetector,
    this.additionalDetails,
  });

  String? fallsDetector;
  String? additionalDetails;

  factory FallsDetector.fromJson(Map<String, dynamic> json) => FallsDetector(
        fallsDetector:
            json["falls_detector"] == null ? null : json["falls_detector"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "falls_detector": fallsDetector == null ? null : fallsDetector,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Hoist {
  Hoist({
    this.hoist,
    this.lastServiceDate,
    this.additionalDetails,
  });

  String? hoist;
  DateTime? lastServiceDate;
  String? additionalDetails;

  factory Hoist.fromJson(Map<String, dynamic> json) => Hoist(
        hoist: json["hoist"] == null ? null : json["hoist"],
        lastServiceDate: json["last_service_date"] == null
            ? null
            : DateTime.parse(json["last_service_date"]),
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "hoist": hoist == null ? null : hoist,
        "last_service_date": lastServiceDate == null
            ? null
            : "${lastServiceDate!.year.toString().padLeft(4, '0')}-${lastServiceDate!.month.toString().padLeft(2, '0')}-${lastServiceDate!.day.toString().padLeft(2, '0')}",
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class PerchingStool {
  PerchingStool({
    this.perchingStool,
    this.additionalDetails,
  });

  String? perchingStool;
  String? additionalDetails;

  factory PerchingStool.fromJson(Map<String, dynamic> json) => PerchingStool(
        perchingStool:
            json["perching_stool"] == null ? null : json["perching_stool"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "perching_stool": perchingStool == null ? null : perchingStool,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RailsAndBumper {
  RailsAndBumper({
    this.railsAndBumper,
    this.additionalDetails,
  });

  String? railsAndBumper;
  String? additionalDetails;

  factory RailsAndBumper.fromJson(Map<String, dynamic> json) => RailsAndBumper(
        railsAndBumper:
            json["rails_and_bumper"] == null ? null : json["rails_and_bumper"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "rails_and_bumper": railsAndBumper == null ? null : railsAndBumper,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiserReclinerChair {
  RiserReclinerChair({
    this.additionalDetails,
    this.riserReclinerChair,
  });

  String? additionalDetails;
  String? riserReclinerChair;

  factory RiserReclinerChair.fromJson(Map<String, dynamic> json) =>
      RiserReclinerChair(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riserReclinerChair: json["riser_recliner_chair"] == null
            ? null
            : json["riser_recliner_chair"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "riser_recliner_chair":
            riserReclinerChair == null ? null : riserReclinerChair,
      };
}

class Rollator {
  Rollator({
    this.rollator,
    this.additionalDetails,
  });

  String? rollator;
  String? additionalDetails;

  factory Rollator.fromJson(Map<String, dynamic> json) => Rollator(
        rollator: json["rollator"] == null ? null : json["rollator"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "rollator": rollator == null ? null : rollator,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Sling {
  Sling({
    this.sling,
    this.additionalDetails,
  });

  String? sling;
  String? additionalDetails;

  factory Sling.fromJson(Map<String, dynamic> json) => Sling(
        sling: json["sling"] == null ? null : json["sling"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "sling": sling == null ? null : sling,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class StairLift {
  StairLift({
    this.stairLift,
    this.lastServiceDate,
    this.additionalDetails,
  });

  String? stairLift;
  DateTime? lastServiceDate;
  String? additionalDetails;

  factory StairLift.fromJson(Map<String, dynamic> json) => StairLift(
        stairLift: json["stair_lift"] == null ? null : json["stair_lift"],
        lastServiceDate: json["last_service_date"] == null
            ? null
            : DateTime.parse(json["last_service_date"]),
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "stair_lift": stairLift == null ? null : stairLift,
        "last_service_date": lastServiceDate == null
            ? null
            : "${lastServiceDate!.year.toString().padLeft(4, '0')}-${lastServiceDate!.month.toString().padLeft(2, '0')}-${lastServiceDate!.day.toString().padLeft(2, '0')}",
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class TransferOrBananaBoard {
  TransferOrBananaBoard({
    this.additionalDetails,
    this.transferOrBananaBoard,
  });

  String? additionalDetails;
  String? transferOrBananaBoard;

  factory TransferOrBananaBoard.fromJson(Map<String, dynamic> json) =>
      TransferOrBananaBoard(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        transferOrBananaBoard: json["transfer_or_banana_board"] == null
            ? null
            : json["transfer_or_banana_board"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "transfer_or_banana_board":
            transferOrBananaBoard == null ? null : transferOrBananaBoard,
      };
}

class WalkingStick {
  WalkingStick({
    this.walkingStick,
    this.additionalDetails,
  });

  String? walkingStick;
  String? additionalDetails;

  factory WalkingStick.fromJson(Map<String, dynamic> json) => WalkingStick(
        walkingStick:
            json["walking_stick"] == null ? null : json["walking_stick"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "walking_stick": walkingStick == null ? null : walkingStick,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Wheelchair {
  Wheelchair({
    this.wheelchair,
    this.additionalDetails,
  });

  String? wheelchair;
  String? additionalDetails;

  factory Wheelchair.fromJson(Map<String, dynamic> json) => Wheelchair(
        wheelchair: json["wheelchair"] == null ? null : json["wheelchair"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "wheelchair": wheelchair == null ? null : wheelchair,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Expression {
  Expression({
    this.additionalDetails,
    this.qualityOfSpokenLanguage,
  });

  String? additionalDetails;
  String? qualityOfSpokenLanguage;

  factory Expression.fromJson(Map<String, dynamic> json) => Expression(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        qualityOfSpokenLanguage: json["quality_of_spoken_language"] == null
            ? null
            : json["quality_of_spoken_language"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "quality_of_spoken_language":
            qualityOfSpokenLanguage == null ? null : qualityOfSpokenLanguage,
      };
}

class Feeding {
  Feeding({
    this.canCook,
    this.feedThemselves,
    this.prepareLightMeal,
  });

  CanCook? canCook;
  FeedThemselves? feedThemselves;
  PrepareLightMeal? prepareLightMeal;

  factory Feeding.fromJson(Map<String, dynamic> json) => Feeding(
        canCook: json["can_cook"] == null
            ? null
            : CanCook.fromJson(json["can_cook"]),
        feedThemselves: json["feed_themselves"] == null
            ? null
            : FeedThemselves.fromJson(json["feed_themselves"]),
        prepareLightMeal: json["prepare_light_meal"] == null
            ? null
            : PrepareLightMeal.fromJson(json["prepare_light_meal"]),
      );

  Map<String, dynamic> toJson() => {
        "can_cook": canCook == null ? null : canCook!.toJson(),
        "feed_themselves":
            feedThemselves == null ? null : feedThemselves!.toJson(),
        "prepare_light_meal":
            prepareLightMeal == null ? null : prepareLightMeal!.toJson(),
      };
}

class CanCook {
  CanCook({
    this.canCook,
    this.additionDetails,
  });

  String? canCook;
  String? additionDetails;

  factory CanCook.fromJson(Map<String, dynamic> json) => CanCook(
        canCook: json["can_cook"] == null ? null : json["can_cook"],
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
      );

  Map<String, dynamic> toJson() => {
        "can_cook": canCook == null ? null : canCook,
        "addition_details": additionDetails == null ? null : additionDetails,
      };
}

class FeedThemselves {
  FeedThemselves({
    this.feedThemselves,
    this.additionDetails,
  });

  String? feedThemselves;
  String? additionDetails;

  factory FeedThemselves.fromJson(Map<String, dynamic> json) => FeedThemselves(
        feedThemselves:
            json["feed_themselves"] == null ? null : json["feed_themselves"],
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
      );

  Map<String, dynamic> toJson() => {
        "feed_themselves": feedThemselves == null ? null : feedThemselves,
        "addition_details": additionDetails == null ? null : additionDetails,
      };
}

class PrepareLightMeal {
  PrepareLightMeal({
    this.additionDetails,
    this.prepareLightMeal,
  });

  String? additionDetails;
  String? prepareLightMeal;

  factory PrepareLightMeal.fromJson(Map<String, dynamic> json) =>
      PrepareLightMeal(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        prepareLightMeal: json["prepare_light_meal"] == null
            ? null
            : json["prepare_light_meal"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "prepare_light_meal":
            prepareLightMeal == null ? null : prepareLightMeal,
      };
}

class Finances {
  Finances({
    this.canHandleFinances,
  });

  CanHandleFinances? canHandleFinances;

  factory Finances.fromJson(Map<String, dynamic> json) => Finances(
        canHandleFinances: json["can_handle_finances"] == null
            ? null
            : CanHandleFinances.fromJson(json["can_handle_finances"]),
      );

  Map<String, dynamic> toJson() => {
        "can_handle_finances":
            canHandleFinances == null ? null : canHandleFinances!.toJson(),
      };
}

class CanHandleFinances {
  CanHandleFinances({
    this.additionDetails,
    this.canHandleFinances,
  });

  String? additionDetails;
  String? canHandleFinances;

  factory CanHandleFinances.fromJson(Map<String, dynamic> json) =>
      CanHandleFinances(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        canHandleFinances: json["can_handle_finances"] == null
            ? null
            : json["can_handle_finances"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "can_handle_finances":
            canHandleFinances == null ? null : canHandleFinances,
      };
}

class AssessmentFirePrevention {
  AssessmentFirePrevention({
    this.escapePlan,
    this.escapeRoutes,
    this.firePrevention,
    this.somkeDetectors,
    this.riskWithSomkers,
    this.fireFightingEquipments,
  });

  EscapePlan? escapePlan;
  EscapeRoutes? escapeRoutes;
  FirePreventionFirePrevention? firePrevention;
  SomkeDetectors? somkeDetectors;
  RiskWithSomkers? riskWithSomkers;
  FireFightingEquipments? fireFightingEquipments;

  factory AssessmentFirePrevention.fromJson(Map<String, dynamic> json) =>
      AssessmentFirePrevention(
        escapePlan: json["escape_plan"] == null
            ? null
            : EscapePlan.fromJson(json["escape_plan"]),
        escapeRoutes: json["escape_routes"] == null
            ? null
            : EscapeRoutes.fromJson(json["escape_routes"]),
        firePrevention: json["fire_prevention"] == null
            ? null
            : FirePreventionFirePrevention.fromJson(json["fire_prevention"]),
        somkeDetectors: json["somke_detectors"] == null
            ? null
            : SomkeDetectors.fromJson(json["somke_detectors"]),
        riskWithSomkers: json["risk_with_somkers"] == null
            ? null
            : RiskWithSomkers.fromJson(json["risk_with_somkers"]),
        fireFightingEquipments: json["fire_fighting_equipments"] == null
            ? null
            : FireFightingEquipments.fromJson(json["fire_fighting_equipments"]),
      );

  Map<String, dynamic> toJson() => {
        "escape_plan": escapePlan == null ? null : escapePlan!.toJson(),
        "escape_routes": escapeRoutes == null ? null : escapeRoutes!.toJson(),
        "fire_prevention":
            firePrevention == null ? null : firePrevention!.toJson(),
        "somke_detectors":
            somkeDetectors == null ? null : somkeDetectors!.toJson(),
        "risk_with_somkers":
            riskWithSomkers == null ? null : riskWithSomkers!.toJson(),
        "fire_fighting_equipments": fireFightingEquipments == null
            ? null
            : fireFightingEquipments!.toJson(),
      };
}

class EscapePlan {
  EscapePlan({
    this.riskMitigated,
    this.additionalDetails,
    this.whatIsEscapePlan,
    this.riskWithEscapePlan,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? whatIsEscapePlan;
  String? riskWithEscapePlan;

  factory EscapePlan.fromJson(Map<String, dynamic> json) => EscapePlan(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whatIsEscapePlan: json["what_is_escape_plan"] == null
            ? null
            : json["what_is_escape_plan"],
        riskWithEscapePlan: json["risk_with_escape_plan"] == null
            ? null
            : json["risk_with_escape_plan"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "what_is_escape_plan":
            whatIsEscapePlan == null ? null : whatIsEscapePlan,
        "risk_with_escape_plan":
            riskWithEscapePlan == null ? null : riskWithEscapePlan,
      };
}

class EscapeRoutes {
  EscapeRoutes({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithEscapeRoutes,
    this.locationOfEscapeRoutes,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithEscapeRoutes;
  String? locationOfEscapeRoutes;

  factory EscapeRoutes.fromJson(Map<String, dynamic> json) => EscapeRoutes(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithEscapeRoutes: json["risk_with_escape_routes"] == null
            ? null
            : json["risk_with_escape_routes"],
        locationOfEscapeRoutes: json["location_of_escape_routes"] == null
            ? null
            : json["location_of_escape_routes"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_escape_routes":
            riskWithEscapeRoutes == null ? null : riskWithEscapeRoutes,
        "location_of_escape_routes":
            locationOfEscapeRoutes == null ? null : locationOfEscapeRoutes,
      };
}

class FireFightingEquipments {
  FireFightingEquipments({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithFireFightingEquipments,
    this.locationOfFireFightingEquipments,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? riskWithFireFightingEquipments;
  String? locationOfFireFightingEquipments;

  factory FireFightingEquipments.fromJson(Map<String, dynamic> json) =>
      FireFightingEquipments(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithFireFightingEquipments:
            json["risk_with_fire_fighting_equipments"] == null
                ? null
                : json["risk_with_fire_fighting_equipments"],
        locationOfFireFightingEquipments:
            json["location_of_fire_fighting_equipments"] == null
                ? null
                : json["location_of_fire_fighting_equipments"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_fire_fighting_equipments":
            riskWithFireFightingEquipments == null
                ? null
                : riskWithFireFightingEquipments,
        "location_of_fire_fighting_equipments":
            locationOfFireFightingEquipments == null
                ? null
                : locationOfFireFightingEquipments,
      };
}

class FirePreventionFirePrevention {
  FirePreventionFirePrevention({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithFirePrevention,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithFirePrevention;

  factory FirePreventionFirePrevention.fromJson(Map<String, dynamic> json) =>
      FirePreventionFirePrevention(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithFirePrevention: json["risk_with_fire_prevention"] == null
            ? null
            : json["risk_with_fire_prevention"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_fire_prevention":
            riskWithFirePrevention == null ? null : riskWithFirePrevention,
      };
}

class RiskWithSomkers {
  RiskWithSomkers({
    this.riskMitigated,
    this.riskWithSomkers,
    this.additionalDetails,
  });

  String? riskMitigated;
  String? riskWithSomkers;
  String? additionalDetails;

  factory RiskWithSomkers.fromJson(Map<String, dynamic> json) =>
      RiskWithSomkers(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        riskWithSomkers: json["risk_with_somkers"] == null
            ? null
            : json["risk_with_somkers"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risk_with_somkers": riskWithSomkers == null ? null : riskWithSomkers,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class SomkeDetectors {
  SomkeDetectors({
    this.additionalDetails,
    this.riskWithSomkeDetectors,
    this.locationOfSomkeDetectors,
  });

  String? additionalDetails;
  String? riskWithSomkeDetectors;
  String? locationOfSomkeDetectors;

  factory SomkeDetectors.fromJson(Map<String, dynamic> json) => SomkeDetectors(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithSomkeDetectors: json["risk_with_somke_detectors"] == null
            ? null
            : json["risk_with_somke_detectors"],
        locationOfSomkeDetectors: json["location_of_somke_detectors"] == null
            ? null
            : json["location_of_somke_detectors"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_somke_detectors":
            riskWithSomkeDetectors == null ? null : riskWithSomkeDetectors,
        "location_of_somke_detectors":
            locationOfSomkeDetectors == null ? null : locationOfSomkeDetectors,
      };
}

class FormalCare {
  FormalCare({
    this.additionalDetails,
    this.receiveAnyFormalCare,
  });

  String? additionalDetails;
  String? receiveAnyFormalCare;

  factory FormalCare.fromJson(Map<String, dynamic> json) => FormalCare(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        receiveAnyFormalCare: json["receive_any_formal_care"] == null
            ? null
            : json["receive_any_formal_care"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "receive_any_formal_care":
            receiveAnyFormalCare == null ? null : receiveAnyFormalCare,
      };
}

class Functional {
  Functional({
    this.instillEarDrops,
    this.instillEyeDrops,
    this.instillNasalSprays,
    this.tamperWithMedication,
    this.applyAndRemovePatches,
    this.pourAndMeasureLiquids,
    this.orderTheirPrescriptions,
    this.applyCreamsAndOintments,
    this.canOpenBottlesAndPacket,
    this.medicationRequiringSharps,
  });

  InstillEarDrops? instillEarDrops;
  InstillEyeDrops? instillEyeDrops;
  InstillNasalSprays? instillNasalSprays;
  TamperWithMedication? tamperWithMedication;
  ApplyAndRemovePatches? applyAndRemovePatches;
  PourAndMeasureLiquids? pourAndMeasureLiquids;
  PourAndMeasureLiquidsClass? orderTheirPrescriptions;
  ApplyCreamsAndOintments? applyCreamsAndOintments;
  CanOpenBottlesAndPacket? canOpenBottlesAndPacket;
  MedicationRequiringSharps? medicationRequiringSharps;

  factory Functional.fromJson(Map<String, dynamic> json) => Functional(
        instillEarDrops: json["instill_ear_drops"] == null
            ? null
            : InstillEarDrops.fromJson(json["instill_ear_drops"]),
        instillEyeDrops: json["instill_eye_drops"] == null
            ? null
            : InstillEyeDrops.fromJson(json["instill_eye_drops"]),
        instillNasalSprays: json["instill_nasal_sprays"] == null
            ? null
            : InstillNasalSprays.fromJson(json["instill_nasal_sprays"]),
        tamperWithMedication: json["tamper_with_medication"] == null
            ? null
            : TamperWithMedication.fromJson(json["tamper_with_medication"]),
        applyAndRemovePatches: json["apply_and_remove_patches"] == null
            ? null
            : ApplyAndRemovePatches.fromJson(json["apply_and_remove_patches"]),
        pourAndMeasureLiquids: json["pour_and_measure_liquids"] == null
            ? null
            : PourAndMeasureLiquids.fromJson(json["pour_and_measure_liquids"]),
        orderTheirPrescriptions: json["order_their_prescriptions"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["order_their_prescriptions"]),
        applyCreamsAndOintments: json["apply_creams_and_ointments"] == null
            ? null
            : ApplyCreamsAndOintments.fromJson(
                json["apply_creams_and_ointments"]),
        canOpenBottlesAndPacket: json["can_open_bottles_and_packet"] == null
            ? null
            : CanOpenBottlesAndPacket.fromJson(
                json["can_open_bottles_and_packet"]),
        medicationRequiringSharps: json["medication_requiring_sharps"] == null
            ? null
            : MedicationRequiringSharps.fromJson(
                json["medication_requiring_sharps"]),
      );

  Map<String, dynamic> toJson() => {
        "instill_ear_drops":
            instillEarDrops == null ? null : instillEarDrops!.toJson(),
        "instill_eye_drops":
            instillEyeDrops == null ? null : instillEyeDrops!.toJson(),
        "instill_nasal_sprays":
            instillNasalSprays == null ? null : instillNasalSprays!.toJson(),
        "tamper_with_medication": tamperWithMedication == null
            ? null
            : tamperWithMedication!.toJson(),
        "apply_and_remove_patches": applyAndRemovePatches == null
            ? null
            : applyAndRemovePatches!.toJson(),
        "pour_and_measure_liquids": pourAndMeasureLiquids == null
            ? null
            : pourAndMeasureLiquids!.toJson(),
        "order_their_prescriptions": orderTheirPrescriptions == null
            ? null
            : orderTheirPrescriptions!.toJson(),
        "apply_creams_and_ointments": applyCreamsAndOintments == null
            ? null
            : applyCreamsAndOintments!.toJson(),
        "can_open_bottles_and_packet": canOpenBottlesAndPacket == null
            ? null
            : canOpenBottlesAndPacket!.toJson(),
        "medication_requiring_sharps": medicationRequiringSharps == null
            ? null
            : medicationRequiringSharps!.toJson(),
      };
}

class ApplyAndRemovePatches {
  ApplyAndRemovePatches({
    this.additionalDetails,
    this.applyAndRemovePatches,
  });

  String? additionalDetails;
  String? applyAndRemovePatches;

  factory ApplyAndRemovePatches.fromJson(Map<String, dynamic> json) =>
      ApplyAndRemovePatches(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        applyAndRemovePatches: json["apply_and_remove_patches"] == null
            ? null
            : json["apply_and_remove_patches"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "apply_and_remove_patches":
            applyAndRemovePatches == null ? null : applyAndRemovePatches,
      };
}

class ApplyCreamsAndOintments {
  ApplyCreamsAndOintments({
    this.additionalDetails,
    this.applyCreamsAndOintments,
  });

  String? additionalDetails;
  String? applyCreamsAndOintments;

  factory ApplyCreamsAndOintments.fromJson(Map<String, dynamic> json) =>
      ApplyCreamsAndOintments(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        applyCreamsAndOintments: json["apply_creams_and_ointments"] == null
            ? null
            : json["apply_creams_and_ointments"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "apply_creams_and_ointments":
            applyCreamsAndOintments == null ? null : applyCreamsAndOintments,
      };
}

class CanOpenBottlesAndPacket {
  CanOpenBottlesAndPacket({
    this.additionalDetails,
    this.canOpenBottlesAndPacket,
  });

  String? additionalDetails;
  String? canOpenBottlesAndPacket;

  factory CanOpenBottlesAndPacket.fromJson(Map<String, dynamic> json) =>
      CanOpenBottlesAndPacket(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        canOpenBottlesAndPacket: json["can_open_bottles_and_packet"] == null
            ? null
            : json["can_open_bottles_and_packet"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "can_open_bottles_and_packet":
            canOpenBottlesAndPacket == null ? null : canOpenBottlesAndPacket,
      };
}

class InstillEarDrops {
  InstillEarDrops({
    this.instillEarDrops,
    this.additionalDetails,
  });

  String? instillEarDrops;
  String? additionalDetails;

  factory InstillEarDrops.fromJson(Map<String, dynamic> json) =>
      InstillEarDrops(
        instillEarDrops: json["instill_ear_drops"] == null
            ? null
            : json["instill_ear_drops"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "instill_ear_drops": instillEarDrops == null ? null : instillEarDrops,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class InstillEyeDrops {
  InstillEyeDrops({
    this.instillEyeDrops,
    this.additionalDetails,
  });

  String? instillEyeDrops;
  String? additionalDetails;

  factory InstillEyeDrops.fromJson(Map<String, dynamic> json) =>
      InstillEyeDrops(
        instillEyeDrops: json["instill_eye_drops"] == null
            ? null
            : json["instill_eye_drops"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "instill_eye_drops": instillEyeDrops == null ? null : instillEyeDrops,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class InstillNasalSprays {
  InstillNasalSprays({
    this.additionalDetails,
    this.instillNasalSprays,
  });

  String? additionalDetails;
  String? instillNasalSprays;

  factory InstillNasalSprays.fromJson(Map<String, dynamic> json) =>
      InstillNasalSprays(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        instillNasalSprays: json["instill_nasal_sprays"] == null
            ? null
            : json["instill_nasal_sprays"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "instill_nasal_sprays":
            instillNasalSprays == null ? null : instillNasalSprays,
      };
}

class MedicationRequiringSharps {
  MedicationRequiringSharps({
    this.additionalDetails,
    this.medicationRequiringSharps,
  });

  String? additionalDetails;
  String? medicationRequiringSharps;

  factory MedicationRequiringSharps.fromJson(Map<String, dynamic> json) =>
      MedicationRequiringSharps(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        medicationRequiringSharps: json["medication_requiring_sharps"] == null
            ? null
            : json["medication_requiring_sharps"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "medication_requiring_sharps": medicationRequiringSharps == null
            ? null
            : medicationRequiringSharps,
      };
}

class PourAndMeasureLiquidsClass {
  PourAndMeasureLiquidsClass({
    this.additionalDetails,
  });

  String? additionalDetails;

  factory PourAndMeasureLiquidsClass.fromJson(Map<String, dynamic> json) =>
      PourAndMeasureLiquidsClass(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class PourAndMeasureLiquids {
  PourAndMeasureLiquids({
    this.pourAndMeasureLiquids,
  });

  String? pourAndMeasureLiquids;

  factory PourAndMeasureLiquids.fromJson(Map<String, dynamic> json) =>
      PourAndMeasureLiquids(
        pourAndMeasureLiquids: json["pour_and_measure_liquids"] == null
            ? null
            : json["pour_and_measure_liquids"],
      );

  Map<String, dynamic> toJson() => {
        "pour_and_measure_liquids":
            pourAndMeasureLiquids == null ? null : pourAndMeasureLiquids,
      };
}

class TamperWithMedication {
  TamperWithMedication({
    this.additionalDetails,
    this.tamperWithMedication,
  });

  String? additionalDetails;
  String? tamperWithMedication;

  factory TamperWithMedication.fromJson(Map<String, dynamic> json) =>
      TamperWithMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        tamperWithMedication: json["tamper_with_medication"] == null
            ? null
            : json["tamper_with_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "tamper_with_medication":
            tamperWithMedication == null ? null : tamperWithMedication,
      };
}

class Hearing {
  Hearing({
    this.hearingSupport,
    this.hearingImpairmentAdditionalDetail,
  });

  HearingSupport? hearingSupport;
  String? hearingImpairmentAdditionalDetail;

  factory Hearing.fromJson(Map<String, dynamic> json) => Hearing(
        hearingSupport: json["hearing_support"] == null
            ? null
            : HearingSupport.fromJson(json["hearing_support"]),
        hearingImpairmentAdditionalDetail:
            json["hearing_impairment_additional_detail"] == null
                ? null
                : json["hearing_impairment_additional_detail"],
      );

  Map<String, dynamic> toJson() => {
        "hearing_support":
            hearingSupport == null ? null : hearingSupport!.toJson(),
        "hearing_impairment_additional_detail":
            hearingImpairmentAdditionalDetail == null
                ? null
                : hearingImpairmentAdditionalDetail,
      };
}

class HearingSupport {
  HearingSupport({
    this.hearingAids,
  });

  String? hearingAids;

  factory HearingSupport.fromJson(Map<String, dynamic> json) => HearingSupport(
        hearingAids: json["hearing_aids"] == null ? null : json["hearing_aids"],
      );

  Map<String, dynamic> toJson() => {
        "hearing_aids": hearingAids == null ? null : hearingAids,
      };
}

class HomeEnvironment {
  HomeEnvironment({
    this.smoke,
    this.haveAnyPets,
  });

  Smoke? smoke;
  HaveAnyPets? haveAnyPets;

  factory HomeEnvironment.fromJson(Map<String, dynamic> json) =>
      HomeEnvironment(
        smoke: json["smoke"] == null ? null : Smoke.fromJson(json["smoke"]),
        haveAnyPets: json["have_any_pets"] == null
            ? null
            : HaveAnyPets.fromJson(json["have_any_pets"]),
      );

  Map<String, dynamic> toJson() => {
        "smoke": smoke == null ? null : smoke!.toJson(),
        "have_any_pets": haveAnyPets == null ? null : haveAnyPets!.toJson(),
      };
}

class HaveAnyPets {
  HaveAnyPets({
    this.whichPets,
    this.haveAnyPets,
    this.additionalDetails,
  });

  WhichPets? whichPets;
  String? haveAnyPets;
  String? additionalDetails;

  factory HaveAnyPets.fromJson(Map<String, dynamic> json) => HaveAnyPets(
        whichPets: json["which_pets"] == null
            ? null
            : WhichPets.fromJson(json["which_pets"]),
        haveAnyPets:
            json["have_any_pets"] == null ? null : json["have_any_pets"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "which_pets": whichPets == null ? null : whichPets!.toJson(),
        "have_any_pets": haveAnyPets == null ? null : haveAnyPets,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class WhichPets {
  WhichPets({
    this.cat,
    this.dog,
    this.bird,
  });

  String? cat;
  String? dog;
  String? bird;

  factory WhichPets.fromJson(Map<String, dynamic> json) => WhichPets(
        cat: json["cat"] == null ? null : json["cat"],
        dog: json["dog"] == null ? null : json["dog"],
        bird: json["bird"] == null ? null : json["bird"],
      );

  Map<String, dynamic> toJson() => {
        "cat": cat == null ? null : cat,
        "dog": dog == null ? null : dog,
        "bird": bird == null ? null : bird,
      };
}

class Smoke {
  Smoke({
    this.doesSmoke,
    this.additionalDetails,
  });

  String? doesSmoke;
  String? additionalDetails;

  factory Smoke.fromJson(Map<String, dynamic> json) => Smoke(
        doesSmoke: json["does_smoke"] == null ? null : json["does_smoke"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "does_smoke": doesSmoke == null ? null : doesSmoke,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class House {
  House({
    this.typeOfHouse,
  });

  String? typeOfHouse;

  factory House.fromJson(Map<String, dynamic> json) => House(
        typeOfHouse:
            json["type_of_house"] == null ? null : json["type_of_house"],
      );

  Map<String, dynamic> toJson() => {
        "type_of_house": typeOfHouse == null ? null : typeOfHouse,
      };
}

class Housekeeping {
  Housekeeping({
    this.doTheirHousekeeping,
    this.supportForTheirHousekeeping,
  });

  DoTheirHousekeeping? doTheirHousekeeping;
  SupportForTheirHousekeeping? supportForTheirHousekeeping;

  factory Housekeeping.fromJson(Map<String, dynamic> json) => Housekeeping(
        doTheirHousekeeping: json["do_their_housekeeping"] == null
            ? null
            : DoTheirHousekeeping.fromJson(json["do_their_housekeeping"]),
        supportForTheirHousekeeping:
            json["support_for_their_housekeeping"] == null
                ? null
                : SupportForTheirHousekeeping.fromJson(
                    json["support_for_their_housekeeping"]),
      );

  Map<String, dynamic> toJson() => {
        "do_their_housekeeping":
            doTheirHousekeeping == null ? null : doTheirHousekeeping!.toJson(),
        "support_for_their_housekeeping": supportForTheirHousekeeping == null
            ? null
            : supportForTheirHousekeeping!.toJson(),
      };
}

class DoTheirHousekeeping {
  DoTheirHousekeeping({
    this.additionalDetails,
    this.doTheirHousekeeping,
  });

  String? additionalDetails;
  String? doTheirHousekeeping;

  factory DoTheirHousekeeping.fromJson(Map<String, dynamic> json) =>
      DoTheirHousekeeping(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        doTheirHousekeeping: json["do_their_housekeeping"] == null
            ? null
            : json["do_their_housekeeping"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "do_their_housekeeping":
            doTheirHousekeeping == null ? null : doTheirHousekeeping,
      };
}

class SupportForTheirHousekeeping {
  SupportForTheirHousekeeping({
    this.additionalDetails,
    this.supportForTheirHousekeeping,
  });

  String? additionalDetails;
  String? supportForTheirHousekeeping;

  factory SupportForTheirHousekeeping.fromJson(Map<String, dynamic> json) =>
      SupportForTheirHousekeeping(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        supportForTheirHousekeeping:
            json["support_for_their_housekeeping"] == null
                ? null
                : json["support_for_their_housekeeping"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "support_for_their_housekeeping": supportForTheirHousekeeping == null
            ? null
            : supportForTheirHousekeeping,
      };
}

class InformalCare {
  InformalCare({
    this.providedBy,
    this.howIsSupportedBy,
    this.receiveAnyInformalCare,
    this.concernsAroundTheWellbeing,
    this.completeAnyStairs,
    this.concernsAboutHome,
  });

  ProvidedBy? providedBy;
  String? howIsSupportedBy;
  String? receiveAnyInformalCare;
  ConcernsAroundTheWellbeing? concernsAroundTheWellbeing;
  CompleteAnyStairs? completeAnyStairs;
  ConcernsAboutHome? concernsAboutHome;

  factory InformalCare.fromJson(Map<String, dynamic> json) => InformalCare(
        providedBy: json["provided_by"] == null
            ? null
            : ProvidedBy.fromJson(json["provided_by"]),
        howIsSupportedBy: json["how_is_supported_by"] == null
            ? null
            : json["how_is_supported_by"],
        receiveAnyInformalCare: json["receive_any_informal_care"] == null
            ? null
            : json["receive_any_informal_care"],
        concernsAroundTheWellbeing:
            json["concerns_around_the_wellbeing"] == null
                ? null
                : ConcernsAroundTheWellbeing.fromJson(
                    json["concerns_around_the_wellbeing"]),
        completeAnyStairs: json["complete_any_stairs"] == null
            ? null
            : CompleteAnyStairs.fromJson(json["complete_any_stairs"]),
        concernsAboutHome: json["concerns_about_home"] == null
            ? null
            : ConcernsAboutHome.fromJson(json["concerns_about_home"]),
      );

  Map<String, dynamic> toJson() => {
        "provided_by": providedBy == null ? null : providedBy!.toJson(),
        "how_is_supported_by":
            howIsSupportedBy == null ? null : howIsSupportedBy,
        "receive_any_informal_care":
            receiveAnyInformalCare == null ? null : receiveAnyInformalCare,
        "concerns_around_the_wellbeing": concernsAroundTheWellbeing == null
            ? null
            : concernsAroundTheWellbeing!.toJson(),
        "complete_any_stairs":
            completeAnyStairs == null ? null : completeAnyStairs!.toJson(),
        "concerns_about_home":
            concernsAboutHome == null ? null : concernsAboutHome!.toJson(),
      };
}

class CompleteAnyStairs {
  CompleteAnyStairs({
    this.howMany,
    this.additionalDetails,
    this.completeAnyStairs,
  });

  String? howMany;
  String? additionalDetails;
  String? completeAnyStairs;

  factory CompleteAnyStairs.fromJson(Map<String, dynamic> json) =>
      CompleteAnyStairs(
        howMany: json["how_many"] == null ? null : json["how_many"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        completeAnyStairs: json["complete_any_stairs"] == null
            ? null
            : json["complete_any_stairs"],
      );

  Map<String, dynamic> toJson() => {
        "how_many": howMany == null ? null : howMany,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "complete_any_stairs":
            completeAnyStairs == null ? null : completeAnyStairs,
      };
}

class ConcernsAboutHome {
  ConcernsAboutHome({
    this.additionalDetails,
    this.concernsAboutHome,
  });

  String? additionalDetails;
  String? concernsAboutHome;

  factory ConcernsAboutHome.fromJson(Map<String, dynamic> json) =>
      ConcernsAboutHome(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        concernsAboutHome: json["concerns_about_home"] == null
            ? null
            : json["concerns_about_home"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "concerns_about_home":
            concernsAboutHome == null ? null : concernsAboutHome,
      };
}

class ConcernsAroundTheWellbeing {
  ConcernsAroundTheWellbeing({
    this.additionalDetails,
    this.concernsAroundTheWellbeing,
  });

  String? additionalDetails;
  String? concernsAroundTheWellbeing;

  factory ConcernsAroundTheWellbeing.fromJson(Map<String, dynamic> json) =>
      ConcernsAroundTheWellbeing(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        concernsAroundTheWellbeing:
            json["concerns_around_the_wellbeing"] == null
                ? null
                : json["concerns_around_the_wellbeing"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "concerns_around_the_wellbeing": concernsAroundTheWellbeing == null
            ? null
            : concernsAroundTheWellbeing,
      };
}

class ProvidedBy {
  ProvidedBy({
    this.other,
    this.neighbour,
    this.familyMember,
    this.additionalDetails,
  });

  String? other;
  String? neighbour;
  String? familyMember;
  String? additionalDetails;

  factory ProvidedBy.fromJson(Map<String, dynamic> json) => ProvidedBy(
        other: json["other"] == null ? null : json["other"],
        neighbour: json["neighbour"] == null ? null : json["neighbour"],
        familyMember:
            json["family_member"] == null ? null : json["family_member"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "other": other == null ? null : other,
        "neighbour": neighbour == null ? null : neighbour,
        "family_member": familyMember == null ? null : familyMember,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Kitchen {
  Kitchen({
    this.riskWithTaps,
    this.riskWithCooker,
    this.riskWithFridge,
    this.otherKitchenRisks,
    this.riskWithKitchenDishes,
    this.riskWithCordsInKitchen,
    this.riskWithKitchenFlooring,
  });

  RiskWithTaps? riskWithTaps;
  RiskWithCooker? riskWithCooker;
  RiskWithFridge? riskWithFridge;
  OtherKitchenRisks? otherKitchenRisks;
  RiskWithKitchenDishes? riskWithKitchenDishes;
  RiskWithCordsInKitchen? riskWithCordsInKitchen;
  RiskWithKitchenFlooring? riskWithKitchenFlooring;

  factory Kitchen.fromJson(Map<String, dynamic> json) => Kitchen(
        riskWithTaps: json["risk_with_taps"] == null
            ? null
            : RiskWithTaps.fromJson(json["risk_with_taps"]),
        riskWithCooker: json["risk_with_cooker"] == null
            ? null
            : RiskWithCooker.fromJson(json["risk_with_cooker"]),
        riskWithFridge: json["risk_with_fridge"] == null
            ? null
            : RiskWithFridge.fromJson(json["risk_with_fridge"]),
        otherKitchenRisks: json["other_kitchen_risks"] == null
            ? null
            : OtherKitchenRisks.fromJson(json["other_kitchen_risks"]),
        riskWithKitchenDishes: json["risk_with_kitchen_dishes"] == null
            ? null
            : RiskWithKitchenDishes.fromJson(json["risk_with_kitchen_dishes"]),
        riskWithCordsInKitchen: json["risk_with_cords_in_kitchen"] == null
            ? null
            : RiskWithCordsInKitchen.fromJson(
                json["risk_with_cords_in_kitchen"]),
        riskWithKitchenFlooring: json["risk_with_kitchen_flooring"] == null
            ? null
            : RiskWithKitchenFlooring.fromJson(
                json["risk_with_kitchen_flooring"]),
      );

  Map<String, dynamic> toJson() => {
        "risk_with_taps": riskWithTaps == null ? null : riskWithTaps!.toJson(),
        "risk_with_cooker":
            riskWithCooker == null ? null : riskWithCooker!.toJson(),
        "risk_with_fridge":
            riskWithFridge == null ? null : riskWithFridge!.toJson(),
        "other_kitchen_risks":
            otherKitchenRisks == null ? null : otherKitchenRisks!.toJson(),
        "risk_with_kitchen_dishes": riskWithKitchenDishes == null
            ? null
            : riskWithKitchenDishes!.toJson(),
        "risk_with_cords_in_kitchen": riskWithCordsInKitchen == null
            ? null
            : riskWithCordsInKitchen!.toJson(),
        "risk_with_kitchen_flooring": riskWithKitchenFlooring == null
            ? null
            : riskWithKitchenFlooring!.toJson(),
      };
}

class OtherKitchenRisks {
  OtherKitchenRisks({
    this.riskMitigated,
    this.additionalDetails,
    this.otherKitchenRisks,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? otherKitchenRisks;

  factory OtherKitchenRisks.fromJson(Map<String, dynamic> json) =>
      OtherKitchenRisks(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        otherKitchenRisks: json["other_kitchen_risks"] == null
            ? null
            : json["other_kitchen_risks"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "other_kitchen_risks":
            otherKitchenRisks == null ? null : otherKitchenRisks,
      };
}

class RiskWithCooker {
  RiskWithCooker({
    this.riskMitigated,
    this.riskWithCooker,
    this.additionalDetails,
  });

  String? riskMitigated;
  String? riskWithCooker;
  String? additionalDetails;

  factory RiskWithCooker.fromJson(Map<String, dynamic> json) => RiskWithCooker(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        riskWithCooker:
            json["risk_with_cooker"] == null ? null : json["risk_with_cooker"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risk_with_cooker": riskWithCooker == null ? null : riskWithCooker,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiskWithCordsInKitchen {
  RiskWithCordsInKitchen({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithCordsInKitchen,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithCordsInKitchen;

  factory RiskWithCordsInKitchen.fromJson(Map<String, dynamic> json) =>
      RiskWithCordsInKitchen(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithCordsInKitchen: json["risk_with_cords_in_kitchen"] == null
            ? null
            : json["risk_with_cords_in_kitchen"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_cords_in_kitchen":
            riskWithCordsInKitchen == null ? null : riskWithCordsInKitchen,
      };
}

class RiskWithFridge {
  RiskWithFridge({
    this.riskMitigated,
    this.riskWithFridge,
    this.additionalDetails,
  });

  dynamic riskMitigated;
  String? riskWithFridge;
  String? additionalDetails;

  factory RiskWithFridge.fromJson(Map<String, dynamic> json) => RiskWithFridge(
        riskMitigated: json["risk_mitigated"],
        riskWithFridge:
            json["risk_with_fridge"] == null ? null : json["risk_with_fridge"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "risk_with_fridge": riskWithFridge == null ? null : riskWithFridge,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiskWithKitchenDishes {
  RiskWithKitchenDishes({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithKitchenDishes,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithKitchenDishes;

  factory RiskWithKitchenDishes.fromJson(Map<String, dynamic> json) =>
      RiskWithKitchenDishes(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithKitchenDishes: json["risk_with_kitchen_dishes"] == null
            ? null
            : json["risk_with_kitchen_dishes"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_kitchen_dishes":
            riskWithKitchenDishes == null ? null : riskWithKitchenDishes,
      };
}

class RiskWithKitchenFlooring {
  RiskWithKitchenFlooring({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithKitchenFlooring,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithKitchenFlooring;

  factory RiskWithKitchenFlooring.fromJson(Map<String, dynamic> json) =>
      RiskWithKitchenFlooring(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithKitchenFlooring: json["risk_with_kitchen_flooring"] == null
            ? null
            : json["risk_with_kitchen_flooring"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_kitchen_flooring":
            riskWithKitchenFlooring == null ? null : riskWithKitchenFlooring,
      };
}

class RiskWithTaps {
  RiskWithTaps({
    this.riskMitigated,
    this.riskWithTaps,
    this.additionalDetails,
  });

  dynamic riskMitigated;
  String? riskWithTaps;
  String? additionalDetails;

  factory RiskWithTaps.fromJson(Map<String, dynamic> json) => RiskWithTaps(
        riskMitigated: json["risk_mitigated"],
        riskWithTaps:
            json["risk_with_taps"] == null ? null : json["risk_with_taps"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "risk_with_taps": riskWithTaps == null ? null : riskWithTaps,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class LivingArea {
  LivingArea({
    this.riskWithDoorway,
    this.riskWithHallway,
    this.riskInLivingAreas,
    this.riskWithElectricalCords,
    this.riskWithRugsAndCarpets,
    this.riskWithLivingAreaLighting,
  });

  RiskWithDoorway? riskWithDoorway;
  RiskWithHallway? riskWithHallway;
  RiskInLivingAreas? riskInLivingAreas;
  RiskWithElectricalCords? riskWithElectricalCords;
  RiskWithRugsAndCarpets? riskWithRugsAndCarpets;
  RiskWithLivingAreaLighting? riskWithLivingAreaLighting;

  factory LivingArea.fromJson(Map<String, dynamic> json) => LivingArea(
        riskWithDoorway: json["risk_with_doorway"] == null
            ? null
            : RiskWithDoorway.fromJson(json["risk_with_doorway"]),
        riskWithHallway: json["risk_with_hallway"] == null
            ? null
            : RiskWithHallway.fromJson(json["risk_with_hallway"]),
        riskInLivingAreas: json["risk_in_living_areas"] == null
            ? null
            : RiskInLivingAreas.fromJson(json["risk_in_living_areas"]),
        riskWithElectricalCords: json["risk_with_electrical_cords"] == null
            ? null
            : RiskWithElectricalCords.fromJson(
                json["risk_with_electrical_cords"]),
        riskWithRugsAndCarpets: json["risk_with_rugs_and_carpets"] == null
            ? null
            : RiskWithRugsAndCarpets.fromJson(
                json["risk_with_rugs_and_carpets"]),
        riskWithLivingAreaLighting:
            json["risk_with_living_area_lighting"] == null
                ? null
                : RiskWithLivingAreaLighting.fromJson(
                    json["risk_with_living_area_lighting"]),
      );

  Map<String, dynamic> toJson() => {
        "risk_with_doorway":
            riskWithDoorway == null ? null : riskWithDoorway!.toJson(),
        "risk_with_hallway":
            riskWithHallway == null ? null : riskWithHallway!.toJson(),
        "risk_in_living_areas":
            riskInLivingAreas == null ? null : riskInLivingAreas!.toJson(),
        "risk_with_electrical_cords": riskWithElectricalCords == null
            ? null
            : riskWithElectricalCords!.toJson(),
        "risk_with_rugs_and_carpets": riskWithRugsAndCarpets == null
            ? null
            : riskWithRugsAndCarpets!.toJson(),
        "risk_with_living_area_lighting": riskWithLivingAreaLighting == null
            ? null
            : riskWithLivingAreaLighting!.toJson(),
      };
}

class RiskInLivingAreas {
  RiskInLivingAreas({
    this.riskMitigated,
    this.additionalDetails,
    this.riskInLivingAreas,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskInLivingAreas;

  factory RiskInLivingAreas.fromJson(Map<String, dynamic> json) =>
      RiskInLivingAreas(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskInLivingAreas: json["risk_in_living_areas"] == null
            ? null
            : json["risk_in_living_areas"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_in_living_areas":
            riskInLivingAreas == null ? null : riskInLivingAreas,
      };
}

class RiskWithDoorway {
  RiskWithDoorway({
    this.riskMitigated,
    this.riskWithDoorway,
    this.additionalDetails,
  });

  String? riskMitigated;
  String? riskWithDoorway;
  String? additionalDetails;

  factory RiskWithDoorway.fromJson(Map<String, dynamic> json) =>
      RiskWithDoorway(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        riskWithDoorway: json["risk_with_doorway"] == null
            ? null
            : json["risk_with_doorway"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risk_with_doorway": riskWithDoorway == null ? null : riskWithDoorway,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiskWithElectricalCords {
  RiskWithElectricalCords({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithElectricalCords,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithElectricalCords;

  factory RiskWithElectricalCords.fromJson(Map<String, dynamic> json) =>
      RiskWithElectricalCords(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithElectricalCords: json["risk_with_electrical_cords"] == null
            ? null
            : json["risk_with_electrical_cords"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_electrical_cords":
            riskWithElectricalCords == null ? null : riskWithElectricalCords,
      };
}

class RiskWithHallway {
  RiskWithHallway({
    this.riskMitigated,
    this.riskWithHallway,
    this.additionalDetails,
  });

  String? riskMitigated;
  String? riskWithHallway;
  String? additionalDetails;

  factory RiskWithHallway.fromJson(Map<String, dynamic> json) =>
      RiskWithHallway(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        riskWithHallway: json["risk_with_hallway"] == null
            ? null
            : json["risk_with_hallway"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risk_with_hallway": riskWithHallway == null ? null : riskWithHallway,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiskWithLivingAreaLighting {
  RiskWithLivingAreaLighting({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithLivingAreaLighting,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? riskWithLivingAreaLighting;

  factory RiskWithLivingAreaLighting.fromJson(Map<String, dynamic> json) =>
      RiskWithLivingAreaLighting(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithLivingAreaLighting:
            json["risk_with_living_area_lighting"] == null
                ? null
                : json["risk_with_living_area_lighting"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_living_area_lighting": riskWithLivingAreaLighting == null
            ? null
            : riskWithLivingAreaLighting,
      };
}

class RiskWithRugsAndCarpets {
  RiskWithRugsAndCarpets({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithRugsAndCarpets,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? riskWithRugsAndCarpets;

  factory RiskWithRugsAndCarpets.fromJson(Map<String, dynamic> json) =>
      RiskWithRugsAndCarpets(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithRugsAndCarpets: json["risk_with_rugs_and_carpets"] == null
            ? null
            : json["risk_with_rugs_and_carpets"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_rugs_and_carpets":
            riskWithRugsAndCarpets == null ? null : riskWithRugsAndCarpets,
      };
}

class LivingArrangements {
  LivingArrangements({
    this.liveWithWhom,
    this.additionalDetails,
  });

  LiveWithWhom? liveWithWhom;
  String? additionalDetails;

  factory LivingArrangements.fromJson(Map<String, dynamic> json) =>
      LivingArrangements(
        liveWithWhom: json["live_with_whom"] == null
            ? null
            : LiveWithWhom.fromJson(json["live_with_whom"]),
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "live_with_whom": liveWithWhom == null ? null : liveWithWhom!.toJson(),
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class LiveWithWhom {
  LiveWithWhom({
    this.spouse,
  });

  String? spouse;

  factory LiveWithWhom.fromJson(Map<String, dynamic> json) => LiveWithWhom(
        spouse: json["spouse"] == null ? null : json["spouse"],
      );

  Map<String, dynamic> toJson() => {
        "spouse": spouse == null ? null : spouse,
      };
}

class MajorSurgeryOrTrauma {
  MajorSurgeryOrTrauma({
    this.addScore,
    this.anySurgeryOrTrauma,
    this.timeOnOperatingTable,
  });

  String? addScore;
  String? anySurgeryOrTrauma;
  String? timeOnOperatingTable;

  factory MajorSurgeryOrTrauma.fromJson(Map<String, dynamic> json) =>
      MajorSurgeryOrTrauma(
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        anySurgeryOrTrauma: json["any_surgery_or_trauma"] == null
            ? null
            : json["any_surgery_or_trauma"],
        timeOnOperatingTable: json["time_on_operating_table"] == null
            ? null
            : json["time_on_operating_table"],
      );

  Map<String, dynamic> toJson() => {
        "'add_score'": addScore == null ? null : addScore,
        "any_surgery_or_trauma":
            anySurgeryOrTrauma == null ? null : anySurgeryOrTrauma,
        "time_on_operating_table":
            timeOnOperatingTable == null ? null : timeOnOperatingTable,
      };
}

class Management {
  Management({
    this.assistanceWithShopping,
    this.assistanceWithPayingBills,
    this.assistanceWithManagingFinances,
  });

  AssistanceWithShopping? assistanceWithShopping;
  AssistanceWithPayingBills? assistanceWithPayingBills;
  AssistanceWithManagingFinances? assistanceWithManagingFinances;

  factory Management.fromJson(Map<String, dynamic> json) => Management(
        assistanceWithShopping: json["assistance_with_shopping"] == null
            ? null
            : AssistanceWithShopping.fromJson(json["assistance_with_shopping"]),
        assistanceWithPayingBills: json["assistance_with_paying_bills"] == null
            ? null
            : AssistanceWithPayingBills.fromJson(
                json["assistance_with_paying_bills"]),
        assistanceWithManagingFinances:
            json["assistance_with_managing_finances"] == null
                ? null
                : AssistanceWithManagingFinances.fromJson(
                    json["assistance_with_managing_finances"]),
      );

  Map<String, dynamic> toJson() => {
        "assistance_with_shopping": assistanceWithShopping == null
            ? null
            : assistanceWithShopping!.toJson(),
        "assistance_with_paying_bills": assistanceWithPayingBills == null
            ? null
            : assistanceWithPayingBills!.toJson(),
        "assistance_with_managing_finances":
            assistanceWithManagingFinances == null
                ? null
                : assistanceWithManagingFinances!.toJson(),
      };
}

class AssistanceWithManagingFinances {
  AssistanceWithManagingFinances({
    this.howOften,
    this.additionalDetails,
    this.whatSupportIsNeeded,
    this.whoSupportFinanceManagement,
    this.assistanceWithManagingFinances,
  });

  String? howOften;
  String? additionalDetails;
  String? whatSupportIsNeeded;
  String? whoSupportFinanceManagement;
  String? assistanceWithManagingFinances;

  factory AssistanceWithManagingFinances.fromJson(Map<String, dynamic> json) =>
      AssistanceWithManagingFinances(
        howOften: json["how_often"] == null ? null : json["how_often"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whatSupportIsNeeded: json["what_support_is_needed"] == null
            ? null
            : json["what_support_is_needed"],
        whoSupportFinanceManagement:
            json["who_support_finance_management"] == null
                ? null
                : json["who_support_finance_management"],
        assistanceWithManagingFinances:
            json["assistance_with_managing_finances"] == null
                ? null
                : json["assistance_with_managing_finances"],
      );

  Map<String, dynamic> toJson() => {
        "how_often": howOften == null ? null : howOften,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "what_support_is_needed":
            whatSupportIsNeeded == null ? null : whatSupportIsNeeded,
        "who_support_finance_management": whoSupportFinanceManagement == null
            ? null
            : whoSupportFinanceManagement,
        "assistance_with_managing_finances":
            assistanceWithManagingFinances == null
                ? null
                : assistanceWithManagingFinances,
      };
}

class AssistanceWithPayingBills {
  AssistanceWithPayingBills({
    this.howOften,
    this.additionalDetails,
    this.whatSupportIsNeeded,
    this.whoSupportBillPaying,
    this.assistanceWithPayingBills,
  });

  String? howOften;
  String? additionalDetails;
  String? whatSupportIsNeeded;
  String? whoSupportBillPaying;
  String? assistanceWithPayingBills;

  factory AssistanceWithPayingBills.fromJson(Map<String, dynamic> json) =>
      AssistanceWithPayingBills(
        howOften: json["how_often"] == null ? null : json["how_often"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whatSupportIsNeeded: json["what_support_is_needed"] == null
            ? null
            : json["what_support_is_needed"],
        whoSupportBillPaying: json["who_support_bill_paying"] == null
            ? null
            : json["who_support_bill_paying"],
        assistanceWithPayingBills: json["assistance_with_paying_bills"] == null
            ? null
            : json["assistance_with_paying_bills"],
      );

  Map<String, dynamic> toJson() => {
        "how_often": howOften == null ? null : howOften,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "what_support_is_needed":
            whatSupportIsNeeded == null ? null : whatSupportIsNeeded,
        "who_support_bill_paying":
            whoSupportBillPaying == null ? null : whoSupportBillPaying,
        "assistance_with_paying_bills": assistanceWithPayingBills == null
            ? null
            : assistanceWithPayingBills,
      };
}

class AssistanceWithShopping {
  AssistanceWithShopping({
    this.howOften,
    this.additionalDetails,
    this.whatSupportIsNeeded,
    this.assistanceWithShopping,
    this.whoSupportShoppingCollection,
  });

  String? howOften;
  String? additionalDetails;
  String? whatSupportIsNeeded;
  String? assistanceWithShopping;
  String? whoSupportShoppingCollection;

  factory AssistanceWithShopping.fromJson(Map<String, dynamic> json) =>
      AssistanceWithShopping(
        howOften: json["how_often"] == null ? null : json["how_often"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whatSupportIsNeeded: json["what_support_is_needed"] == null
            ? null
            : json["what_support_is_needed"],
        assistanceWithShopping: json["assistance_with_shopping"] == null
            ? null
            : json["assistance_with_shopping"],
        whoSupportShoppingCollection:
            json["who_support_shopping_collection"] == null
                ? null
                : json["who_support_shopping_collection"],
      );

  Map<String, dynamic> toJson() => {
        "how_often": howOften == null ? null : howOften,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "what_support_is_needed":
            whatSupportIsNeeded == null ? null : whatSupportIsNeeded,
        "assistance_with_shopping":
            assistanceWithShopping == null ? null : assistanceWithShopping,
        "who_support_shopping_collection": whoSupportShoppingCollection == null
            ? null
            : whoSupportShoppingCollection,
      };
}

class AssessmentMedication {
  AssessmentMedication({
    this.addScore,
    this.totalScore,
    this.highDoseSteroid,
  });

  String? addScore;
  String? totalScore;
  String? highDoseSteroid;

  factory AssessmentMedication.fromJson(Map<String, dynamic> json) =>
      AssessmentMedication(
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        totalScore:
            json["'total_score'"] == null ? null : json["'total_score'"],
        highDoseSteroid: json["high_dose_steroid"] == null
            ? null
            : json["high_dose_steroid"],
      );

  Map<String, dynamic> toJson() => {
        "'add_score'": addScore == null ? null : addScore,
        "'total_score'": totalScore == null ? null : totalScore,
        "high_dose_steroid": highDoseSteroid == null ? null : highDoseSteroid,
      };
}

class MedicationRisks {
  MedicationRisks({
    this.riskOfOverdosing,
    this.wantToTakeMedication,
    this.pourAndMeasureLiquids,
    this.canForgetAboutMedication,
    this.excessMedicationAvailable,
    this.canReadLabelOnMedication,
    this.understandingAboutMedication,
    this.capacityToMakeDecisionAboutMedication,
  });

  RiskOfOverdosing? riskOfOverdosing;
  WantToTakeMedication? wantToTakeMedication;
  PourAndMeasureLiquidsClass? pourAndMeasureLiquids;
  CanForgetAboutMedication? canForgetAboutMedication;
  ExcessMedicationAvailable? excessMedicationAvailable;
  CanReadLabelOnMedication? canReadLabelOnMedication;
  UnderstandingAboutMedication? understandingAboutMedication;
  CapacityToMakeDecisionAboutMedication? capacityToMakeDecisionAboutMedication;

  factory MedicationRisks.fromJson(Map<String, dynamic> json) =>
      MedicationRisks(
        riskOfOverdosing: json["risk_of_overdosing"] == null
            ? null
            : RiskOfOverdosing.fromJson(json["risk_of_overdosing"]),
        wantToTakeMedication: json["want_to_take_medication"] == null
            ? null
            : WantToTakeMedication.fromJson(json["want_to_take_medication"]),
        pourAndMeasureLiquids: json["pour_and_measure_liquids"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["pour_and_measure_liquids"]),
        canForgetAboutMedication: json["can_forget_about_medication"] == null
            ? null
            : CanForgetAboutMedication.fromJson(
                json["can_forget_about_medication"]),
        excessMedicationAvailable: json["excess_medication_available"] == null
            ? null
            : ExcessMedicationAvailable.fromJson(
                json["excess_medication_available"]),
        canReadLabelOnMedication: json["can_read_label_on_medication"] == null
            ? null
            : CanReadLabelOnMedication.fromJson(
                json["can_read_label_on_medication"]),
        understandingAboutMedication:
            json["understanding_about_medication"] == null
                ? null
                : UnderstandingAboutMedication.fromJson(
                    json["understanding_about_medication"]),
        capacityToMakeDecisionAboutMedication:
            json["capacity_to_make_decision_about_medication"] == null
                ? null
                : CapacityToMakeDecisionAboutMedication.fromJson(
                    json["capacity_to_make_decision_about_medication"]),
      );

  Map<String, dynamic> toJson() => {
        "risk_of_overdosing":
            riskOfOverdosing == null ? null : riskOfOverdosing!.toJson(),
        "want_to_take_medication": wantToTakeMedication == null
            ? null
            : wantToTakeMedication!.toJson(),
        "pour_and_measure_liquids": pourAndMeasureLiquids == null
            ? null
            : pourAndMeasureLiquids!.toJson(),
        "can_forget_about_medication": canForgetAboutMedication == null
            ? null
            : canForgetAboutMedication!.toJson(),
        "excess_medication_available": excessMedicationAvailable == null
            ? null
            : excessMedicationAvailable!.toJson(),
        "can_read_label_on_medication": canReadLabelOnMedication == null
            ? null
            : canReadLabelOnMedication!.toJson(),
        "understanding_about_medication": understandingAboutMedication == null
            ? null
            : understandingAboutMedication!.toJson(),
        "capacity_to_make_decision_about_medication":
            capacityToMakeDecisionAboutMedication == null
                ? null
                : capacityToMakeDecisionAboutMedication!.toJson(),
      };
}

class CanForgetAboutMedication {
  CanForgetAboutMedication({
    this.additionalDetails,
    this.canForgetAboutMedication,
  });

  String? additionalDetails;
  String? canForgetAboutMedication;

  factory CanForgetAboutMedication.fromJson(Map<String, dynamic> json) =>
      CanForgetAboutMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        canForgetAboutMedication: json["can_forget_about_medication"] == null
            ? null
            : json["can_forget_about_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "can_forget_about_medication":
            canForgetAboutMedication == null ? null : canForgetAboutMedication,
      };
}

class CanReadLabelOnMedication {
  CanReadLabelOnMedication({
    this.additionalDetails,
    this.canReadLabelOnMedication,
  });

  String? additionalDetails;
  String? canReadLabelOnMedication;

  factory CanReadLabelOnMedication.fromJson(Map<String, dynamic> json) =>
      CanReadLabelOnMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        canReadLabelOnMedication: json["can_read_label_on_medication"] == null
            ? null
            : json["can_read_label_on_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "can_read_label_on_medication":
            canReadLabelOnMedication == null ? null : canReadLabelOnMedication,
      };
}

class CapacityToMakeDecisionAboutMedication {
  CapacityToMakeDecisionAboutMedication({
    this.additionalDetails,
    this.capacityToMakeDecisionAboutMedication,
  });

  String? additionalDetails;
  String? capacityToMakeDecisionAboutMedication;

  factory CapacityToMakeDecisionAboutMedication.fromJson(
          Map<String, dynamic> json) =>
      CapacityToMakeDecisionAboutMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        capacityToMakeDecisionAboutMedication:
            json["capacity_to_make_decision_about_medication"] == null
                ? null
                : json["capacity_to_make_decision_about_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "capacity_to_make_decision_about_medication":
            capacityToMakeDecisionAboutMedication == null
                ? null
                : capacityToMakeDecisionAboutMedication,
      };
}

class ExcessMedicationAvailable {
  ExcessMedicationAvailable({
    this.additionalDetails,
    this.excessMedicationAvailable,
  });

  String? additionalDetails;
  String? excessMedicationAvailable;

  factory ExcessMedicationAvailable.fromJson(Map<String, dynamic> json) =>
      ExcessMedicationAvailable(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        excessMedicationAvailable: json["excess_medication_available"] == null
            ? null
            : json["excess_medication_available"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "excess_medication_available": excessMedicationAvailable == null
            ? null
            : excessMedicationAvailable,
      };
}

class RiskOfOverdosing {
  RiskOfOverdosing({
    this.additionalDetails,
    this.riskOfOverdosing,
  });

  String? additionalDetails;
  String? riskOfOverdosing;

  factory RiskOfOverdosing.fromJson(Map<String, dynamic> json) =>
      RiskOfOverdosing(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskOfOverdosing: json["risk_of_overdosing"] == null
            ? null
            : json["risk_of_overdosing"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_of_overdosing":
            riskOfOverdosing == null ? null : riskOfOverdosing,
      };
}

class UnderstandingAboutMedication {
  UnderstandingAboutMedication({
    this.additionalDetails,
    this.understandingAboutMedication,
  });

  String? additionalDetails;
  String? understandingAboutMedication;

  factory UnderstandingAboutMedication.fromJson(Map<String, dynamic> json) =>
      UnderstandingAboutMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        understandingAboutMedication:
            json["understanding_about_medication"] == null
                ? null
                : json["understanding_about_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "understanding_about_medication": understandingAboutMedication == null
            ? null
            : understandingAboutMedication,
      };
}

class WantToTakeMedication {
  WantToTakeMedication({
    this.additionalDetails,
    this.wantToTakeMedication,
  });

  String? additionalDetails;
  String? wantToTakeMedication;

  factory WantToTakeMedication.fromJson(Map<String, dynamic> json) =>
      WantToTakeMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        wantToTakeMedication: json["want_to_take_medication"] == null
            ? null
            : json["want_to_take_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "want_to_take_medication":
            wantToTakeMedication == null ? null : wantToTakeMedication,
      };
}

class Memory {
  Memory({
    this.howIsMemory,
    this.worriedAboutMemory,
  });

  HowIsMemory? howIsMemory;
  WorriedAboutMemory? worriedAboutMemory;

  factory Memory.fromJson(Map<String, dynamic> json) => Memory(
        howIsMemory: json["how_is_memory"] == null
            ? null
            : HowIsMemory.fromJson(json["how_is_memory"]),
        worriedAboutMemory: json["worried_about_memory"] == null
            ? null
            : WorriedAboutMemory.fromJson(json["worried_about_memory"]),
      );

  Map<String, dynamic> toJson() => {
        "how_is_memory": howIsMemory == null ? null : howIsMemory!.toJson(),
        "worried_about_memory":
            worriedAboutMemory == null ? null : worriedAboutMemory!.toJson(),
      };
}

class HowIsMemory {
  HowIsMemory({
    this.howIsMemory,
    this.additionDetails,
  });

  String? howIsMemory;
  String? additionDetails;

  factory HowIsMemory.fromJson(Map<String, dynamic> json) => HowIsMemory(
        howIsMemory:
            json["how_is_memory"] == null ? null : json["how_is_memory"],
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
      );

  Map<String, dynamic> toJson() => {
        "how_is_memory": howIsMemory == null ? null : howIsMemory,
        "addition_details": additionDetails == null ? null : additionDetails,
      };
}

class WorriedAboutMemory {
  WorriedAboutMemory({
    this.additionDetails,
    this.worriedAboutMemory,
  });

  String? additionDetails;
  String? worriedAboutMemory;

  factory WorriedAboutMemory.fromJson(Map<String, dynamic> json) =>
      WorriedAboutMemory(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        worriedAboutMemory: json["worried_about_memory"] == null
            ? null
            : json["worried_about_memory"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "worried_about_memory":
            worriedAboutMemory == null ? null : worriedAboutMemory,
      };
}

class Mobility {
  Mobility({
    this.sittingBalance,
    this.stairsIndependency,
    this.independencyInRolling,
    this.independencyWhileWalking,
    this.independencyWhileStanding,
    this.additionalMobilityScenarios,
    this.independencyWithoutEquipment,
    this.independencyFromLyingSitting,
    this.sittingToStandingIndependency,
    this.mobility,
    this.addScore,
  });

  SittingBalance? sittingBalance;
  PourAndMeasureLiquidsClass? stairsIndependency;
  PourAndMeasureLiquidsClass? independencyInRolling;
  PourAndMeasureLiquidsClass? independencyWhileWalking;
  PourAndMeasureLiquidsClass? independencyWhileStanding;
  String? additionalMobilityScenarios;
  String? independencyWithoutEquipment;
  PourAndMeasureLiquidsClass? independencyFromLyingSitting;
  PourAndMeasureLiquidsClass? sittingToStandingIndependency;
  String? mobility;
  String? addScore;

  factory Mobility.fromJson(Map<String, dynamic> json) => Mobility(
        sittingBalance: json["sitting_balance"] == null
            ? null
            : SittingBalance.fromJson(json["sitting_balance"]),
        stairsIndependency: json["stairs_independency"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(json["stairs_independency"]),
        independencyInRolling: json["independency_in_rolling"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["independency_in_rolling"]),
        independencyWhileWalking: json["independency_while_walking"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["independency_while_walking"]),
        independencyWhileStanding: json["independency_while_standing"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["independency_while_standing"]),
        additionalMobilityScenarios:
            json["additional_mobility_scenarios"] == null
                ? null
                : json["additional_mobility_scenarios"],
        independencyWithoutEquipment:
            json["independency_without_equipment"] == null
                ? null
                : json["independency_without_equipment"],
        independencyFromLyingSitting:
            json["independency_from_lying_sitting"] == null
                ? null
                : PourAndMeasureLiquidsClass.fromJson(
                    json["independency_from_lying_sitting"]),
        sittingToStandingIndependency:
            json["sitting_to_standing_independency"] == null
                ? null
                : PourAndMeasureLiquidsClass.fromJson(
                    json["sitting_to_standing_independency"]),
        mobility: json["'mobility'"] == null ? null : json["'mobility'"],
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
      );

  Map<String, dynamic> toJson() => {
        "sitting_balance":
            sittingBalance == null ? null : sittingBalance!.toJson(),
        "stairs_independency":
            stairsIndependency == null ? null : stairsIndependency!.toJson(),
        "independency_in_rolling": independencyInRolling == null
            ? null
            : independencyInRolling!.toJson(),
        "independency_while_walking": independencyWhileWalking == null
            ? null
            : independencyWhileWalking!.toJson(),
        "independency_while_standing": independencyWhileStanding == null
            ? null
            : independencyWhileStanding!.toJson(),
        "additional_mobility_scenarios": additionalMobilityScenarios == null
            ? null
            : additionalMobilityScenarios,
        "independency_without_equipment": independencyWithoutEquipment == null
            ? null
            : independencyWithoutEquipment,
        "independency_from_lying_sitting": independencyFromLyingSitting == null
            ? null
            : independencyFromLyingSitting!.toJson(),
        "sitting_to_standing_independency":
            sittingToStandingIndependency == null
                ? null
                : sittingToStandingIndependency!.toJson(),
        "'mobility'": mobility == null ? null : mobility,
        "'add_score'": addScore == null ? null : addScore,
      };
}

class SittingBalance {
  SittingBalance({
    this.sittingBalance,
    this.additionalDetails,
  });

  String? sittingBalance;
  String? additionalDetails;

  factory SittingBalance.fromJson(Map<String, dynamic> json) => SittingBalance(
        sittingBalance:
            json["sitting_balance"] == null ? null : json["sitting_balance"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "sitting_balance": sittingBalance == null ? null : sittingBalance,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class MoodAndSleep {
  MoodAndSleep({
    this.mood,
    this.sleep,
  });

  Mood? mood;
  Sleep? sleep;

  factory MoodAndSleep.fromJson(Map<String, dynamic> json) => MoodAndSleep(
        mood: json["mood"] == null ? null : Mood.fromJson(json["mood"]),
        sleep: json["sleep"] == null ? null : Sleep.fromJson(json["sleep"]),
      );

  Map<String, dynamic> toJson() => {
        "mood": mood == null ? null : mood!.toJson(),
        "sleep": sleep == null ? null : sleep!.toJson(),
      };
}

class Mood {
  Mood({
    this.other,
    this.lowerMood,
    this.moreTired,
    this.additionDetails,
  });

  String? other;
  String? lowerMood;
  String? moreTired;
  String? additionDetails;

  factory Mood.fromJson(Map<String, dynamic> json) => Mood(
        other: json["other"] == null ? null : json["other"],
        lowerMood: json["lower_mood"] == null ? null : json["lower_mood"],
        moreTired: json["more_tired"] == null ? null : json["more_tired"],
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
      );

  Map<String, dynamic> toJson() => {
        "other": other == null ? null : other,
        "lower_mood": lowerMood == null ? null : lowerMood,
        "more_tired": moreTired == null ? null : moreTired,
        "addition_details": additionDetails == null ? null : additionDetails,
      };
}

class Sleep {
  Sleep({
    this.howIsSleep,
    this.additionDetails,
  });

  String? howIsSleep;
  String? additionDetails;

  factory Sleep.fromJson(Map<String, dynamic> json) => Sleep(
        howIsSleep: json["how_is_sleep"] == null ? null : json["how_is_sleep"],
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
      );

  Map<String, dynamic> toJson() => {
        "how_is_sleep": howIsSleep == null ? null : howIsSleep,
        "addition_details": additionDetails == null ? null : additionDetails,
      };
}

class Mst {
  Mst({
    this.addScore,
    this.lostWeightRecently,
  });

  String? addScore;
  String? lostWeightRecently;

  factory Mst.fromJson(Map<String, dynamic> json) => Mst(
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        lostWeightRecently: json["'lost_weight_recently'"] == null
            ? null
            : json["'lost_weight_recently'"],
      );

  Map<String, dynamic> toJson() => {
        "'add_score'": addScore == null ? null : addScore,
        "'lost_weight_recently'":
            lostWeightRecently == null ? null : lostWeightRecently,
      };
}

class NeurologicalDeficit {
  NeurologicalDeficit({
    this.motor,
    this.diabetes,
    this.addScore,
    this.paraplegia,
  });

  String? motor;
  String? diabetes;
  String? addScore;
  String? paraplegia;

  factory NeurologicalDeficit.fromJson(Map<String, dynamic> json) =>
      NeurologicalDeficit(
        motor: json["'motor'"] == null ? null : json["'motor'"],
        diabetes: json["'diabetes'"] == null ? null : json["'diabetes'"],
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        paraplegia: json["'paraplegia'"] == null ? null : json["'paraplegia'"],
      );

  Map<String, dynamic> toJson() => {
        "'motor'": motor == null ? null : motor,
        "'diabetes'": diabetes == null ? null : diabetes,
        "'add_score'": addScore == null ? null : addScore,
        "'paraplegia'": paraplegia == null ? null : paraplegia,
      };
}

class OralHygiene {
  OralHygiene({
    this.wearDentures,
    this.canMaintainOralHygiene,
  });

  WearDentures? wearDentures;
  CanMaintainOralHygiene? canMaintainOralHygiene;

  factory OralHygiene.fromJson(Map<String, dynamic> json) => OralHygiene(
        wearDentures: json["wear_dentures"] == null
            ? null
            : WearDentures.fromJson(json["wear_dentures"]),
        canMaintainOralHygiene: json["can_maintain_oral_hygiene"] == null
            ? null
            : CanMaintainOralHygiene.fromJson(
                json["can_maintain_oral_hygiene"]),
      );

  Map<String, dynamic> toJson() => {
        "wear_dentures": wearDentures == null ? null : wearDentures!.toJson(),
        "can_maintain_oral_hygiene": canMaintainOralHygiene == null
            ? null
            : canMaintainOralHygiene!.toJson(),
      };
}

class CanMaintainOralHygiene {
  CanMaintainOralHygiene({
    this.additionalDetails,
    this.canMaintainOralHygiene,
  });

  String? additionalDetails;
  String? canMaintainOralHygiene;

  factory CanMaintainOralHygiene.fromJson(Map<String, dynamic> json) =>
      CanMaintainOralHygiene(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        canMaintainOralHygiene: json["can_maintain_oral_hygiene"] == null
            ? null
            : json["can_maintain_oral_hygiene"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "can_maintain_oral_hygiene":
            canMaintainOralHygiene == null ? null : canMaintainOralHygiene,
      };
}

class WearDentures {
  WearDentures({
    this.wearDentures,
    this.additionalDetails,
  });

  String? wearDentures;
  String? additionalDetails;

  factory WearDentures.fromJson(Map<String, dynamic> json) => WearDentures(
        wearDentures:
            json["wear_dentures"] == null ? null : json["wear_dentures"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "wear_dentures": wearDentures == null ? null : wearDentures,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Outside {
  Outside({
    this.risksWithSteps,
    this.parkingAvailable,
    this.risksWithParking,
    this.risksWithDorebells,
    this.whereIsParkingAvailable,
    this.risksWithOutsideEntrance,
  });

  RisksWithSteps? risksWithSteps;
  String? parkingAvailable;
  RisksWithParking? risksWithParking;
  RisksWithDorebells? risksWithDorebells;
  String? whereIsParkingAvailable;
  RisksWithOutsideEntrance? risksWithOutsideEntrance;

  factory Outside.fromJson(Map<String, dynamic> json) => Outside(
        risksWithSteps: json["risks_with_steps"] == null
            ? null
            : RisksWithSteps.fromJson(json["risks_with_steps"]),
        parkingAvailable: json["parking_available"] == null
            ? null
            : json["parking_available"],
        risksWithParking: json["risks_with_parking"] == null
            ? null
            : RisksWithParking.fromJson(json["risks_with_parking"]),
        risksWithDorebells: json["risks_with_dorebells"] == null
            ? null
            : RisksWithDorebells.fromJson(json["risks_with_dorebells"]),
        whereIsParkingAvailable: json["where_is_parking_available"] == null
            ? null
            : json["where_is_parking_available"],
        risksWithOutsideEntrance: json["risks_with_outside_entrance"] == null
            ? null
            : RisksWithOutsideEntrance.fromJson(
                json["risks_with_outside_entrance"]),
      );

  Map<String, dynamic> toJson() => {
        "risks_with_steps":
            risksWithSteps == null ? null : risksWithSteps!.toJson(),
        "parking_available": parkingAvailable == null ? null : parkingAvailable,
        "risks_with_parking":
            risksWithParking == null ? null : risksWithParking!.toJson(),
        "risks_with_dorebells":
            risksWithDorebells == null ? null : risksWithDorebells!.toJson(),
        "where_is_parking_available":
            whereIsParkingAvailable == null ? null : whereIsParkingAvailable,
        "risks_with_outside_entrance": risksWithOutsideEntrance == null
            ? null
            : risksWithOutsideEntrance!.toJson(),
      };
}

class RisksWithDorebells {
  RisksWithDorebells({
    this.additionalDetails,
    this.risksWithDorebells,
  });

  String? additionalDetails;
  String? risksWithDorebells;

  factory RisksWithDorebells.fromJson(Map<String, dynamic> json) =>
      RisksWithDorebells(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        risksWithDorebells: json["risks_with_dorebells"] == null
            ? null
            : json["risks_with_dorebells"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risks_with_dorebells":
            risksWithDorebells == null ? null : risksWithDorebells,
      };
}

class RisksWithOutsideEntrance {
  RisksWithOutsideEntrance({
    this.additionalDetails,
    this.risksWithOutsideEntrance,
  });

  String? additionalDetails;
  String? risksWithOutsideEntrance;

  factory RisksWithOutsideEntrance.fromJson(Map<String, dynamic> json) =>
      RisksWithOutsideEntrance(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        risksWithOutsideEntrance: json["risks_with_outside_entrance"] == null
            ? null
            : json["risks_with_outside_entrance"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risks_with_outside_entrance":
            risksWithOutsideEntrance == null ? null : risksWithOutsideEntrance,
      };
}

class RisksWithParking {
  RisksWithParking({
    this.riskMitigated,
    this.additionalDetails,
    this.risksWithParking,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? risksWithParking;

  factory RisksWithParking.fromJson(Map<String, dynamic> json) =>
      RisksWithParking(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        risksWithParking: json["risks_with_parking"] == null
            ? null
            : json["risks_with_parking"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risks_with_parking":
            risksWithParking == null ? null : risksWithParking,
      };
}

class RisksWithSteps {
  RisksWithSteps({
    this.riskMitigated,
    this.risksWithSteps,
    this.additionalDetails,
    this.risksWithStepsAndRailing,
  });

  String? riskMitigated;
  String? risksWithSteps;
  String? additionalDetails;
  String? risksWithStepsAndRailing;

  factory RisksWithSteps.fromJson(Map<String, dynamic> json) => RisksWithSteps(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        risksWithSteps:
            json["risks_with_steps"] == null ? null : json["risks_with_steps"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        risksWithStepsAndRailing: json["risks_with_steps_and_railing"] == null
            ? null
            : json["risks_with_steps_and_railing"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risks_with_steps": risksWithSteps == null ? null : risksWithSteps,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risks_with_steps_and_railing":
            risksWithStepsAndRailing == null ? null : risksWithStepsAndRailing,
      };
}

class PersonalAppearance {
  PersonalAppearance({
    this.canDressThemself,
    this.maintainPersonalAppearance,
  });

  CanDressThemself? canDressThemself;
  MaintainPersonalAppearance? maintainPersonalAppearance;

  factory PersonalAppearance.fromJson(Map<String, dynamic> json) =>
      PersonalAppearance(
        canDressThemself: json["can_dress_themself"] == null
            ? null
            : CanDressThemself.fromJson(json["can_dress_themself"]),
        maintainPersonalAppearance: json["maintain_personal_appearance"] == null
            ? null
            : MaintainPersonalAppearance.fromJson(
                json["maintain_personal_appearance"]),
      );

  Map<String, dynamic> toJson() => {
        "can_dress_themself":
            canDressThemself == null ? null : canDressThemself!.toJson(),
        "maintain_personal_appearance": maintainPersonalAppearance == null
            ? null
            : maintainPersonalAppearance!.toJson(),
      };
}

class CanDressThemself {
  CanDressThemself({
    this.additionalDetails,
    this.canDressThemself,
  });

  String? additionalDetails;
  String? canDressThemself;

  factory CanDressThemself.fromJson(Map<String, dynamic> json) =>
      CanDressThemself(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        canDressThemself: json["can_dress_themself"] == null
            ? null
            : json["can_dress_themself"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "can_dress_themself":
            canDressThemself == null ? null : canDressThemself,
      };
}

class MaintainPersonalAppearance {
  MaintainPersonalAppearance({
    this.additionalDetails,
    this.maintainPersonalAppearance,
  });

  String? additionalDetails;
  String? maintainPersonalAppearance;

  factory MaintainPersonalAppearance.fromJson(Map<String, dynamic> json) =>
      MaintainPersonalAppearance(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        maintainPersonalAppearance: json["maintain_personal_appearance"] == null
            ? null
            : json["maintain_personal_appearance"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "maintain_personal_appearance": maintainPersonalAppearance == null
            ? null
            : maintainPersonalAppearance,
      };
}

class PersonalPreferences {
  PersonalPreferences({
    this.additionalDetails,
    this.preferedCommunicationMethod,
  });

  String? additionalDetails;
  String? preferedCommunicationMethod;

  factory PersonalPreferences.fromJson(Map<String, dynamic> json) =>
      PersonalPreferences(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        preferedCommunicationMethod:
            json["prefered_communication_method"] == null
                ? null
                : json["prefered_communication_method"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "prefered_communication_method": preferedCommunicationMethod == null
            ? null
            : preferedCommunicationMethod,
      };
}

class Prescriptions {
  Prescriptions({
    this.whoOrderPrescriptions,
    this.orderTheirPrescriptions,
    this.problemsInObtainingMedicines,
    this.methodOfPrescriptionCollection,
  });

  WhoOrderPrescriptions? whoOrderPrescriptions;
  PrescriptionsOrderTheirPrescriptions? orderTheirPrescriptions;
  ProblemsInObtainingMedicines? problemsInObtainingMedicines;
  MethodOfPrescriptionCollection? methodOfPrescriptionCollection;

  factory Prescriptions.fromJson(Map<String, dynamic> json) => Prescriptions(
        whoOrderPrescriptions: json["who_order_prescriptions"] == null
            ? null
            : WhoOrderPrescriptions.fromJson(json["who_order_prescriptions"]),
        orderTheirPrescriptions: json["order_their_prescriptions"] == null
            ? null
            : PrescriptionsOrderTheirPrescriptions.fromJson(
                json["order_their_prescriptions"]),
        problemsInObtainingMedicines:
            json["problems_in_obtaining_medicines"] == null
                ? null
                : ProblemsInObtainingMedicines.fromJson(
                    json["problems_in_obtaining_medicines"]),
        methodOfPrescriptionCollection:
            json["method_of_prescription_collection"] == null
                ? null
                : MethodOfPrescriptionCollection.fromJson(
                    json["method_of_prescription_collection"]),
      );

  Map<String, dynamic> toJson() => {
        "who_order_prescriptions": whoOrderPrescriptions == null
            ? null
            : whoOrderPrescriptions!.toJson(),
        "order_their_prescriptions": orderTheirPrescriptions == null
            ? null
            : orderTheirPrescriptions!.toJson(),
        "problems_in_obtaining_medicines": problemsInObtainingMedicines == null
            ? null
            : problemsInObtainingMedicines!.toJson(),
        "method_of_prescription_collection":
            methodOfPrescriptionCollection == null
                ? null
                : methodOfPrescriptionCollection!.toJson(),
      };
}

class MethodOfPrescriptionCollection {
  MethodOfPrescriptionCollection({
    this.additionalDetails,
    this.methodOfPrescriptionCollection,
  });

  String? additionalDetails;
  String? methodOfPrescriptionCollection;

  factory MethodOfPrescriptionCollection.fromJson(Map<String, dynamic> json) =>
      MethodOfPrescriptionCollection(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        methodOfPrescriptionCollection:
            json["method_of_prescription_collection"] == null
                ? null
                : json["method_of_prescription_collection"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "method_of_prescription_collection":
            methodOfPrescriptionCollection == null
                ? null
                : methodOfPrescriptionCollection,
      };
}

class PrescriptionsOrderTheirPrescriptions {
  PrescriptionsOrderTheirPrescriptions({
    this.orderTheirPrescriptions,
  });

  String? orderTheirPrescriptions;

  factory PrescriptionsOrderTheirPrescriptions.fromJson(
          Map<String, dynamic> json) =>
      PrescriptionsOrderTheirPrescriptions(
        orderTheirPrescriptions: json["order_their_prescriptions"] == null
            ? null
            : json["order_their_prescriptions"],
      );

  Map<String, dynamic> toJson() => {
        "order_their_prescriptions":
            orderTheirPrescriptions == null ? null : orderTheirPrescriptions,
      };
}

class ProblemsInObtainingMedicines {
  ProblemsInObtainingMedicines({
    this.additionalDetails,
    this.problemsInObtainingMedicines,
  });

  String? additionalDetails;
  String? problemsInObtainingMedicines;

  factory ProblemsInObtainingMedicines.fromJson(Map<String, dynamic> json) =>
      ProblemsInObtainingMedicines(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        problemsInObtainingMedicines:
            json["problems_in_obtaining_medicines"] == null
                ? null
                : json["problems_in_obtaining_medicines"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "problems_in_obtaining_medicines": problemsInObtainingMedicines == null
            ? null
            : problemsInObtainingMedicines,
      };
}

class WhoOrderPrescriptions {
  WhoOrderPrescriptions({
    this.additionalDetails,
    this.whoOrderPrescriptions,
  });

  String? additionalDetails;
  String? whoOrderPrescriptions;

  factory WhoOrderPrescriptions.fromJson(Map<String, dynamic> json) =>
      WhoOrderPrescriptions(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whoOrderPrescriptions: json["who_order_prescriptions"] == null
            ? null
            : json["who_order_prescriptions"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "who_order_prescriptions":
            whoOrderPrescriptions == null ? null : whoOrderPrescriptions,
      };
}

class ProblemSummoningEmergency {
  ProblemSummoningEmergency({
    this.additionalDetails,
    this.haveProblemSummoningEmergency,
  });

  String? additionalDetails;
  String? haveProblemSummoningEmergency;

  factory ProblemSummoningEmergency.fromJson(Map<String, dynamic> json) =>
      ProblemSummoningEmergency(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        haveProblemSummoningEmergency:
            json["have_problem_summoning_emergency"] == null
                ? null
                : json["have_problem_summoning_emergency"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "have_problem_summoning_emergency":
            haveProblemSummoningEmergency == null
                ? null
                : haveProblemSummoningEmergency,
      };
}

class ReviewDetail {
  ReviewDetail({
    this.outcome,
  });

  Outcome? outcome;

  factory ReviewDetail.fromJson(Map<String, dynamic> json) => ReviewDetail(
        outcome:
            json["outcome"] == null ? null : Outcome.fromJson(json["outcome"]),
      );

  Map<String, dynamic> toJson() => {
        "outcome": outcome == null ? null : outcome!.toJson(),
      };
}

class Outcome {
  Outcome({
    this.outcome,
    this.additionalDetails,
  });

  String? outcome;
  String? additionalDetails;

  factory Outcome.fromJson(Map<String, dynamic> json) => Outcome(
        outcome: json["outcome"] == null ? null : json["outcome"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "outcome": outcome == null ? null : outcome,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class RiskLevel {
  RiskLevel({
    this.pressureSoresRisk,
  });

  String? pressureSoresRisk;

  factory RiskLevel.fromJson(Map<String, dynamic> json) => RiskLevel(
        pressureSoresRisk: json["pressure_sores_risk"] == null
            ? null
            : json["pressure_sores_risk"],
      );

  Map<String, dynamic> toJson() => {
        "pressure_sores_risk":
            pressureSoresRisk == null ? null : pressureSoresRisk,
      };
}

class SafeguardingIssues {
  SafeguardingIssues({
    this.additionDetails,
    this.raisedSafeguardingIssues,
  });

  String? additionDetails;
  String? raisedSafeguardingIssues;

  factory SafeguardingIssues.fromJson(Map<String, dynamic> json) =>
      SafeguardingIssues(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        raisedSafeguardingIssues: json["raised_safeguarding_issues"] == null
            ? null
            : json["raised_safeguarding_issues"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "raised_safeguarding_issues":
            raisedSafeguardingIssues == null ? null : raisedSafeguardingIssues,
      };
}

class SatisfactionAndMotivation {
  SatisfactionAndMotivation({
    this.motivatedForHealth,
    this.satisfactionWithHealth,
  });

  MotivatedForHealth? motivatedForHealth;
  SatisfactionWithHealth? satisfactionWithHealth;

  factory SatisfactionAndMotivation.fromJson(Map<String, dynamic> json) =>
      SatisfactionAndMotivation(
        motivatedForHealth: json["motivated_for_health"] == null
            ? null
            : MotivatedForHealth.fromJson(json["motivated_for_health"]),
        satisfactionWithHealth: json["satisfaction_with_health"] == null
            ? null
            : SatisfactionWithHealth.fromJson(json["satisfaction_with_health"]),
      );

  Map<String, dynamic> toJson() => {
        "motivated_for_health":
            motivatedForHealth == null ? null : motivatedForHealth!.toJson(),
        "satisfaction_with_health": satisfactionWithHealth == null
            ? null
            : satisfactionWithHealth!.toJson(),
      };
}

class MotivatedForHealth {
  MotivatedForHealth({
    this.additionDetails,
    this.motivatedForHealth,
  });

  String? additionDetails;
  String? motivatedForHealth;

  factory MotivatedForHealth.fromJson(Map<String, dynamic> json) =>
      MotivatedForHealth(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        motivatedForHealth: json["motivated_for_health"] == null
            ? null
            : json["motivated_for_health"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "motivated_for_health":
            motivatedForHealth == null ? null : motivatedForHealth,
      };
}

class SatisfactionWithHealth {
  SatisfactionWithHealth({
    this.additionDetails,
    this.satisfactionWithHealth,
  });

  String? additionDetails;
  String? satisfactionWithHealth;

  factory SatisfactionWithHealth.fromJson(Map<String, dynamic> json) =>
      SatisfactionWithHealth(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        satisfactionWithHealth: json["satisfaction_with_health"] == null
            ? null
            : json["satisfaction_with_health"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "satisfaction_with_health":
            satisfactionWithHealth == null ? null : satisfactionWithHealth,
      };
}

class Security {
  Security({
    this.cctv,
    this.risksWithEntrance,
    this.concernsWithDoorLocks,
    this.concernsWithDoorWindowsLocks,
  });

  Cctv? cctv;
  RisksWithEntrance? risksWithEntrance;
  ConcernsWithDoorLocks? concernsWithDoorLocks;
  ConcernsWithDoorWindowsLocks? concernsWithDoorWindowsLocks;

  factory Security.fromJson(Map<String, dynamic> json) => Security(
        cctv: json["cctv"] == null ? null : Cctv.fromJson(json["cctv"]),
        risksWithEntrance: json["risks_with_entrance"] == null
            ? null
            : RisksWithEntrance.fromJson(json["risks_with_entrance"]),
        concernsWithDoorLocks: json["concerns_with_door_locks"] == null
            ? null
            : ConcernsWithDoorLocks.fromJson(json["concerns_with_door_locks"]),
        concernsWithDoorWindowsLocks:
            json["concerns_with_door_windows_locks"] == null
                ? null
                : ConcernsWithDoorWindowsLocks.fromJson(
                    json["concerns_with_door_windows_locks"]),
      );

  Map<String, dynamic> toJson() => {
        "cctv": cctv == null ? null : cctv!.toJson(),
        "risks_with_entrance":
            risksWithEntrance == null ? null : risksWithEntrance!.toJson(),
        "concerns_with_door_locks": concernsWithDoorLocks == null
            ? null
            : concernsWithDoorLocks!.toJson(),
        "concerns_with_door_windows_locks": concernsWithDoorWindowsLocks == null
            ? null
            : concernsWithDoorWindowsLocks!.toJson(),
      };
}

class Cctv {
  Cctv({
    this.riskMitigated,
    this.riskWithCctv,
    this.locationOfCctv,
    this.additionalDetails,
    this.haveCctvInstalled,
  });

  String? riskMitigated;
  String? riskWithCctv;
  String? locationOfCctv;
  String? additionalDetails;
  String? haveCctvInstalled;

  factory Cctv.fromJson(Map<String, dynamic> json) => Cctv(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        riskWithCctv:
            json["risk_with_cctv"] == null ? null : json["risk_with_cctv"],
        locationOfCctv:
            json["location_of_cctv"] == null ? null : json["location_of_cctv"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        haveCctvInstalled: json["have_cctv_installed"] == null
            ? null
            : json["have_cctv_installed"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risk_with_cctv": riskWithCctv == null ? null : riskWithCctv,
        "location_of_cctv": locationOfCctv == null ? null : locationOfCctv,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "have_cctv_installed":
            haveCctvInstalled == null ? null : haveCctvInstalled,
      };
}

class ConcernsWithDoorLocks {
  ConcernsWithDoorLocks({
    this.additionalDetails,
    this.concernsWithDoorLocks,
  });

  String? additionalDetails;
  String? concernsWithDoorLocks;

  factory ConcernsWithDoorLocks.fromJson(Map<String, dynamic> json) =>
      ConcernsWithDoorLocks(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        concernsWithDoorLocks: json["concerns_with_door_locks"] == null
            ? null
            : json["concerns_with_door_locks"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "concerns_with_door_locks":
            concernsWithDoorLocks == null ? null : concernsWithDoorLocks,
      };
}

class ConcernsWithDoorWindowsLocks {
  ConcernsWithDoorWindowsLocks({
    this.additionalDetails,
    this.concernsWithDoorWindowsLocks,
  });

  String? additionalDetails;
  String? concernsWithDoorWindowsLocks;

  factory ConcernsWithDoorWindowsLocks.fromJson(Map<String, dynamic> json) =>
      ConcernsWithDoorWindowsLocks(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        concernsWithDoorWindowsLocks:
            json["concerns_with_door_windows_locks"] == null
                ? null
                : json["concerns_with_door_windows_locks"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "concerns_with_door_windows_locks": concernsWithDoorWindowsLocks == null
            ? null
            : concernsWithDoorWindowsLocks,
      };
}

class RisksWithEntrance {
  RisksWithEntrance({
    this.additionalDetails,
    this.risksWithEntrance,
  });

  String? additionalDetails;
  String? risksWithEntrance;

  factory RisksWithEntrance.fromJson(Map<String, dynamic> json) =>
      RisksWithEntrance(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        risksWithEntrance: json["risks_with_entrance"] == null
            ? null
            : json["risks_with_entrance"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risks_with_entrance":
            risksWithEntrance == null ? null : risksWithEntrance,
      };
}

class Sex {
  Sex({
    this.sex,
    this.addScore,
  });

  String? sex;
  String? addScore;

  factory Sex.fromJson(Map<String, dynamic> json) => Sex(
        sex: json["'sex'"] == null ? null : json["'sex'"],
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
      );

  Map<String, dynamic> toJson() => {
        "'sex'": sex == null ? null : sex,
        "'add_score'": addScore == null ? null : addScore,
      };
}

class Sight {
  Sight({
    this.sightSupport,
    this.sightImpairmentAdditionalDetail,
  });

  SightSupport? sightSupport;
  String? sightImpairmentAdditionalDetail;

  factory Sight.fromJson(Map<String, dynamic> json) => Sight(
        sightSupport: json["sight_support"] == null
            ? null
            : SightSupport.fromJson(json["sight_support"]),
        sightImpairmentAdditionalDetail:
            json["sight_impairment_additional_detail"] == null
                ? null
                : json["sight_impairment_additional_detail"],
      );

  Map<String, dynamic> toJson() => {
        "sight_support": sightSupport == null ? null : sightSupport!.toJson(),
        "sight_impairment_additional_detail":
            sightImpairmentAdditionalDetail == null
                ? null
                : sightImpairmentAdditionalDetail,
      };
}

class SightSupport {
  SightSupport({
    this.magnifiers,
    this.additionalSightSupport,
  });

  String? magnifiers;
  String? additionalSightSupport;

  factory SightSupport.fromJson(Map<String, dynamic> json) => SightSupport(
        magnifiers: json["magnifiers"] == null ? null : json["magnifiers"],
        additionalSightSupport: json["additional_sight_support"] == null
            ? null
            : json["additional_sight_support"],
      );

  Map<String, dynamic> toJson() => {
        "magnifiers": magnifiers == null ? null : magnifiers,
        "additional_sight_support":
            additionalSightSupport == null ? null : additionalSightSupport,
      };
}

class Skin {
  Skin({
    this.anyPressureSores,
    this.concernsAboutSkin,
  });

  AnyPressureSores? anyPressureSores;
  ConcernsAboutSkin? concernsAboutSkin;

  factory Skin.fromJson(Map<String, dynamic> json) => Skin(
        anyPressureSores: json["any_pressure_sores"] == null
            ? null
            : AnyPressureSores.fromJson(json["any_pressure_sores"]),
        concernsAboutSkin: json["concerns_about_skin"] == null
            ? null
            : ConcernsAboutSkin.fromJson(json["concerns_about_skin"]),
      );

  Map<String, dynamic> toJson() => {
        "any_pressure_sores":
            anyPressureSores == null ? null : anyPressureSores!.toJson(),
        "concerns_about_skin":
            concernsAboutSkin == null ? null : concernsAboutSkin!.toJson(),
      };
}

class AnyPressureSores {
  AnyPressureSores({
    this.additionDetails,
    this.anyPressureSores,
  });

  String? additionDetails;
  String? anyPressureSores;

  factory AnyPressureSores.fromJson(Map<String, dynamic> json) =>
      AnyPressureSores(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        anyPressureSores: json["any_pressure_sores"] == null
            ? null
            : json["any_pressure_sores"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "any_pressure_sores":
            anyPressureSores == null ? null : anyPressureSores,
      };
}

class ConcernsAboutSkin {
  ConcernsAboutSkin({
    this.additionDetails,
    this.concernsAboutSkin,
  });

  String? additionDetails;
  String? concernsAboutSkin;

  factory ConcernsAboutSkin.fromJson(Map<String, dynamic> json) =>
      ConcernsAboutSkin(
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        concernsAboutSkin: json["concerns_about_skin"] == null
            ? null
            : json["concerns_about_skin"],
      );

  Map<String, dynamic> toJson() => {
        "addition_details": additionDetails == null ? null : additionDetails,
        "concerns_about_skin":
            concernsAboutSkin == null ? null : concernsAboutSkin,
      };
}

class SkinType {
  SkinType({
    this.healthy,
    this.addScore,
    this.oedematous,
  });

  String? healthy;
  String? addScore;
  String? oedematous;

  factory SkinType.fromJson(Map<String, dynamic> json) => SkinType(
        healthy: json["'healthy'"] == null ? null : json["'healthy'"],
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        oedematous: json["'oedematous'"] == null ? null : json["'oedematous'"],
      );

  Map<String, dynamic> toJson() => {
        "'healthy'": healthy == null ? null : healthy,
        "'add_score'": addScore == null ? null : addScore,
        "'oedematous'": oedematous == null ? null : oedematous,
      };
}

class Speech {
  Speech({
    this.speechSupport,
    this.speechImpairmentAdditionalDetail,
  });

  SpeechSupport? speechSupport;
  String? speechImpairmentAdditionalDetail;

  factory Speech.fromJson(Map<String, dynamic> json) => Speech(
        speechSupport: json["speech_support"] == null
            ? null
            : SpeechSupport.fromJson(json["speech_support"]),
        speechImpairmentAdditionalDetail:
            json["speech_impairment_additional_detail"] == null
                ? null
                : json["speech_impairment_additional_detail"],
      );

  Map<String, dynamic> toJson() => {
        "speech_support":
            speechSupport == null ? null : speechSupport!.toJson(),
        "speech_impairment_additional_detail":
            speechImpairmentAdditionalDetail == null
                ? null
                : speechImpairmentAdditionalDetail,
      };
}

class SpeechSupport {
  SpeechSupport({
    this.signLanguage,
    this.additionalSpeechSupport,
    this.technologyBasedSpeechAids,
  });

  String? signLanguage;
  String? additionalSpeechSupport;
  String? technologyBasedSpeechAids;

  factory SpeechSupport.fromJson(Map<String, dynamic> json) => SpeechSupport(
        signLanguage:
            json["sign_language"] == null ? null : json["sign_language"],
        additionalSpeechSupport: json["additional_speech_support"] == null
            ? null
            : json["additional_speech_support"],
        technologyBasedSpeechAids: json["technology_based_speech_aids"] == null
            ? null
            : json["technology_based_speech_aids"],
      );

  Map<String, dynamic> toJson() => {
        "sign_language": signLanguage == null ? null : signLanguage,
        "additional_speech_support":
            additionalSpeechSupport == null ? null : additionalSpeechSupport,
        "technology_based_speech_aids": technologyBasedSpeechAids == null
            ? null
            : technologyBasedSpeechAids,
      };
}

class Storage {
  Storage({
    this.rubbish,
    this.medication,
  });

  Rubbish? rubbish;
  StorageMedication? medication;

  factory Storage.fromJson(Map<String, dynamic> json) => Storage(
        rubbish:
            json["rubbish"] == null ? null : Rubbish.fromJson(json["rubbish"]),
        medication: json["medication"] == null
            ? null
            : StorageMedication.fromJson(json["medication"]),
      );

  Map<String, dynamic> toJson() => {
        "rubbish": rubbish == null ? null : rubbish!.toJson(),
        "medication": medication == null ? null : medication!.toJson(),
      };
}

class StorageMedication {
  StorageMedication({
    this.riskMitigated,
    this.additionalDetails,
    this.riskWithMedication,
    this.medicationLocatedLocated,
  });

  String? riskMitigated;
  String? additionalDetails;
  String? riskWithMedication;
  String? medicationLocatedLocated;

  factory StorageMedication.fromJson(Map<String, dynamic> json) =>
      StorageMedication(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithMedication: json["risk_with_medication"] == null
            ? null
            : json["risk_with_medication"],
        medicationLocatedLocated: json["medication_located_located"] == null
            ? null
            : json["medication_located_located"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_medication":
            riskWithMedication == null ? null : riskWithMedication,
        "medication_located_located":
            medicationLocatedLocated == null ? null : medicationLocatedLocated,
      };
}

class Rubbish {
  Rubbish({
    this.riskMitigated,
    this.riskWithRubbish,
    this.additionalDetails,
    this.rubbishLocatedLocated,
  });

  String? riskMitigated;
  String? riskWithRubbish;
  String? additionalDetails;
  String? rubbishLocatedLocated;

  factory Rubbish.fromJson(Map<String, dynamic> json) => Rubbish(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        riskWithRubbish: json["risk_with_rubbish"] == null
            ? null
            : json["risk_with_rubbish"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        rubbishLocatedLocated: json["rubbish_located_located"] == null
            ? null
            : json["rubbish_located_located"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risk_with_rubbish": riskWithRubbish == null ? null : riskWithRubbish,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "rubbish_located_located":
            rubbishLocatedLocated == null ? null : rubbishLocatedLocated,
      };
}

class Storing {
  Storing({
    this.accessTheirOwnMedication,
    this.medicationStoredAppropriately,
  });

  AccessTheirOwnMedication? accessTheirOwnMedication;
  MedicationStoredAppropriately? medicationStoredAppropriately;

  factory Storing.fromJson(Map<String, dynamic> json) => Storing(
        accessTheirOwnMedication: json["access_their_own_medication"] == null
            ? null
            : AccessTheirOwnMedication.fromJson(
                json["access_their_own_medication"]),
        medicationStoredAppropriately:
            json["medication_stored_appropriately"] == null
                ? null
                : MedicationStoredAppropriately.fromJson(
                    json["medication_stored_appropriately"]),
      );

  Map<String, dynamic> toJson() => {
        "access_their_own_medication": accessTheirOwnMedication == null
            ? null
            : accessTheirOwnMedication!.toJson(),
        "medication_stored_appropriately": medicationStoredAppropriately == null
            ? null
            : medicationStoredAppropriately!.toJson(),
      };
}

class AccessTheirOwnMedication {
  AccessTheirOwnMedication({
    this.additionalDetails,
    this.accessTheirOwnMedication,
  });

  String? additionalDetails;
  String? accessTheirOwnMedication;

  factory AccessTheirOwnMedication.fromJson(Map<String, dynamic> json) =>
      AccessTheirOwnMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        accessTheirOwnMedication: json["access_their_own_medication"] == null
            ? null
            : json["access_their_own_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "access_their_own_medication":
            accessTheirOwnMedication == null ? null : accessTheirOwnMedication,
      };
}

class MedicationStoredAppropriately {
  MedicationStoredAppropriately({
    this.additionalDetails,
    this.whereMedicationLocated,
    this.doesStoreTheirMedication,
    this.medicationStoredAppropriately,
  });

  String? additionalDetails;
  String? whereMedicationLocated;
  String? doesStoreTheirMedication;
  String? medicationStoredAppropriately;

  factory MedicationStoredAppropriately.fromJson(Map<String, dynamic> json) =>
      MedicationStoredAppropriately(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        whereMedicationLocated: json["where_medication_located"] == null
            ? null
            : json["where_medication_located"],
        doesStoreTheirMedication: json["does_store_their_medication"] == null
            ? null
            : json["does_store_their_medication"],
        medicationStoredAppropriately:
            json["medication_stored_appropriately"] == null
                ? null
                : json["medication_stored_appropriately"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "where_medication_located":
            whereMedicationLocated == null ? null : whereMedicationLocated,
        "does_store_their_medication":
            doesStoreTheirMedication == null ? null : doesStoreTheirMedication,
        "medication_stored_appropriately": medicationStoredAppropriately == null
            ? null
            : medicationStoredAppropriately,
      };
}

class TissueMalnutrition {
  TissueMalnutrition({
    this.smoking,
    this.addScore,
    this.noneOfTheAbove,
    this.terminalCachexia,
  });

  String? smoking;
  String? addScore;
  String? noneOfTheAbove;
  String? terminalCachexia;

  factory TissueMalnutrition.fromJson(Map<String, dynamic> json) =>
      TissueMalnutrition(
        smoking: json["'smoking'"] == null ? null : json["'smoking'"],
        addScore: json["'add_score'"] == null ? null : json["'add_score'"],
        noneOfTheAbove: json["'none_of_the_above'"] == null
            ? null
            : json["'none_of_the_above'"],
        terminalCachexia: json["'terminal_cachexia'"] == null
            ? null
            : json["'terminal_cachexia'"],
      );

  Map<String, dynamic> toJson() => {
        "'smoking'": smoking == null ? null : smoking,
        "'add_score'": addScore == null ? null : addScore,
        "'none_of_the_above'": noneOfTheAbove == null ? null : noneOfTheAbove,
        "'terminal_cachexia'":
            terminalCachexia == null ? null : terminalCachexia,
      };
}

class Toilet {
  Toilet({
    this.canToiletThemself,
    this.haveControlOverBowels,
    this.haveControlOverBladder,
    this.needSupportWithFollowing,
  });

  CanToiletThemself? canToiletThemself;
  HaveControlOverBowels? haveControlOverBowels;
  HaveControlOverBladder? haveControlOverBladder;
  NeedSupportWithFollowing? needSupportWithFollowing;

  factory Toilet.fromJson(Map<String, dynamic> json) => Toilet(
        canToiletThemself: json["can_toilet_themself"] == null
            ? null
            : CanToiletThemself.fromJson(json["can_toilet_themself"]),
        haveControlOverBowels: json["have_control_over_bowels"] == null
            ? null
            : HaveControlOverBowels.fromJson(json["have_control_over_bowels"]),
        haveControlOverBladder: json["have_control_over_bladder"] == null
            ? null
            : HaveControlOverBladder.fromJson(
                json["have_control_over_bladder"]),
        needSupportWithFollowing: json["need_support_with_following"] == null
            ? null
            : NeedSupportWithFollowing.fromJson(
                json["need_support_with_following"]),
      );

  Map<String, dynamic> toJson() => {
        "can_toilet_themself":
            canToiletThemself == null ? null : canToiletThemself!.toJson(),
        "have_control_over_bowels": haveControlOverBowels == null
            ? null
            : haveControlOverBowels!.toJson(),
        "have_control_over_bladder": haveControlOverBladder == null
            ? null
            : haveControlOverBladder!.toJson(),
        "need_support_with_following": needSupportWithFollowing == null
            ? null
            : needSupportWithFollowing!.toJson(),
      };
}

class CanToiletThemself {
  CanToiletThemself({
    this.additionalDetails,
    this.canToiletThemself,
  });

  String? additionalDetails;
  String? canToiletThemself;

  factory CanToiletThemself.fromJson(Map<String, dynamic> json) =>
      CanToiletThemself(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        canToiletThemself: json["can_toilet_themself"] == null
            ? null
            : json["can_toilet_themself"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "can_toilet_themself":
            canToiletThemself == null ? null : canToiletThemself,
      };
}

class HaveControlOverBladder {
  HaveControlOverBladder({
    this.additionalDetails,
    this.haveControlOverBladder,
  });

  String? additionalDetails;
  String? haveControlOverBladder;

  factory HaveControlOverBladder.fromJson(Map<String, dynamic> json) =>
      HaveControlOverBladder(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        haveControlOverBladder: json["have_control_over_bladder"] == null
            ? null
            : json["have_control_over_bladder"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "have_control_over_bladder":
            haveControlOverBladder == null ? null : haveControlOverBladder,
      };
}

class HaveControlOverBowels {
  HaveControlOverBowels({
    this.additionalDetails,
    this.haveControlOverBowels,
  });

  String? additionalDetails;
  String? haveControlOverBowels;

  factory HaveControlOverBowels.fromJson(Map<String, dynamic> json) =>
      HaveControlOverBowels(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        haveControlOverBowels: json["have_control_over_bowels"] == null
            ? null
            : json["have_control_over_bowels"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "have_control_over_bowels":
            haveControlOverBowels == null ? null : haveControlOverBowels,
      };
}

class NeedSupportWithFollowing {
  NeedSupportWithFollowing({
    this.incontinencePad,
    this.additionalDetails,
  });

  String? incontinencePad;
  String? additionalDetails;

  factory NeedSupportWithFollowing.fromJson(Map<String, dynamic> json) =>
      NeedSupportWithFollowing(
        incontinencePad:
            json["incontinence pad"] == null ? null : json["incontinence pad"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "incontinence pad": incontinencePad == null ? null : incontinencePad,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class Transfers {
  Transfers({
    this.gettingInOutOfBed,
    this.transferToBathFromChair,
    this.transferToChairFromBath,
    this.additionalTransfersScenarios,
    this.transferToChairFromCommode,
    this.transferToCommodeFromChair,
  });

  PourAndMeasureLiquidsClass? gettingInOutOfBed;
  PourAndMeasureLiquidsClass? transferToBathFromChair;
  PourAndMeasureLiquidsClass? transferToChairFromBath;
  String? additionalTransfersScenarios;
  PourAndMeasureLiquidsClass? transferToChairFromCommode;
  PourAndMeasureLiquidsClass? transferToCommodeFromChair;

  factory Transfers.fromJson(Map<String, dynamic> json) => Transfers(
        gettingInOutOfBed: json["getting_in_out_of_bed"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["getting_in_out_of_bed"]),
        transferToBathFromChair: json["transfer_to_bath_from_chair"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["transfer_to_bath_from_chair"]),
        transferToChairFromBath: json["transfer_to_chair_from_bath"] == null
            ? null
            : PourAndMeasureLiquidsClass.fromJson(
                json["transfer_to_chair_from_bath"]),
        additionalTransfersScenarios:
            json["additional_transfers_scenarios"] == null
                ? null
                : json["additional_transfers_scenarios"],
        transferToChairFromCommode:
            json["transfer_to_chair_from_commode"] == null
                ? null
                : PourAndMeasureLiquidsClass.fromJson(
                    json["transfer_to_chair_from_commode"]),
        transferToCommodeFromChair:
            json["transfer_to_commode_from_chair"] == null
                ? null
                : PourAndMeasureLiquidsClass.fromJson(
                    json["transfer_to_commode_from_chair"]),
      );

  Map<String, dynamic> toJson() => {
        "getting_in_out_of_bed":
            gettingInOutOfBed == null ? null : gettingInOutOfBed!.toJson(),
        "transfer_to_bath_from_chair": transferToBathFromChair == null
            ? null
            : transferToBathFromChair!.toJson(),
        "transfer_to_chair_from_bath": transferToChairFromBath == null
            ? null
            : transferToChairFromBath!.toJson(),
        "additional_transfers_scenarios": additionalTransfersScenarios == null
            ? null
            : additionalTransfersScenarios,
        "transfer_to_chair_from_commode": transferToChairFromCommode == null
            ? null
            : transferToChairFromCommode!.toJson(),
        "transfer_to_commode_from_chair": transferToCommodeFromChair == null
            ? null
            : transferToCommodeFromChair!.toJson(),
      };
}

class TypesOfMedication {
  TypesOfMedication({
    this.haveInhalers,
    this.isOnInsulin,
    this.syringeDriver,
    this.havePegInSitu,
    this.takingAnyWarfarin,
    this.needGlucoseTesting,
    this.takingOralMedication,
    this.sideEffectsFromMedication,
    this.needsAssociatedWithMedication,
  });

  HaveInhalers? haveInhalers;
  IsOnInsulin? isOnInsulin;
  SyringeDriver? syringeDriver;
  HavePegInSitu? havePegInSitu;
  TakingAnyWarfarin? takingAnyWarfarin;
  NeedGlucoseTesting? needGlucoseTesting;
  TakingOralMedication? takingOralMedication;
  SideEffectsFromMedication? sideEffectsFromMedication;
  PourAndMeasureLiquidsClass? needsAssociatedWithMedication;

  factory TypesOfMedication.fromJson(Map<String, dynamic> json) =>
      TypesOfMedication(
        haveInhalers: json["have_inhalers"] == null
            ? null
            : HaveInhalers.fromJson(json["have_inhalers"]),
        isOnInsulin: json["is_on_insulin"] == null
            ? null
            : IsOnInsulin.fromJson(json["is_on_insulin"]),
        syringeDriver: json["syringe_driver"] == null
            ? null
            : SyringeDriver.fromJson(json["syringe_driver"]),
        havePegInSitu: json["have_PEG_in_situ"] == null
            ? null
            : HavePegInSitu.fromJson(json["have_PEG_in_situ"]),
        takingAnyWarfarin: json["taking_any_warfarin"] == null
            ? null
            : TakingAnyWarfarin.fromJson(json["taking_any_warfarin"]),
        needGlucoseTesting: json["need_glucose_testing"] == null
            ? null
            : NeedGlucoseTesting.fromJson(json["need_glucose_testing"]),
        takingOralMedication: json["taking_oral_medication"] == null
            ? null
            : TakingOralMedication.fromJson(json["taking_oral_medication"]),
        sideEffectsFromMedication: json["side_effects_from_medication"] == null
            ? null
            : SideEffectsFromMedication.fromJson(
                json["side_effects_from_medication"]),
        needsAssociatedWithMedication:
            json["needs_associated_with_medication"] == null
                ? null
                : PourAndMeasureLiquidsClass.fromJson(
                    json["needs_associated_with_medication"]),
      );

  Map<String, dynamic> toJson() => {
        "have_inhalers": haveInhalers == null ? null : haveInhalers!.toJson(),
        "is_on_insulin": isOnInsulin == null ? null : isOnInsulin!.toJson(),
        "syringe_driver":
            syringeDriver == null ? null : syringeDriver!.toJson(),
        "have_PEG_in_situ":
            havePegInSitu == null ? null : havePegInSitu!.toJson(),
        "taking_any_warfarin":
            takingAnyWarfarin == null ? null : takingAnyWarfarin!.toJson(),
        "need_glucose_testing":
            needGlucoseTesting == null ? null : needGlucoseTesting!.toJson(),
        "taking_oral_medication": takingOralMedication == null
            ? null
            : takingOralMedication!.toJson(),
        "side_effects_from_medication": sideEffectsFromMedication == null
            ? null
            : sideEffectsFromMedication!.toJson(),
        "needs_associated_with_medication":
            needsAssociatedWithMedication == null
                ? null
                : needsAssociatedWithMedication!.toJson(),
      };
}

class HaveInhalers {
  HaveInhalers({
    this.haveInhalers,
    this.additionalDetails,
  });

  String? haveInhalers;
  String? additionalDetails;

  factory HaveInhalers.fromJson(Map<String, dynamic> json) => HaveInhalers(
        haveInhalers:
            json["have_inhalers"] == null ? null : json["have_inhalers"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "have_inhalers": haveInhalers == null ? null : haveInhalers,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class HavePegInSitu {
  HavePegInSitu({
    this.havePegInSitu,
    this.additionalDetails,
  });

  String? havePegInSitu;
  String? additionalDetails;

  factory HavePegInSitu.fromJson(Map<String, dynamic> json) => HavePegInSitu(
        havePegInSitu:
            json["have_PEG_in_situ"] == null ? null : json["have_PEG_in_situ"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "have_PEG_in_situ": havePegInSitu == null ? null : havePegInSitu,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class IsOnInsulin {
  IsOnInsulin({
    this.isOnInsulin,
    this.additionalDetails,
  });

  String? isOnInsulin;
  String? additionalDetails;

  factory IsOnInsulin.fromJson(Map<String, dynamic> json) => IsOnInsulin(
        isOnInsulin:
            json["is_on_insulin"] == null ? null : json["is_on_insulin"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "is_on_insulin": isOnInsulin == null ? null : isOnInsulin,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class NeedGlucoseTesting {
  NeedGlucoseTesting({
    this.additionalDetails,
    this.needGlucoseTesting,
  });

  String? additionalDetails;
  String? needGlucoseTesting;

  factory NeedGlucoseTesting.fromJson(Map<String, dynamic> json) =>
      NeedGlucoseTesting(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        needGlucoseTesting: json["need_glucose_testing"] == null
            ? null
            : json["need_glucose_testing"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "need_glucose_testing":
            needGlucoseTesting == null ? null : needGlucoseTesting,
      };
}

class SideEffectsFromMedication {
  SideEffectsFromMedication({
    this.additionalDetails,
    this.sideEffectsFromMedication,
  });

  String? additionalDetails;
  String? sideEffectsFromMedication;

  factory SideEffectsFromMedication.fromJson(Map<String, dynamic> json) =>
      SideEffectsFromMedication(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        sideEffectsFromMedication: json["side_effects_from_medication"] == null
            ? null
            : json["side_effects_from_medication"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "side_effects_from_medication": sideEffectsFromMedication == null
            ? null
            : sideEffectsFromMedication,
      };
}

class SyringeDriver {
  SyringeDriver({
    this.syringeDriver,
    this.additionalDetails,
  });

  String? syringeDriver;
  String? additionalDetails;

  factory SyringeDriver.fromJson(Map<String, dynamic> json) => SyringeDriver(
        syringeDriver:
            json["syringe_driver"] == null ? null : json["syringe_driver"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "syringe_driver": syringeDriver == null ? null : syringeDriver,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class TakingAnyWarfarin {
  TakingAnyWarfarin({
    this.additionalDetails,
    this.takingAnyWarfarin,
  });

  String? additionalDetails;
  String? takingAnyWarfarin;

  factory TakingAnyWarfarin.fromJson(Map<String, dynamic> json) =>
      TakingAnyWarfarin(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        takingAnyWarfarin: json["taking_any_warfarin"] == null
            ? null
            : json["taking_any_warfarin"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "taking_any_warfarin":
            takingAnyWarfarin == null ? null : takingAnyWarfarin,
      };
}

class TakingOralMedication {
  TakingOralMedication({
    this.takingOralMedication,
  });

  String? takingOralMedication;

  factory TakingOralMedication.fromJson(Map<String, dynamic> json) =>
      TakingOralMedication(
        takingOralMedication: json["taking_oral_medication"] == null
            ? null
            : json["taking_oral_medication"],
      );

  Map<String, dynamic> toJson() => {
        "taking_oral_medication":
            takingOralMedication == null ? null : takingOralMedication,
      };
}

class Utilities {
  Utilities({
    this.gas,
    this.water,
    this.electricity,
  });

  Gas? gas;
  Water? water;
  Electricity? electricity;

  factory Utilities.fromJson(Map<String, dynamic> json) => Utilities(
        gas: json["gas"] == null ? null : Gas.fromJson(json["gas"]),
        water: json["water"] == null ? null : Water.fromJson(json["water"]),
        electricity: json["electricity"] == null
            ? null
            : Electricity.fromJson(json["electricity"]),
      );

  Map<String, dynamic> toJson() => {
        "gas": gas == null ? null : gas!.toJson(),
        "water": water == null ? null : water!.toJson(),
        "electricity": electricity == null ? null : electricity!.toJson(),
      };
}

class Electricity {
  Electricity({
    this.riskMitigated,
    this.electricityPoint,
    this.additionalDetails,
    this.riskWithElectricityCutOff,
  });

  String? riskMitigated;
  String? electricityPoint;
  String? additionalDetails;
  String? riskWithElectricityCutOff;

  factory Electricity.fromJson(Map<String, dynamic> json) => Electricity(
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        electricityPoint: json["electricity_point"] == null
            ? null
            : json["electricity_point"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithElectricityCutOff: json["risk_with_electricity_cut_off"] == null
            ? null
            : json["risk_with_electricity_cut_off"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "electricity_point": electricityPoint == null ? null : electricityPoint,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_electricity_cut_off": riskWithElectricityCutOff == null
            ? null
            : riskWithElectricityCutOff,
      };
}

class Gas {
  Gas({
    this.riskMitigated,
    this.gasCutOffPoint,
    this.additionalDetails,
    this.riskWithCutOffPoint,
  });

  dynamic riskMitigated;
  String? gasCutOffPoint;
  String? additionalDetails;
  String? riskWithCutOffPoint;

  factory Gas.fromJson(Map<String, dynamic> json) => Gas(
        riskMitigated: json["risk_mitigated"],
        gasCutOffPoint: json["gas_cut_off_point"] == null
            ? null
            : json["gas_cut_off_point"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        riskWithCutOffPoint: json["risk_with_cut_off_point"] == null
            ? null
            : json["risk_with_cut_off_point"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "gas_cut_off_point": gasCutOffPoint == null ? null : gasCutOffPoint,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risk_with_cut_off_point":
            riskWithCutOffPoint == null ? null : riskWithCutOffPoint,
      };
}

class Water {
  Water({
    this.riskMitigated,
    this.additionalDetails,
    this.waterCutOffPoint,
    this.riskWithWaterCutOff,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? waterCutOffPoint;
  String? riskWithWaterCutOff;

  factory Water.fromJson(Map<String, dynamic> json) => Water(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        waterCutOffPoint: json["water_cut_off_point"] == null
            ? null
            : json["water_cut_off_point"],
        riskWithWaterCutOff: json["risk_with_water_cut_off"] == null
            ? null
            : json["risk_with_water_cut_off"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "water_cut_off_point":
            waterCutOffPoint == null ? null : waterCutOffPoint,
        "risk_with_water_cut_off":
            riskWithWaterCutOff == null ? null : riskWithWaterCutOff,
      };
}

class VisitorsAndPets {
  VisitorsAndPets({
    this.petsOwned,
    this.riskMitigated,
    this.risksWithPets,
    this.petsInProperty,
    this.risksWithOtherResidents,
  });

  PetsOwned? petsOwned;
  String? riskMitigated;
  String? risksWithPets;
  String? petsInProperty;
  RisksWithOtherResidents? risksWithOtherResidents;

  factory VisitorsAndPets.fromJson(Map<String, dynamic> json) =>
      VisitorsAndPets(
        petsOwned: json["pets_owned"] == null
            ? null
            : PetsOwned.fromJson(json["pets_owned"]),
        riskMitigated:
            json["risk_mitigated"] == null ? null : json["risk_mitigated"],
        risksWithPets:
            json["risks_with_pets"] == null ? null : json["risks_with_pets"],
        petsInProperty:
            json["pets_in_property"] == null ? null : json["pets_in_property"],
        risksWithOtherResidents: json["risks_with_other_residents"] == null
            ? null
            : RisksWithOtherResidents.fromJson(
                json["risks_with_other_residents"]),
      );

  Map<String, dynamic> toJson() => {
        "pets_owned": petsOwned == null ? null : petsOwned!.toJson(),
        "risk_mitigated": riskMitigated == null ? null : riskMitigated,
        "risks_with_pets": risksWithPets == null ? null : risksWithPets,
        "pets_in_property": petsInProperty == null ? null : petsInProperty,
        "risks_with_other_residents": risksWithOtherResidents == null
            ? null
            : risksWithOtherResidents!.toJson(),
      };
}

class PetsOwned {
  PetsOwned({
    this.bird,
  });

  String? bird;

  factory PetsOwned.fromJson(Map<String, dynamic> json) => PetsOwned(
        bird: json["bird"] == null ? null : json["bird"],
      );

  Map<String, dynamic> toJson() => {
        "bird": bird == null ? null : bird,
      };
}

class RisksWithOtherResidents {
  RisksWithOtherResidents({
    this.riskMitigated,
    this.additionalDetails,
    this.risksWithOtherResidents,
  });

  dynamic riskMitigated;
  String? additionalDetails;
  String? risksWithOtherResidents;

  factory RisksWithOtherResidents.fromJson(Map<String, dynamic> json) =>
      RisksWithOtherResidents(
        riskMitigated: json["risk_mitigated"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        risksWithOtherResidents: json["risks_with_other_residents"] == null
            ? null
            : json["risks_with_other_residents"],
      );

  Map<String, dynamic> toJson() => {
        "risk_mitigated": riskMitigated,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "risks_with_other_residents":
            risksWithOtherResidents == null ? null : risksWithOtherResidents,
      };
}

class Will {
  Will({
    this.haveWill,
    this.additionDetails,
    this.whereWillIsKept,
  });

  String? haveWill;
  String? additionDetails;
  String? whereWillIsKept;

  factory Will.fromJson(Map<String, dynamic> json) => Will(
        haveWill: json["have_will"] == null ? null : json["have_will"],
        additionDetails:
            json["addition_details"] == null ? null : json["addition_details"],
        whereWillIsKept: json["where_will_is_kept"] == null
            ? null
            : json["where_will_is_kept"],
      );

  Map<String, dynamic> toJson() => {
        "have_will": haveWill == null ? null : haveWill,
        "addition_details": additionDetails == null ? null : additionDetails,
        "where_will_is_kept": whereWillIsKept == null ? null : whereWillIsKept,
      };
}

class WorkingEnviroment {
  WorkingEnviroment({
    this.spaceConstraints,
    this.additionalDetails,
    this.problemsWithFloor,
    this.sufficientLighting,
    this.bedOrChairLowToGround,
  });

  SpaceConstraints? spaceConstraints;
  String? additionalDetails;
  ProblemsWithFloor? problemsWithFloor;
  SufficientLighting? sufficientLighting;
  BedOrChairLowToGround? bedOrChairLowToGround;

  factory WorkingEnviroment.fromJson(Map<String, dynamic> json) =>
      WorkingEnviroment(
        spaceConstraints: json["space_constraints"] == null
            ? null
            : SpaceConstraints.fromJson(json["space_constraints"]),
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        problemsWithFloor: json["problems_with_floor"] == null
            ? null
            : ProblemsWithFloor.fromJson(json["problems_with_floor"]),
        sufficientLighting: json["sufficient_lighting"] == null
            ? null
            : SufficientLighting.fromJson(json["sufficient_lighting"]),
        bedOrChairLowToGround: json["bed_or_chair_low_to_ground"] == null
            ? null
            : BedOrChairLowToGround.fromJson(
                json["bed_or_chair_low_to_ground"]),
      );

  Map<String, dynamic> toJson() => {
        "space_constraints":
            spaceConstraints == null ? null : spaceConstraints!.toJson(),
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "problems_with_floor":
            problemsWithFloor == null ? null : problemsWithFloor!.toJson(),
        "sufficient_lighting":
            sufficientLighting == null ? null : sufficientLighting!.toJson(),
        "bed_or_chair_low_to_ground": bedOrChairLowToGround == null
            ? null
            : bedOrChairLowToGround!.toJson(),
      };
}

class BedOrChairLowToGround {
  BedOrChairLowToGround({
    this.additionalDetails,
    this.bedOrChairLowToGround,
  });

  String? additionalDetails;
  String? bedOrChairLowToGround;

  factory BedOrChairLowToGround.fromJson(Map<String, dynamic> json) =>
      BedOrChairLowToGround(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        bedOrChairLowToGround: json["bed_or_chair_low_to_ground"] == null
            ? null
            : json["bed_or_chair_low_to_ground"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "bed_or_chair_low_to_ground":
            bedOrChairLowToGround == null ? null : bedOrChairLowToGround,
      };
}

class ProblemsWithFloor {
  ProblemsWithFloor({
    this.additionalDetails,
    this.problemsWithFloor,
  });

  String? additionalDetails;
  String? problemsWithFloor;

  factory ProblemsWithFloor.fromJson(Map<String, dynamic> json) =>
      ProblemsWithFloor(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        problemsWithFloor: json["problems_with_floor"] == null
            ? null
            : json["problems_with_floor"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "problems_with_floor":
            problemsWithFloor == null ? null : problemsWithFloor,
      };
}

class SpaceConstraints {
  SpaceConstraints({
    this.spaceConstraints,
    this.additionalDetails,
  });

  String? spaceConstraints;
  String? additionalDetails;

  factory SpaceConstraints.fromJson(Map<String, dynamic> json) =>
      SpaceConstraints(
        spaceConstraints: json["space_constraints"] == null
            ? null
            : json["space_constraints"],
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
      );

  Map<String, dynamic> toJson() => {
        "space_constraints": spaceConstraints == null ? null : spaceConstraints,
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
      };
}

class SufficientLighting {
  SufficientLighting({
    this.additionalDetails,
    this.sufficientLighting,
  });

  String? additionalDetails;
  String? sufficientLighting;

  factory SufficientLighting.fromJson(Map<String, dynamic> json) =>
      SufficientLighting(
        additionalDetails: json["additional_details"] == null
            ? null
            : json["additional_details"],
        sufficientLighting: json["sufficient_lighting"] == null
            ? null
            : json["sufficient_lighting"],
      );

  Map<String, dynamic> toJson() => {
        "additional_details":
            additionalDetails == null ? null : additionalDetails,
        "sufficient_lighting":
            sufficientLighting == null ? null : sufficientLighting,
      };
}

class CareplanModuleId {
  CareplanModuleId({
    this.id,
    this.name,
  });

  int? id;
  String? name;

  factory CareplanModuleId.fromJson(Map<String, dynamic> json) =>
      CareplanModuleId(
        id: json["id"] == null ? null : json["id"],
        name: json["name"] == null ? null : json["name"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "name": name == null ? null : name,
      };
}

class CareplanDocument {
  CareplanDocument({
    this.id,
    this.clientId,
    this.document,
    this.type,
  });

  int? id;
  int? clientId;
  String? document;
  String? type;

  factory CareplanDocument.fromJson(Map<String, dynamic> json) =>
      CareplanDocument(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        document: json["document"] == null ? null : json["document"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "document": document == null ? null : document,
        "type": type == null ? null : type,
      };
}

class CareplanRisk {
  CareplanRisk({
    this.id,
    this.clientId,
    this.createdBy,
    this.careplanModuleId,
    this.risk,
    this.mitigation,
    this.riskLevel,
  });

  int? id;
  int? clientId;
  int? createdBy;
  CareplanModuleId? careplanModuleId;
  String? risk;
  String? mitigation;
  String? riskLevel;

  factory CareplanRisk.fromJson(Map<String, dynamic> json) => CareplanRisk(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        careplanModuleId: json["careplanModuleId"] == null
            ? null
            : CareplanModuleId.fromJson(json["careplanModuleId"]),
        risk: json["risk"] == null ? null : json["risk"],
        mitigation: json["mitigation"] == null ? null : json["mitigation"],
        riskLevel: json["riskLevel"] == null ? null : json["riskLevel"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "createdBy": createdBy == null ? null : createdBy,
        "careplanModuleId":
            careplanModuleId == null ? null : careplanModuleId!.toJson(),
        "risk": risk == null ? null : risk,
        "mitigation": mitigation == null ? null : mitigation,
        "riskLevel": riskLevel == null ? null : riskLevel,
      };
}

class CareplanSummaryAndOutCome {
  CareplanSummaryAndOutCome({
    this.id,
    this.clientId,
    this.createdBy,
    this.careplanModuleId,
    this.summary,
  });

  int? id;
  int? clientId;
  int? createdBy;
  CareplanModuleId? careplanModuleId;
  String? summary;

  factory CareplanSummaryAndOutCome.fromJson(Map<String, dynamic> json) =>
      CareplanSummaryAndOutCome(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        careplanModuleId: json["careplanModuleId"] == null
            ? null
            : CareplanModuleId.fromJson(json["careplanModuleId"]),
        summary: json["summary"] == null ? null : json["summary"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "createdBy": createdBy == null ? null : createdBy,
        "careplanModuleId":
            careplanModuleId == null ? null : careplanModuleId!.toJson(),
        "summary": summary == null ? null : summary,
      };
}

class CareplanTask {
  CareplanTask({
    this.id,
    this.clientId,
    this.createdBy,
    this.careplanModuleId,
    this.taskId,
    this.note,
    this.days,
    this.times,
  });

  int? id;
  int? clientId;
  int? createdBy;
  CareplanModuleId? careplanModuleId;
  TaskId? taskId;
  String? note;
  String? days;
  String? times;

  factory CareplanTask.fromJson(Map<String, dynamic> json) => CareplanTask(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        createdBy: json["createdBy"] == null ? null : json["createdBy"],
        careplanModuleId: json["careplanModuleId"] == null
            ? null
            : CareplanModuleId.fromJson(json["careplanModuleId"]),
        taskId: json["taskId"] == null ? null : TaskId.fromJson(json["taskId"]),
        note: json["note"] == null ? null : json["note"],
        days: json["days"] == null ? null : json["days"],
        times: json["times"] == null ? null : json["times"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "createdBy": createdBy == null ? null : createdBy,
        "careplanModuleId":
            careplanModuleId == null ? null : careplanModuleId!.toJson(),
        "taskId": taskId == null ? null : taskId!.toJson(),
        "note": note == null ? null : note,
        "days": days == null ? null : days,
        "times": times == null ? null : times,
      };
}

class TaskId {
  TaskId({
    this.id,
    this.title,
    this.description,
    this.type,
  });

  int? id;
  String? title;
  String? description;
  String? type;

  factory TaskId.fromJson(Map<String, dynamic> json) => TaskId(
        id: json["id"] == null ? null : json["id"],
        title: json["title"] == null ? null : json["title"],
        description: json["description"] == null ? null : json["description"],
        type: json["type"] == null ? null : json["type"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "title": title == null ? null : title,
        "description": description == null ? null : description,
        "type": type == null ? null : type,
      };
}

class ClientContact {
  ClientContact({
    this.id,
    this.clientId,
    this.firstName,
    this.lastName,
    this.relationship,
    this.phoneNumber,
    this.email,
    this.typeOfContact,
    this.generalCareMatters,
  });

  int? id;
  int? clientId;
  String? firstName;
  String? lastName;
  String? relationship;
  String? phoneNumber;
  String? email;
  String? typeOfContact;
  String? generalCareMatters;

  factory ClientContact.fromJson(Map<String, dynamic> json) => ClientContact(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        firstName: json["firstName"] == null ? null : json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        relationship:
            json["relationship"] == null ? null : json["relationship"],
        phoneNumber: json["phoneNumber"] == null ? null : json["phoneNumber"],
        email: json["email"] == null ? null : json["email"],
        typeOfContact:
            json["typeOfContact"] == null ? null : json["typeOfContact"],
        generalCareMatters: json["generalCareMatters"] == null
            ? null
            : json["generalCareMatters"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "relationship": relationship == null ? null : relationship,
        "phoneNumber": phoneNumber == null ? null : phoneNumber,
        "email": email == null ? null : email,
        "typeOfContact": typeOfContact == null ? null : typeOfContact,
        "generalCareMatters":
            generalCareMatters == null ? null : generalCareMatters,
      };
}

class ClinicalDetails {
  ClinicalDetails({
    this.nhs,
    this.medicalHistory,
    this.medicineSupport,
  });

  String? nhs;
  String? medicalHistory;
  String? medicineSupport;

  factory ClinicalDetails.fromJson(Map<String, dynamic> json) =>
      ClinicalDetails(
        nhs: json["nhs"] == null ? null : json["nhs"],
        medicalHistory:
            json["medicalHistory"] == null ? null : json["medicalHistory"],
        medicineSupport:
            json["medicineSupport"] == null ? null : json["medicineSupport"],
      );

  Map<String, dynamic> toJson() => {
        "nhs": nhs == null ? null : nhs,
        "medicalHistory": medicalHistory == null ? null : medicalHistory,
        "medicineSupport": medicineSupport == null ? null : medicineSupport,
      };
}

class FuturePlans {
  FuturePlans({
    this.id,
    this.clientId,
    this.support,
    this.healthAndWelfare,
    this.propertyAndFinancialAffairs,
    this.dnacpr,
    this.adrt,
    this.respect,
  });

  int? id;
  int? clientId;
  String? support;
  String? healthAndWelfare;
  String? propertyAndFinancialAffairs;
  String? dnacpr;
  String? adrt;
  String? respect;

  factory FuturePlans.fromJson(Map<String, dynamic> json) => FuturePlans(
        id: json["id"] == null ? null : json["id"],
        clientId: json["clientId"] == null ? null : json["clientId"],
        support: json["support"] == null ? null : json["support"],
        healthAndWelfare:
            json["HealthAndWelfare"] == null ? null : json["HealthAndWelfare"],
        propertyAndFinancialAffairs: json["PropertyAndFinancialAffairs"] == null
            ? null
            : json["PropertyAndFinancialAffairs"],
        dnacpr: json["DNACPR"] == null ? null : json["DNACPR"],
        adrt: json["ADRT"] == null ? null : json["ADRT"],
        respect: json["respect"] == null ? null : json["respect"],
      );

  Map<String, dynamic> toJson() => {
        "id": id == null ? null : id,
        "clientId": clientId == null ? null : clientId,
        "support": support == null ? null : support,
        "HealthAndWelfare": healthAndWelfare == null ? null : healthAndWelfare,
        "PropertyAndFinancialAffairs": propertyAndFinancialAffairs == null
            ? null
            : propertyAndFinancialAffairs,
        "DNACPR": dnacpr == null ? null : dnacpr,
        "ADRT": adrt == null ? null : adrt,
        "respect": respect == null ? null : respect,
      };
}

class PersonalDetails {
  PersonalDetails({
    this.firstName,
    this.lastName,
    this.preferredName,
    this.prefersReferred,
    this.dob,
    this.radius,
    this.phone,
    this.address,
    this.addressApt,
    this.addressCountry,
    this.addressLocality,
    this.addressState,
    this.addressZip,
    this.latLong,
    this.status,
    this.highlights,
  });

  String? firstName;
  String? lastName;
  dynamic preferredName;
  String? prefersReferred;
  DateTime? dob;
  int? radius;
  String? phone;
  String? address;
  dynamic addressApt;
  String? addressCountry;
  String? addressLocality;
  String? addressState;
  dynamic addressZip;
  String? latLong;
  int? status;
  String? highlights;

  factory PersonalDetails.fromJson(Map<String, dynamic> json) =>
      PersonalDetails(
        firstName: json["firstName"] == null ? null : json["firstName"],
        lastName: json["lastName"] == null ? null : json["lastName"],
        preferredName: json["preferredName"],
        prefersReferred:
            json["prefersReferred"] == null ? null : json["prefersReferred"],
        dob: json["dob"] == null ? null : DateTime.parse(json["dob"]),
        radius: json["radius"] == null ? null : json["radius"],
        phone: json["phone"] == null ? null : json["phone"],
        address: json["address"] == null ? null : json["address"],
        addressApt: json["addressApt"],
        addressCountry:
            json["addressCountry"] == null ? null : json["addressCountry"],
        addressLocality:
            json["addressLocality"] == null ? null : json["addressLocality"],
        addressState:
            json["addressState"] == null ? null : json["addressState"],
        addressZip: json["addressZip"],
        latLong: json["latLong"] == null ? null : json["latLong"],
        status: json["status"] == null ? null : json["status"],
        highlights: json["highlights"] == null ? null : json["highlights"],
      );

  Map<String, dynamic> toJson() => {
        "firstName": firstName == null ? null : firstName,
        "lastName": lastName == null ? null : lastName,
        "preferredName": preferredName,
        "prefersReferred": prefersReferred == null ? null : prefersReferred,
        "dob": dob == null
            ? null
            : "${dob!.year.toString().padLeft(4, '0')}-${dob!.month.toString().padLeft(2, '0')}-${dob!.day.toString().padLeft(2, '0')}",
        "radius": radius == null ? null : radius,
        "phone": phone == null ? null : phone,
        "address": address == null ? null : address,
        "addressApt": addressApt,
        "addressCountry": addressCountry == null ? null : addressCountry,
        "addressLocality": addressLocality == null ? null : addressLocality,
        "addressState": addressState == null ? null : addressState,
        "addressZip": addressZip,
        "latLong": latLong == null ? null : latLong,
        "status": status == null ? null : status,
        "highlights": highlights == null ? null : highlights,
      };
}

class PersonalIdentity {
  PersonalIdentity({
    this.ethnicity,
    this.religion,
  });

  String? ethnicity;
  String? religion;

  factory PersonalIdentity.fromJson(Map<String, dynamic> json) =>
      PersonalIdentity(
        ethnicity: json["ethnicity"] == null ? null : json["ethnicity"],
        religion: json["religion"] == null ? null : json["religion"],
      );

  Map<String, dynamic> toJson() => {
        "ethnicity": ethnicity == null ? null : ethnicity,
        "religion": religion == null ? null : religion,
      };
}

class Pagination {
  Pagination({
    this.total,
    this.count,
    this.perPage,
    this.currentPage,
    this.totalPages,
  });

  int? total;
  int? count;
  int? perPage;
  int? currentPage;
  int? totalPages;

  factory Pagination.fromJson(Map<String, dynamic> json) => Pagination(
        total: json["total"] == null ? null : json["total"],
        count: json["count"] == null ? null : json["count"],
        perPage: json["per_page"] == null ? null : json["per_page"],
        currentPage: json["current_page"] == null ? null : json["current_page"],
        totalPages: json["total_pages"] == null ? null : json["total_pages"],
      );

  Map<String, dynamic> toJson() => {
        "total": total == null ? null : total,
        "count": count == null ? null : count,
        "per_page": perPage == null ? null : perPage,
        "current_page": currentPage == null ? null : currentPage,
        "total_pages": totalPages == null ? null : totalPages,
      };
}
