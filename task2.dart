void main() {
  //Factory Constructor Example
  final Map<String, dynamic> sampleJson = {
    'CoreTeamName': 'Antonius Wisnu',
    'CoreTeamFaculty': 'SV',
    'CoreTeamYear': '2021',
    'CoreTeamRole': 'Hacker',
  };

  final CoreTeam coreTeam = CoreTeam.fromJson(sampleJson);
  print(coreTeam.toString());
}

class CoreTeam {
  String name, faculty, year, role;

  CoreTeam(
      {required this.name,
      required this.faculty,
      required this.year,
      required this.role});

  factory CoreTeam.fromJson(Map<String, dynamic> json) {
    return CoreTeam(
      name: json["CoreTeamName"],
      faculty: json["CoreTeamFaculty"],
      year: json["CoreTeamYear"],
      role: json["CoreTeamRole"],
    );
  }

  String toString() {
    return 'CoreTeam(name: $name, faculty: $faculty, year: $year, role: $role)';
  }
}
