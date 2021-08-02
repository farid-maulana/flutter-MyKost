class PopularHotel {
  String name;
  String location;
  String description;
  String star;
  String comment;
  String openTime;
  String price;
  String image;

  PopularHotel({
    required this.name,
    required this.location,
    required this.description,
    required this.star,
    required this.comment,
    required this.openTime,
    required this.price,
    required this.image,
  });
}

var PopularHotelList = [
  PopularHotel(
    name: 'Farm House Lembang', 
    location: 'Lembang', 
    description: 'Berada di jalur utama Bandung-Lembang, Farm House menjadi objek wisata yang tidak pernah sepi pengunjung. Selain karena letaknya strategis, kawasan ini juga menghadirkan nuansa wisata khas Eropa. Semua itu diterapkan dalam bentuk spot swafoto Instagramable.', 
    star: '3.8/5', 
    comment: '1.2k', 
    openTime: '13:00 - 18:00', 
    price: 'Rp 250.000', 
    image: 'images/farm-house.jpg',
  ),
  PopularHotel(
    name: 'Observatorium Bosscha', 
    location: 'Lembang', 
    description: 'Memiliki beberapa teleskop, antara lain, Refraktor Ganda Zeiss, Schmidt Bimasakti, Refraktor Bamberg, Cassegrain GOTO, dan Teleskop Surya. Refraktor Ganda Zeiss adalah jenis teleskop terbesar untuk meneropong bintang. Benda ini diletakkan pada atap kubah sehingga saat teropong digunakan, atap tersebut harus dibuka. Observatorium Bosscha boleh dikunjungi oleh siapa pun, tanpa tiket. Namun, bagi yang ingin menggunakan teleskop Zeiss, wajib mendaftarkan diri. Untuk instansi atau lembaga pendidikan, diberikan jadwal hari Selasa sampai Jumat. Sementara itu, kunjungan individu dibuka setiap hari Sabtu.', 
    star: '4.4/5', 
    comment: '124', 
    openTime: '13:00 - 20:00', 
    price: 'Rp 200.000', 
    image: 'images/bosscha.jpg',
  ),
  PopularHotel(
    name: 'Jalan Asia Afrika', 
    location: 'Kota Bandung', 
    description: 'Jalan Asia Afrika di Bandung memiliki kaitan yang sangat erat dengan pendirian kota Kembang ini. Karena pada saat itu, Gubernur Jenderal Herman Willem Deaendels dari Belanda menancapkan tongkatnya saat memerintahkan pendirian kota ini, yang kemudian diabadikan menjadi tugu Bandung Nol Kilometer.', 
    star: '4.0/5', 
    comment: '500', 
    openTime: '24 hours', 
    price: 'Rp 250.000', 
    image: 'images/jalan-asia-afrika.jpg',
  ),
];