class Adopted {
  final String name;
  final String jeniskelamin;
  final String umur;
  final String gambar;
  final String id;

  Adopted({
    required this.name,
    required this.jeniskelamin,
    required this.umur,
    required this.gambar,
    required this.id,
  });

  factory Adopted.fromJson(Map<String, dynamic> json) {
    return Adopted(
        name: json['name'],
        jeniskelamin: json['jenisKelamin'],
        umur: json['umur'],
        gambar: json['gambar'],
        id: json['id']);
  }
}
