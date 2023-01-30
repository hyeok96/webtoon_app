class WebttonModel {
  final String title, thumb, id;

  WebttonModel.fromJson(Map<String, dynamic> json)
      : title = json['title'],
        thumb = json['thumb'],
        id = json['id'];
}
