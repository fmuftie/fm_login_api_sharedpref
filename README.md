# login_api_sharedpref

This flutter project demonstrates the process of logging in with a username and password, then going to the User Dashboard. From the User Dashboard you can log out and return to the login form.

The Login Form will remember the username that was previously entered. Login data is stored in local storage using the shared_preferences package.
If you don't log out, then when the application is closed and reopened, the login data will not be lost, and it will go straight to the Dashboard.

## Integration with API

This simple flutter application has been integrated with API. Login data (username and password) is taken from [Dummy JSON](https://dummyjson.com/users).

## Screenshot
![Login Image](https://github.com/fmuftie/fm_login_api_sharedpref/blob/master/SS/picture1.jpg?raw=true)<br/>

![Dashboard Image](https://github.com/fmuftie/fm_login_api_sharedpref/blob/master/SS/picture2.jpg?raw=true)<br/>

.
# Bahasa Indonesia

Proyek flutter ini mendemonstrasikan proses login dengan username dan password, kemudian masuk ke User Dashboard. Dari User Dashboard dapat logout dan kembali ke form login.

Form Login akan mengingat username yang sudah dimasukkan sebelumnya. Data login disimpan di local storage menggunakan shared_preferences package.
Jika tidak logout, maka pada saat aplikasi ditutup dan dibuka kembali, maka tidak akan hilang data login-nya, dan akan langsung ke Dashboard.

## Integrasi dengan API

Aplikasi flutter sederhana ini telah terintegrasi dengan API. Data login (username dan password) diambil dari [Dummy JSON](https://dummyjson.com/users).
