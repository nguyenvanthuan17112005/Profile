Ứng Dụng Xem Thông Tin Profile Người Dùng

1. Giới Thiệu Chung

Dự án này là một ứng dụng di động đơn giản, tập trung vào việc hiển thị giao diện thông tin cá nhân (Profile Screen) theo phong cách hiện đại và tối giản. Mục đích chính là thực hành các nguyên tắc lập trình giao diện khai báo (Declarative UI) và các kỹ thuật căn chỉnh bố cục nâng cao.

Giao diện:

2. Công Nghệ Được Sử Dụng

Dự án này có thể được triển khai trên một trong hai nền tảng sau, tùy thuộc vào môi trường phát triển:

🎯 Nền tảng Android (Jetpack Compose)

Ngôn ngữ: Kotlin

Giao diện: Jetpack Compose (Modern Android UI Toolkit)

Kỹ thuật chính: Sử dụng Scaffold, Column, Row, Image với các Modifier như .clip(CircleShape) và .border để tạo ảnh profile hình tròn có viền.

🎯 Nền tảng iOS (SwiftUI)

Ngôn ngữ: Swift

Giao diện: SwiftUI (Apple's modern declarative UI framework)

Kỹ thuật chính: Sử dụng NavigationView, VStack, HStack, Image với các Modifier như .clipShape(Circle()) và .overlay để tạo bố cục và viền.

3. Các Tính Năng Đã Thực Hiện

Hiển thị Ảnh Profile: Ảnh profile hình tròn có viền nổi bật.

Căn chỉnh Linh hoạt: Tên và địa điểm được căn giữa chính xác.

Header tùy chỉnh: Thanh điều hướng (Top Bar) với các nút chức năng (Quay lại / Chỉnh sửa).

Responsive Layout: Bố cục có thể mở rộng (scale) trên các kích thước màn hình khác nhau.

Kiểm soát Vị trí: Sử dụng Spacer (SwiftUI) hoặc verticalArrangement và Spacer (Compose) để điều chỉnh vị trí khối profile theo ý muốn.

4. Hướng Dẫn Cài Đặt và Chạy Dự Án

A. Đối với Android Studio (Kotlin / Compose)

Mở Project: Mở thư mục dự án trong Android Studio.

JDK: Đảm bảo cấu hình JDK trong File -> Settings -> Build, Execution, Deployment -> Build Tools -> Gradle là hợp lệ (ưu tiên chọn Embedded JDK).

Tài nguyên (Assets): Đặt file ảnh profile (ví dụ: avatar.jpg) vào thư mục app/src/main/res/drawable. Đảm bảo tên file khớp với R.drawable.avatar trong ProfileScreen.kt.

Chạy: Chọn một thiết bị giả lập hoặc thiết bị vật lý và nhấn nút Run (biểu tượng mũi tên xanh).

B. Đối với Xcode (SwiftUI)

Mở Project: Mở file .xcodeproj hoặc .xcworkspace trong Xcode.

Tài nguyên (Assets): Đặt file ảnh profile vào thư mục Assets.xcassets và đảm bảo bộ ảnh đó được đặt tên là avatar.

Icon Ứng dụng: Đặt icon ứng dụng vào bộ AppIcon trong Assets.xcassets để tránh lỗi biên dịch.

Chạy: Chọn một Simulator (ví dụ: iPhone 15 Pro) và nhấn nút Run (biểu tượng mũi tên).
