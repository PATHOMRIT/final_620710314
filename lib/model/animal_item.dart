class AnimalItem {
  final String image;
  final String ans;
  final List<String> choices;

  AnimalItem({
    required this.image,
    required this.ans,
    required this.choices,
  });

  factory AnimalItem.fromJson(Map<String, dynamic> json) {
    return AnimalItem(   
      image: json['image'],
      ans: json['name'],
      choices: List<String>.from(json['Choices']),
    );
  }
}
