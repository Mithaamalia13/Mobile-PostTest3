import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({Key? key}) : super(key: key);

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

enum Pembayaran { transfer, dana, shopeePay, cod }

class _MyHomePageState extends State<MyHomePage> {
  final namaLengkapCtrl = TextEditingController();
  final noHpCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final alamatCtrl = TextEditingController();
  final kodePosCtrl = TextEditingController();
  final catatanCtrl = TextEditingController();
  final kuponCtrl = TextEditingController();

  Pembayaran pembayaran = Pembayaran.transfer;

  String namaLengkap = "",
      noHp = '',
      email = "",
      alamat = "",
      kodePos = '',
      catatan = "",
      kupon = "";

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    namaLengkapCtrl.dispose();
    noHpCtrl.dispose();
    emailCtrl.dispose();
    alamatCtrl.dispose();
    kodePosCtrl.dispose();
    catatanCtrl.dispose();
    kuponCtrl.dispose();
    super.dispose();
  }

  String getPembayaran(Pembayaran? value) {
    if (value == Pembayaran.cod) {
      return "COD";
    } else if (value == Pembayaran.dana) {
      return "DANA";
    } else if (value == Pembayaran.shopeePay) {
      return "ShopeePay";
    }
    return "Transfer Bank";
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "THRIFTY FASHION SHOP",
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        backgroundColor: Color(0xffff5c8a),
      ),
      body: ListView(
        children: [
          Column(
            children: [
              Padding(
                  padding:
                      EdgeInsets.only(left: 16, right: 16, top: 8, bottom: 8)),
              Text(
                "DATA PENGIRIMAN",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Color(0xffff7096)),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: namaLengkapCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xfff7cbd1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Nama Lengkap",
                  labelStyle: TextStyle(color: Color(0xffee2157)),
                  hintText: 'Masukkan Nama Lengkap',
                  hintStyle: TextStyle(color: Color(0xffee2157)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: noHpCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xfff7cbd1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "No HP / Whatsapp",
                  labelStyle: TextStyle(color: Color(0xffee2157)),
                  hintText: 'Masukkan No Hp / Whatsapp',
                  hintStyle: TextStyle(color: Color(0xffee2157)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: emailCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xfff7cbd1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Email",
                  labelStyle: TextStyle(color: Color(0xffee2157)),
                  hintText: 'Masukkan Email',
                  hintStyle: TextStyle(color: Color(0xffee2157)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLines: 4,
                controller: alamatCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xfff7cbd1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Alamat",
                  labelStyle: TextStyle(color: Color(0xffee2157)),
                  hintText: 'Masukkan Alamat',
                  hintStyle: TextStyle(color: Color(0xffee2157)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: kodePosCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xfff7cbd1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Kode Pos",
                  labelStyle: TextStyle(color: Color(0xffee2157)),
                  hintText: 'Masukkan Kode Pos',
                  hintStyle: TextStyle(color: Color(0xffee2157)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                maxLines: 5,
                controller: catatanCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xfff7cbd1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Catatan Tambahan",
                  labelStyle: TextStyle(color: Color(0xffee2157)),
                  hintText: 'Masukkan Catatan Tambahan',
                  hintStyle: TextStyle(color: Color(0xffee2157)),
                ),
              ),
              const SizedBox(height: 20),
              TextField(
                controller: kuponCtrl,
                decoration: InputDecoration(
                  fillColor: Color(0xfff7cbd1),
                  filled: true,
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(20),
                    borderSide: BorderSide.none,
                  ),
                  labelText: "Kode Kupon",
                  labelStyle: TextStyle(color: Color(0xffee2157)),
                  hintText: 'Masukkan Kode Kupon',
                  hintStyle: TextStyle(color: Color(0xffee2157)),
                ),
              ),
              SizedBox(
                height: 15,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Metode Pembayaran : ",
                    style: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.normal,
                        fontWeight: FontWeight.bold,
                        color: Color(0xffff5c8a))),
              ),
              ListTile(
                title: const Text(
                  "Transfer Bank",
                  style: TextStyle(
                      color: Color(0xffee2157), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.transfer,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text(
                  "DANA",
                  style: TextStyle(
                      color: Color(0xffee2157), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.dana,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text(
                  "ShopeePay",
                  style: TextStyle(
                      color: Color(0xffee2157), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.shopeePay,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              ListTile(
                title: const Text(
                  "COD",
                  style: TextStyle(
                      color: Color(0xffee2157), fontWeight: FontWeight.bold),
                ),
                leading: Radio(
                  groupValue: pembayaran,
                  value: Pembayaran.cod,
                  onChanged: (Pembayaran? value) {
                    setState(() {
                      pembayaran = value!;
                    });
                  },
                ),
              ),
              Container(
                width: 200,
                height: 50,
                child: TextButton(
                  style: TextButton.styleFrom(
                      backgroundColor: Color(0xffff5c8a),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      )),
                  onPressed: () {
                    setState(() {
                      namaLengkap = namaLengkapCtrl.text;
                      noHp = noHpCtrl.text;
                      email = emailCtrl.text;
                      alamat = alamatCtrl.text;
                      kodePos = kodePosCtrl.text;
                      catatan = catatanCtrl.text;
                    });
                  },
                  child: Text("Konfirmasi",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          letterSpacing: 2,
                          fontStyle: FontStyle.normal,
                          fontWeight: FontWeight.bold)),
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Nama Lengkap : $namaLengkap"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("No Hp / Whatsapp : $noHp"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Email : $email"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Alamat : $alamat"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Kode Pos : $kodePos"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Catatan Tambahan : $catatan"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10),
                alignment: Alignment.centerLeft,
                child: Text("Kode Kupon : $kupon"),
              ),
              Container(
                padding: EdgeInsets.only(left: 10, bottom: 10),
                alignment: Alignment.centerLeft,
                child: Text('Pembayaran : ${getPembayaran(pembayaran)}'),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 8),
                child: Row(children: [
                  Container(
                    width: 410,
                    height: 50,
                    alignment: Alignment.center,
                    decoration: const BoxDecoration(
                      color: Color(0xfff7cbd1),
                    ),
                    child: const Text(
                      "MITHA AMALIA - 2009106028",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontSize: 20,
                        color: Color(0xffee2157),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  )
                ]),
              )
            ],
          )
        ],
      ),
    );
  }
}
