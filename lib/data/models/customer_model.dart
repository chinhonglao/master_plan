class CustomerResModel {
  final String id;
  final String name;
  final String contactName;
  final String contactNumber;
  final List<String> projects;

  CustomerResModel({
    required this.id,
    required this.name,
    required this.contactName,
    required this.contactNumber,
    required this.projects,
  });
}
