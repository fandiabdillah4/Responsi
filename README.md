Jelaskan cara menjalankan website di Killercoda Ubuntu Playground (lengkap dengan perintah Docker).
jawab :
1. Akses Killercoda Ubuntu Playground
Buka Killercoda.
Pilih Ubuntu Playground.
2. Update dan Install Docker
Jalankan perintah berikut untuk memastikan sistem diperbarui dan Docker diinstal:
sudo apt-get update
sudo apt-get install -y docker.io
3. Buat Direktori dan File Website
Buat direktori untuk website dan buat file HTML sederhana:
$ mkdir web-utama
$ cd web-utama
echo "<html><body><h1>Hello, World!</h1></body></html>" > index.html
4. Buat Dockerfile
Buat Dockerfile untuk mendefinisikan image Docker Anda:
echo "FROM nginx:alpine
COPY . /usr/share/nginx/html
" > Dockerfile
5. Bangun Image Docker
Bangun image Docker menggunakan Dockerfile yang telah dibuat:
$ docker build -t web-utama .
6. Jalankan Kontainer Docker
Jalankan kontainer Docker dengan image yang telah dibangun:
$ docker run -d -p 8080:80 mywebsite
7. Akses Website
Setelah kontainer berjalan, Anda dapat mengakses website melalui browser dengan mengunjungi alamat berikut:
http://<IP-address>:8080
Di Killercoda, gunakan alamat IP yang diberikan oleh lingkungan atau localhost jika berjalan secara lokal.
