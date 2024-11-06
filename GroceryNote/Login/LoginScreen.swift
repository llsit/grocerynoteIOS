import SwiftUI

struct LoginScreen: View {
    
    @ObservedObject var viewModel: LoginViewModel = LoginViewModel()

    
    var body: some View {
        VStack(alignment: .center, spacing: 16) {
            Image("welcome")
                .resizable()
                .aspectRatio(contentMode: .fill)
                .frame(width: 200, height: 200)
                .cornerRadius(16)
            
            TextField("email",text: $viewModel.username, prompt: Text(LocalizedStringKey("email")))
                .keyboardType(.emailAddress)
                .padding(.horizontal, 16)
                .padding(.vertical, 8)
            
            SecureField("password", text: $viewModel.password) {
                TextField("password", text: $viewModel.password)
                    .keyboardType(.default)
                    .padding(.horizontal, 16)
                    .padding(.vertical, 8)
            }
            
            HStack {
                Text(LocalizedStringKey("forgot password"))
                    .font(.system(size: 12))
                    .foregroundColor(Color.primary)
                Spacer()
                Button("Reset") {
                    // Handle reset password action
                }
            }
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            
            Button(action: {
                
            }) {
                Text(LocalizedStringKey("Login"))
                    .foregroundColor(.white)
            }
            .buttonStyle(BlueButton())
            .padding(.horizontal, 16)
            .padding(.vertical, 8)
            
            HStack {
                Text(LocalizedStringKey("login_for_register_description"))
                    .font(.title)
                    .foregroundColor(Color.primary.opacity(0.7))
                Button(action: {
                    
                }) {
                    Text(LocalizedStringKey("need register"))
                        .foregroundColor(Color.primary)
                }
            }
            
            Spacer(minLength: 50)
        }
        .padding()
    }
}

struct LoginScreen_Previews: PreviewProvider {
    static var previews: some View {
        LoginScreen()
    }
}

struct BlueButton: ButtonStyle {
    func makeBody(configuration: Configuration) -> some View {
        configuration.label
            .padding()
            .background(Color(red: 0, green: 0, blue: 0.5))
            .foregroundStyle(.white)
            .clipShape(Capsule())
    }
}
