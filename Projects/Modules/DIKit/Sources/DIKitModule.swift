import Foundation

// DIKit 모듈의 기본 소스 파일
// 의존성 주입을 위한 기본 설정들이 여기에 위치합니다.
public final class DIKitModule {
    public static let shared = DIKitModule()
    
    private init() {}
    
    public func configure() {
        // DI 설정을 위한 기본 코드
    }
}
