class IntroModel {
  final String imageUrl;
  final String text;
  IntroModel({required this.imageUrl, required this.text});
}
final List<IntroModel> introListDoctor = [
  IntroModel(
    imageUrl: 'assets/images/intro_doctor1.svg',
    text: 'Early detection of skin cancer by Skin Checker app',
  ),
  IntroModel(
    imageUrl: 'assets/images/intro_doctor2.svg',
    text: 'Determine if the tumor is benign or malignant electronically',
  ),
];

final List<IntroModel> introListPatient = [
  IntroModel(
    imageUrl: 'assets/images/intro_patient1.svg',
    text: 'Talk to your doctor and follow up on your condition',
  ),
  IntroModel(
    imageUrl: 'assets/images/intro_patient2.svg',
    text: 'Determine if the tumor is benign or malignant electronically',
  ),
];