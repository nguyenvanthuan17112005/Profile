import SwiftUI

// Struct này tương đương với hàm @Composable ProfileScreen() của bạn
struct ProfileView: View {
    
    // Thuộc tính để hiển thị tên và địa điểm
    let name = "Nguyễn Văn Thuận"
    let location = "Hồ Chí Minh City"
    let avatarName = "avatar" // ⬅️ Đặt tên file ảnh trong Assets của bạn
    
    var body: some View {
        // NavigationView tương đương với Scaffold để chứa thanh điều hướng/TopBar
        NavigationView {
            // VStack tương đương với Column, căn chỉnh nội dung theo chiều dọc
            VStack {
                
                // 1. Ảnh đại diện hình tròn (Image from Assets)
                Image(avatarName)
                    .resizable() // Cho phép thay đổi kích thước
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150) // Kích thước ảnh
                    .clipShape(Circle()) // Cắt ảnh thành hình tròn (tương đương .clip(CircleShape))
                    
                    // Thêm viền (tương đương .border)
                    .overlay(
                        Circle().stroke(Color.accentColor, lineWidth: 1)
                        )
                Spacer()
                    .frame(height: 32)
                
                // 2. Tên (Text)
                Text(name)
                    .font(.largeTitle) // Tương đương style = MaterialTheme.typography.headlineLarge
                    .fontWeight(.bold)
                    .foregroundColor(.black)
                
                Spacer()
                    .frame(height: 4)
                
                // 3. Địa điểm (Text)
                Text(location)
                    .font(.body) // Tương đương style = MaterialTheme.typography.bodyLarge
                    .foregroundColor(.gray)
                
                // Đẩy tất cả nội dung lên trên
                Spacer()
            }
            // Căn chỉnh toàn bộ nội dung trong VStack về trung tâm
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            
            // 4. Thanh điều hướng/Header (Tương đương ProfileHeader)
            .toolbar {
                ToolbarItem(placement: .topBarLeading) {
                    // Nút Quay lại (sử dụng SF Symbols)
                    Button {
                        // Xử lý sự kiện quay lại
                    } label: {
                        Image(systemName: "arrow.backward")
                    }
                }
                
                ToolbarItem(placement: .topBarTrailing) {
                    // Nút Chỉnh sửa (sử dụng SF Symbols)
                    Button {
                        // Xử lý sự kiện chỉnh sửa
                    } label: {
                        Image(systemName: "pencil") // Icon Edit
                    }
                }
            }
        }
    }
}

// Preview để xem trước giao diện trong Xcode
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
