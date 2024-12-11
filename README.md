## Flutter MVVM TODO LIST

### Overview MVVM
### Komponen Utama MVVM:

1.  **Model**
    -   Berisi data dan logika bisnis.
    -   Mengelola pengambilan atau penyimpanan data, seperti dari API atau database.
2.  **View**
    -   Bagian UI yang ditampilkan kepada pengguna.
    -   Tidak memiliki logika bisnis, hanya berfokus pada tampilan.
3.  **ViewModel**
    -   Penghubung antara **Model** dan **View**.
    -   Mengelola state (misalnya dengan `ChangeNotifier`) dan menyediakan data ke **View**.

    ## 2. Instructions on how to run your Flutter application.
1. **Install Flutter SDK:**
2.  **Install Dart SDK:**
3. **Set Up an Editor:**:Untuk menyusun aplikasi Android, instal Android Studio atau  perangkat Android yang terhubung.
- Konfigurasikan AVD (Android Virtual Device) di Android Studio atau aktifkan opsi pengembang di perangkat Android .

## step 2 membuat flutter project/clone
1. **Creating a New Project:**
2. **Running Your Flutter Application**:setelah vsc terbuka maka bisa dipilih mau menggungakan emulator atau simulator.
3. saya pilih pixel 6a API 33 emulator 5554 mobile kemudian click run.

- A reflection (200-300 words) on what you learned from this assignment and any challenges you faced.

Melalui tugas ini, saya mendapatkan pemahaman yang lebih dalam tentang pola desain MVVM (Model-View-ViewModel) dan penerapannya dalam pengembangan Flutter dengan mengimplementasikan aplikasi ToDo. Salah satu pelajaran paling signifikan adalah menghargai bagaimana MVVM membantu memisahkan tanggung jawab dalam sebuah aplikasi, yang memungkinkan pemeliharaan dan pengujian yang lebih baik. Dengan mendefinisikan dengan jelas peran Model, View, dan ViewModel, saya belajar bagaimana mengelola keadaan aplikasi dengan lebih efektif dan menciptakan UI yang responsif terhadap perubahan data secara real-time.

  

Namun, proses ini memiliki tantangan tersendiri. Awalnya, saya kesulitan dengan konsep state management terutama dalam implementasi Provider  package yang tepat. Memahami bagaimana menciptakan UI yang responsif  perubahan di ViewModel membutuhkan beberapa kali percobaan dan kesalahan. Selain itu, memastikan keberlangsungan data dalam aplikasi juga membawa tantangan tersendiri, terutama  saat terjadi error akan tetapi tidak tahu errornya , seperti penggabungan antar folder satu dengan folder yang lain , atau file satu dengan file yang ada di dalam satu folder. 

Dan yang paling panik ketika emulator tidak bisa running dan ada peringatan abhwa memory laptop full itu sangat panik sekali karena tidak tahu mau bagaimana lagi , akhirnya cara yang saya ambil dengan menghapul applikasi yang tidak sedang digunakan .

saya harus belajar dari fundamental dart juga berbagai referensi yang saya pelajari  
seperti:
https://medium.com/blocship/mvvm-in-flutter-a-beginners-guide-c5ce67462b85
https://dart-tutorial.com/introduction-and-basics/datatypes-in-dart/

  Meskipun hal ini sangat menantang  , penyelesaian masalah-masalah tersebut memberikan peluang belajar yang signifikan. Memecahkan masalah dan memperbaiki kesalahan manajemen keadaan tidak hanya meningkatkan keterampilan pemecahan masalah saya tetapi juga memperkuat pentingnya fondasi arsitektural yang kuat dalam desain aplikasi. Secara keseluruhan, tugas ini telah membekali saya dengan keterampilan untuk menerapkan MVVM dalam proyek-proyek mendatang, dan meningkatkan minat saya untuk mengeksplorasi solusi manajemen keadaan yang lebih kompleks dalam ekosistem Flutter. Proyek ini adalah langkah awal yang berharga dalam perjalanan saya menuju menjadi pengembang Flutter yang mahir di kemudian hari.