import 'package:flutter/material.dart';
import 'package:wisata_lombok/detail_screen.dart';
import 'package:wisata_lombok/model/tourism_place.dart';

class MainScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Wisata Lombok'),
      ),
      body: ListView(
        children: tourismPlaceList.map((place) {
          return FlatButton(
            onPressed: () {
              Navigator.push(context, MaterialPageRoute(builder: (context) {
                return DetailScreen(place: place);
              }));
            },
            child: Card(
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: <Widget>[
                  Expanded(
                    flex: 1,
                    child: Image.asset(place.imageAsset),
                  ),
                  Expanded(
                    flex: 2,
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisSize: MainAxisSize.min,
                        children: <Widget>[
                          Text(
                            place.name,
                            style: TextStyle(fontSize: 16.0),
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Text(place.location),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            ),
          );
        }).toList(),
      ),
    );
  }
}

var tourismPlaceList = [
  TourismPlace(
    name: 'Pantai Kuta Lombok',
    location: 'Lombok Tengah',
    description:
        'Salah satu keunikan Pantai Kuta Lombok adalah pasir putihnya yang begitu unik berbentuk seperti butiran-butiran merica yang sangat sulit kita temukan di daerah wisata pantai lainnya, butiran pasir inilah yang membuat kebanyakan pengunjung betah berlama-lama di Pantai. Selain pasirnya yang unik di pantai ini juga terdapat deretan bukit-bukit yang menjulang berukuran sedang, Deretan-deretan perbukitan inilah yang menciptakan perpaduan warna yang molek diantara birunya air laut dan putihnya pasir pantai.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 20:00',
    ticketPrice: 'Rp 5000',
    imageAsset: 'images/pantai-kuta-lombok-nusa-tenggara-barat.jpg',
    imageUrls: [
      'https://encrypted-tbn0.gstatic.com/images?q=tbn%3AANd9GcTWer8WXOuIX8dV6m6HwnXLi8FrUHzO6bRtWA&usqp=CAU',
      'https://cdn.akurat.co/images/uploads/images/akurat_20180810043046_c8w9i1.jpg',
      'https://piknikwisata.com/wp-content/uploads/2020/02/xinfo-pantai-kuta-lombok.jpg.pagespeed.ic.4Ej_-YHS10.webp'
    ],
  ),
  TourismPlace(
    name: 'Gunung Rinjani',
    location: 'kabupaten lombok utara',
    description:
        'Gunung Rinjani adalah gunung yang berlokasi di Pulau Lombok, Nusa Tenggara Barat. Gunung yang merupakan gunung berapi kedua tertinggi di Indonesia dengan ketinggian 3.726 m dpl serta terletak pada lintang 8º25' +
            'LS dan 116º28' +
            ' BT ini merupakan gunung favorit bagi pendaki Indonesia karena keindahan pemandangannya. Gunung ini merupakan bagian dari Taman Nasional Gunung Rinjani yang memiliki luas sekitar 41.330 ha dan ini akan diusulkan penambahannya sehingga menjadi 76.000 ha ke arah barat dan timur.',
    openDays: 'Open Everyday',
    openTime: '09:00 - 14:30',
    ticketPrice: 'Rp 50000',
    imageAsset: 'images/gunung_rinjani2.jpeg',
    imageUrls: [
      'https://assets.kompasiana.com/statics/crawl/5529aa326ea834e44a8b456f.jpeg?t=o&v=760',
      'https://phinemo.com/wp-content/uploads/2018/08/1-2-5.jpg',
      'https://assets.kompasiana.com/statics/crawl/5529aa326ea834e44a8b456f.jpeg?t=o&v=760'
    ],
  ),
  TourismPlace(
    name: 'Gili Trawangan',
    location: 'kabupaten lombok utara',
    description:
        'Salah satu keindahan lain yang ditawarkan adalah Pulau Gili Trawangan yang mempunyai eksotisme luar biasa dengan alam laut dan budaya.',
    openDays: 'Open Everyday',
    openTime: '24 hours',
    ticketPrice: '15000',
    imageAsset:
        'images/Wisata-ke-Gili-Trawangan-Gili-Meno-dan-Gili-Air-di-Pulau-Lombok.jpg',
    imageUrls: [
      'https://phinemo.com/wp-content/uploads/2016/06/gili-trawangan.jpg',
      'https://www.gotravelaindonesia.com/wp-content/uploads/2017/12/Pesona-Gili-Trawangan.jpg',
      'https://indonesia.tripcanvas.co/wp-content/uploads/2016/02/1-exile-t-via-tiniihitakara.jpg'
    ],
  ),
];
