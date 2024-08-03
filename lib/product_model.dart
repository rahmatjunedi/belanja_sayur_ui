// ignore_for_file: public_member_api_docs, sort_constructors_first
class Product {
  final String title;
  final String description;
  final String image;
  final String price;
  const Product({
    required this.title,
    required this.description,
    required this.image,
    required this.price,
  });
}

final List<Product> buah = [
  Product(
      title: "Tomat",
      description:
          "Tomat merupakan buah yang memilki warna merah menarik serta kaya akan kandungan vitamin seperti vitamin C. Maka tidak salah kalau tomat sangat bermanfaat menjaga sistem imun tubuh",
      image: "images/tomat.jpg",
      price: "Rp. 15.000"),
  Product(
      title: "Wortel",
      description:
          "Selain berperan penting dalam menjaga penglihatan, kandungan vitamin A pada wortel juga dapat mencegah munculnya berbagai masalah kesehatan mata karena defisiensi vitamin A, seperti xeroftalmia.",
      image: "images/cabe.jpg",
      price: "Rp. 35.000")
];

final List<Product> sayur = [
  Product(
      title: "toge",
      description:
          "Toge membantu meningkatkan pencernaan dengan enzimnya yang mendukung proses metabolisme. Serat yang terkandung dalam toge juga membantu regulasi pencernaan dengan meningkatkan proses penyerapan nutrisi oleh saluran pencernaan.",
      image: "images/toge.jpg",
      price: "Rp. 45.000"),
  Product(
      title: "Jamur",
      description:
          "Memperkuat sistem imun tubuh; Meningkatkan kesehatan kognit; Menurunkan risiko kanker; dapat mengontrol kadar gula darah",
      image: "images/jamur.jpeg",
      price: "Rp. 35.000")
];

final List<Product> sayuranhujau = [
  Product(
      title: "Sawi hijau",
      description:
          "Dalam kelompok sayuran berdaun gelap, sawi menonjol sebagai sumber serat, mineral, vitamin, dan fitonutrien yang krusial untuk menjaga kesehatan tubuh. Meskipun rendah kalori, sawi tetap kaya akan mikronutrien seperti vitamin A, C, dan K, serta mineral seperti kalsium dan mangan",
      image: "images/sawi1.jpg",
      price: "Rp. 45.000"),
  Product(
      title: "Sawi",
      description:
          "Kandungan serat dalam sawi hijau membantu menjaga kesehatan pencernaan, menurunkan risiko penyakit usus besar, wasir, dan sembelit, serta menurunkan kadar kolesterol dan tekanan darah.",
      image: "images/sawi.jpg",
      price: "Rp. 35.000")
];

final List<Product> baahpedas = [
  Product(
      title: "Cabe",
      description:
          "Cabai mengandung beberapa vitamin salah satunya vitamin C yang berperan sebagai antioksidan kuat yang dapat melindungi sel-sel dari agen penyebab kanker, dan secara khusus mampu meningkatkan daya serap tubuh terhadap kalsium, serta zat besi dari bahan makanan",
      image: "images/cabe.jpg",
      price: "Rp. 85.000"),
  Product(
      title: "Paprika",
      description:
          "Salah satu manfaat paprika yang signifikan adalah kandungan antioksidannya yang membantu melawan radikal bebas dan mengurangi risiko perkembangan kanker. ",
      image: "images/paprika.jpg",
      price: "Rp. 105.000")
];
