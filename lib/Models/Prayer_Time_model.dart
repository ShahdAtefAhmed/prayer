class Prayer_Time_model {
  Map<String, dynamic>data;

  Prayer_Time_model({
    required this.data,
  });

  factory Prayer_Time_model.fromjson(Map<String,dynamic>json)
  {
    return Prayer_Time_model(
      data: json['data']['timings'],
    );
  }
}