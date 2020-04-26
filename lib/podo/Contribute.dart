class Contribute {
  String img;
  String goods;
  String pcs;
  String name;

  Contribute(
      {this.img,
        this.goods,
        this.pcs,
        this.name}
        );

  Contribute.fromJson(Map<String, dynamic> json) {
    goods = json['goods'];
    img = json['img'];
     img = json['pcs'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['img'] = this.img;
    data['goods'] = this.goods;
     data['pcs'] = this.name;
     data['name'] = this.name;
    return data;
  }
}