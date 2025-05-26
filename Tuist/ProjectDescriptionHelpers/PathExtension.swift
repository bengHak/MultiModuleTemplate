import Foundation
import ProjectDescription

extension ProjectDescription.Path {
    public static func relativeToModule(_ pathString: String) -> Self {
        return .relativeToRoot("Projects/Modules/\(pathString)")
    }
    public static var app: Self {
        return .relativeToRoot("Projects/Application")
    }
}

extension Dep {
    static func module(name: String) -> Self {
        return .project(target: name, path: .relativeToModule(name))
    }
}
