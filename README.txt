Hướng dẫn cài đặt Web bán hàng nông sản
Yêu cầu hệ thống
JDK 17

Node.js 18+

MySQL 8.x

Maven 3.8+

Git

Bước 1: Clone dự án
bash
Sao chép
Chỉnh sửa
git clone https://github.com/username/greeny_shop.git
cd greeny_shop
Bước 2: Cài đặt Backend
Tạo cơ sở dữ liệu MySQL:

sql
Sao chép
Chỉnh sửa
CREATE DATABASE nongsan CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
Chỉnh sửa file cấu hình tại backend/src/main/resources/application.properties:

properties
Sao chép
Chỉnh sửa
spring.datasource.url=jdbc:mysql://localhost:3306/nongsan
spring.datasource.username=root
spring.datasource.password=password
Cài đặt dependencies:

bash
Sao chép
Chỉnh sửa
mvn clean install
Chạy server:

bash
Sao chép
Chỉnh sửa
mvn spring-boot:run
Server chạy tại: http://localhost:8080

Bước 3: Cài đặt Frontend
Cài đặt dependencies:

bash
Sao chép
Chỉnh sửa
npm install
Chạy server:

bash
Sao chép
Chỉnh sửa
npm start
Giao diện chạy tại: http://localhost:8080

Bước 4: Kiểm tra
Mở trình duyệt: http://localhost:8080

Đăng nhập và kiểm tra chức năng.

Hoàn tất
Dự án đã được cài đặt và khởi chạy thành công.