class Travel {
  String title;
  String date;
  String image;
  String description;

  Travel(this.title, this.date, this.image, this.description);

  String getTitle() => this.title;
  String getDate() => this.date;
  String getImage() => this.image;
  String getDescription() => this.description;

  void setTitle(String title) {
    this.title = title;
  }

  void setDate(String date) {
    this.date = date;
  }

  void setImage(String image) {
    this.image = image;
  }

  void setDescription(String descriptoin) {
    this.description = descriptoin;
  }
}
