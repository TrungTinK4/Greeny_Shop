Hướng dẫn cài đặt dự án Web bán hàng nông sản
Yêu cầu hệ thống
Java Development Kit (JDK) 17

Node.js 18+

MySQL 8.x

Maven 3.8+

Git

Bước 1: Clone dự án từ GitHub
Mở Terminal hoặc Command Prompt và chạy lệnh sau:

bash
Sao chép
Chỉnh sửa
git clone https://github.com/username/nongsan-web.git
cd nongsan-web
Bước 2: Cài đặt Backend
2.1. Cấu hình cơ sở dữ liệu
Tạo cơ sở dữ liệu MySQL:

sql
Sao chép
Chỉnh sửa
CREATE DATABASE nongsan CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
2.2. Chỉnh sửa file cấu hình
Mở file application.properties trong thư mục backend/src/main/resources/ và cập nhật thông tin kết nối:

properties
Sao chép
Chỉnh sửa
spring.datasource.url=jdbc:mysql://localhost:3306/nongsan
spring.datasource.username=root
spring.datasource.password=password
spring.jpa.hibernate.ddl-auto=update
jwt.secret=mysecretkey
2.3. Cài đặt dependencies
Chạy lệnh sau trong thư mục backend:

bash
Sao chép
Chỉnh sửa
mvn clean install
2.4. Chạy Backend

bash
Sao chép
Chỉnh sửa
mvn spring-boot:run
Ứng dụng sẽ chạy tại:

arduino
Sao chép
Chỉnh sửa
http://localhost:8080
Bước 3: Cài đặt Frontend
3.1. Cài đặt dependencies
Chạy lệnh sau trong thư mục frontend:

bash
Sao chép
Chỉnh sửa
npm install
3.2. Chạy Frontend

bash
Sao chép
Chỉnh sửa
npm start
Ứng dụng sẽ chạy tại:

arduino
Sao chép
Chỉnh sửa
http://localhost:3000
Bước 4: Kiểm tra hoạt động
Mở trình duyệt và truy cập:

arduino
Sao chép
Chỉnh sửa
http://localhost:3000
Đăng nhập hoặc tạo tài khoản.

Duyệt sản phẩm, thêm vào giỏ hàng, và tiến hành thanh toán.

Bước 5: Khắc phục lỗi thường gặp
Lỗi kết nối cơ sở dữ liệu:

Kiểm tra lại thông tin trong file application.properties.

Đảm bảo MySQL đang chạy.

Lỗi cài đặt dependencies:

Xóa thư mục node_modules và chạy lại:

nginx
Sao chép
Chỉnh sửa
npm install
Xóa thư mục target và chạy lại:

nginx
Sao chép
Chỉnh sửa
mvn clean install
Cổng bị chiếm:

Kiểm tra các tiến trình đang chạy:

css
Sao chép
Chỉnh sửa
lsof -i :8080
Dừng tiến trình bằng PID:

bash
Sao chép
Chỉnh sửa
kill -9 <PID>
Hoàn tất
Dự án đã được cài đặt và khởi chạy thành công. Nếu gặp vấn đề, hãy liên hệ với nhóm phát triển