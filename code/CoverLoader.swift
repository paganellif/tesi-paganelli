import shared

final class CoverLoader: ObservableObject {
    @Published var data: Data?

    init(_ isbn: String) {
        GetBookCoverUseCase.init().invokeNative(isbn: isbn) { result in
            DispatchQueue.main.async {
                if result != nil {
                    self.data = ByteArrayConverter.init().toData(byteArray: result!)
                }
            }
        } onError: { throwable in
            print(throwable.getStackTrace())
            self.data = Data()
        }
    }
}