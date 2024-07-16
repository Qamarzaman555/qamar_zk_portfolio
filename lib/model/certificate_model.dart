class CertificateModel {
  final String name;
  final String organization;
  final String date;
  final String skills;
  final String? credential;

  CertificateModel({
    required this.name,
    required this.organization,
    required this.date,
    required this.skills,
    this.credential,
  });
}

List<CertificateModel> certificateList = [
  CertificateModel(
    name: 'Final Year Project',
    organization: 'The University of Lahore',
    date: ' 1 Year',
    skills: 'Flutter . Dart . Firebase . Provider . Android . Web',
  ),
  CertificateModel(
    name: 'Flutter Intern',
    organization: 'CHI Technologies',
    date: 'Oct 2023 - April 2024',
    skills:
        'Flutter . Android Development . Web Development . Stacked . RestApi . Firebase . Responsiveness . Swagger . Docker ',
    credential:
        'https://www.linkedin.com/learning/certificates/450fc4e2f495726aea50a067caf586869ccf0cb92ebcc5a4c7b5648a95754a8f',
  ),
  CertificateModel(
    name: 'Flutter Intern',
    organization: 'CodersCave',
    date: '1 month',
    skills: 'Flutter . Dart . Firebase . RestApi . Notifications',
    credential:
        'https://www.udemy.com/certificate/UC-5b01c756-0d20-4342-94e6-9d5860d1c95e/',
  ),
];
