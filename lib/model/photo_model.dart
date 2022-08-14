class Photo {
  int? albymId;
  int? id;
  String? title;
  String? url;
  String? thumbnailUrl;
  Photo({
    this.albymId,
    this.id,
    this.title,
    this.url,
    this.thumbnailUrl,
  });

  factory Photo.fromJson(Map<String, dynamic> json) {
    return Photo(
      albymId: json['albymId'],
      id: json['id'],
      title: json['title'],
      url: json['url'],
      thumbnailUrl: json['thumbnailUrl'],
    );
  }
}
