class Project {
  String name;
  String desc;
  String imgURL;
  int year;
  List<String>? techUsed;
  Project(
      {required this.name,
      required this.desc,
      required this.imgURL,
      required this.year,
      this.techUsed});
}
