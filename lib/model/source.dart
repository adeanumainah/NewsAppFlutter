
class Source {
  Source({
    this.id,
    this.name,
  });

  //kasi nullable krenan datnya ad yg null
  String? id;
  String? name;

  factory Source.fromJson(Map<String, dynamic> json) => Source(
    id: json["id"],
    name: json["name"],
  );

}