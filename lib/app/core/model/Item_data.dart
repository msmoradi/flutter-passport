class ItemData {
  String title;
  String description;
  String location;
  String company;
  String icon;
  String color;
  String backgroundItem;

  ItemData({
    this.title = "",
    this.description = "",
    this.location = "",
    this.company = "",
    this.icon = "",
    this.color = "",
    this.backgroundItem = "",
  });

  ItemData.fromJson(dynamic json)
      : title = json['name'],
        description = json['details'],
        location = 'ترکیه - استانبول',
        icon = json['icon'],
        color = json['color'],
        backgroundItem = json['background_item'],
        company = 'ترکیه رهیاب';
}
