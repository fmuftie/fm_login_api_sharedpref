# login_api_sharedpref

Proyek flutter ini mendemonstrasikan proses login dengan username dan password, kemudian masuk ke User Dashboard. Dari User Dashboard dapat logout dan kembali ke form login.

Form Login akan mengingat username yang sudah dimasukkan sebelumnya. Data login disimpan di local storage menggunakan shared_preferences package.
Jika tidak logout, maka pada saat aplikasi ditutup dan dibuka kembali, maka tidak akan hilang data login-nya, dan akan langsung ke Dashboard.


## Integrasi dengan API

Aplikasi flutter sederhana ini telah terintegrasi dengan API. Data login (username dan password) diambil dari [Dummy JSON](https://dummyjson.com/users).

## Screenshot
![Login Image](https://github.com/fmuftie/fm_login_api_sharedpref/blob/master/SS/picture1.jpg?raw=true)<br/>

![Dashboard Image](https://github.com/fmuftie/fm_login_api_sharedpref/blob/master/SS/picture2.jpg?raw=true)<br/>
