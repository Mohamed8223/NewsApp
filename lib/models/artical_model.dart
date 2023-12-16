class ArticalModel{
  final String? image;
  final String? title;
  final String? subtitle;

  ArticalModel({required this.image,required this.title,required this.subtitle});

  factory ArticalModel.fromJson(json){
    return ArticalModel( image: json['urlToImage'],
        title: json['title'],
        subtitle: json['description']);
  }

}