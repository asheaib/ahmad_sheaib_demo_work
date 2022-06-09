class Rating {

  double ?rate;
  int ?count;


  Rating({required this.rate , required this.count});

  Rating.fromJson(Map<String,dynamic>json) {
    rate = json['rate'].toDouble();
    count = json['count'];
  }

}