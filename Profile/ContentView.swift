import SwiftUI

struct ProfileView: View {
    
    //Biến kiểm tra
    @State private var isEditing: Bool = false
    // Biến lưu thông tin
    @State private var name: String = ""
    @State private var location: String = ""
    @Environment(\.dismiss) private var dismiss
    let avatarName = "avatar"
    
    
    var body: some View {

        NavigationView {
            
            VStack {
                
                // 1. Ảnh đại diện hình tròn (Image from Assets)
                Image(avatarName)
                    .resizable() // Cho phép thay đổi kích thước
                    .aspectRatio(contentMode: .fill)
                    .frame(width: 150, height: 150) // Kích thước ảnh
                    .clipShape(Circle()) // Cắt ảnh thành hình tròn 
                    // Thêm viền
                    .overlay(
                        Circle().stroke(Color.accentColor, lineWidth: 1)
                    )
                
                Spacer()
                    .frame(height: 32)
                //2. Phần edit tên
                if isEditing {
                    TextField("Enter full name", text: $name)
                        .font(.largeTitle)
                        .fontWeight(.bold)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                } else {
                    if name.isEmpty{
                        Text("Edit name")
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.gray.opacity(0.4))
                    }
                    else{
                        Text(name)
                            .font(.largeTitle)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                }
                
                Spacer()
                    .frame(height: 4)
                
                //3. Địa điểm
                if isEditing {
                    TextField("Enter your location", text: $location)
                        .font(.body)
                        .multilineTextAlignment(.center)
                        .textFieldStyle(.roundedBorder)
                        .padding(.horizontal)
                }
                else {
                    if location.isEmpty{
                        Text("Edit location")
                            .font(.body)
                            .foregroundColor(.gray.opacity(0.4))
                    }
                    else{
                        Text(location)
                            .font(.body)
                            .foregroundColor(.gray)
                    }
                }
                
                // Đẩy tất cả nội dung lên trên
                Spacer()
            }
            .frame(maxWidth: .infinity, maxHeight: .infinity)
            //4. Header
            .toolbar{
                ToolbarItem(placement: .topBarLeading) {
                    Button {
                        dismiss() 
                    } label: {
                        Image(systemName: "arrow.backward")
                            .font(.title2)
                            .fontWeight(.bold)
                            .foregroundColor(.black)
                    }
                }
                ToolbarItem(placement: .topBarTrailing){
                    Button{
                        isEditing.toggle()
                    } label: {
                        Image(systemName: isEditing ? "checkmark.circle.fill" : "pencil")
                            .font(.title2)
                            .foregroundColor(isEditing ? Color.green : Color.accentColor)
                    }
                }
            }
            // Căn chỉnh toàn bộ nội dung trong VStack về trung tâm
            .frame(maxWidth: .infinity, maxHeight: .infinity)

        }
    }
}

// Preview để xem trước giao diện trong Xcode
struct ProfileView_Previews: PreviewProvider {
    static var previews: some View {
        ProfileView()
    }
}
