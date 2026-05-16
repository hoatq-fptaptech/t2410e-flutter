class Category {
  String slug="";
  String name="";
  String url="";

  Category({required this.slug,required this.name,required this.url});

  Category.fromJson(Map<String, dynamic> json) {
    slug = json['slug']??"";
    name = json['name']??"";
    url = json['url']??"";
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['slug'] = slug;
    data['name'] = name;
    data['url'] = url;
    return data;
  }
}