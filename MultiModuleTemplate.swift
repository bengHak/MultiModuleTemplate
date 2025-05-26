import ProjectDescription

let nameAttribute = Template.Attribute.required("name")
let bundleIdAttribute = Template.Attribute.optional("bundle-id", default: "kr.company.app")
let organizationNameAttribute = Template.Attribute.optional("organization-name", default: "company")

let template = Template(
    description: "Tuist Multi-Module iOS Project Template",
    attributes: [
        nameAttribute,
        bundleIdAttribute,
        organizationNameAttribute
    ],
    items: [
        // Root files
        .file(
            path: "Workspace.swift",
            templatePath: "Workspace.stencil"
        ),
        .file(
            path: "Tuist.swift",
            templatePath: "Tuist.stencil"
        ),
        .file(
            path: "README.md",
            templatePath: "README.stencil"
        ),
        
        // Build Configurations
        .directory(
            path: ".",
            sourcePath: "BuildConfigurations"
        ),
        
        // Tuist ProjectDescriptionHelpers
        .directory(
            path: "Tuist/",
            sourcePath: "Tuist/ProjectDescriptionHelpers"
        ),
        .file(
            path: "Tuist/Package.swift",
            templatePath: "Tuist/Package.stencil"
        ),
        
        // Application Module
        .file(
            path: "Projects/Application/Project.swift",
            templatePath: "Projects/Application/Project.stencil"
        ),
        // Application Sources
        .file(
            path: "Projects/Application/Sources/{{ name }}App.swift",
            templatePath: "Projects/Application/Sources/App.stencil"
        ),
        .file(
            path: "Projects/Application/Sources/ContentView.swift",
            templatePath: "Projects/Application/Sources/ContentView.stencil"
        ),
        .directory(
            path: "Projects/Application/",
            sourcePath: "Projects/Application/Resources"
        ),
        // Application Tests
        .file(
            path: "Projects/Application/Tests/{{ name }}Tests.swift",
            templatePath: "Projects/Application/Tests/Tests.stencil"
        ),
        
        // Framework Modules
        .file(
            path: "Projects/Modules/DIKit/Project.swift",
            templatePath: "Projects/Modules/DIKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/DIKit/",
            sourcePath: "Projects/Modules/DIKit/Resources"
        ),
        .directory(
            path: "Projects/Modules/DIKit/",
            sourcePath: "Projects/Modules/DIKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/DIKit/",
            sourcePath: "Projects/Modules/DIKit/Tests"
        ),

        .file(
            path: "Projects/Modules/DataKit/Project.swift",
            templatePath: "Projects/Modules/DataKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/DataKit/",
            sourcePath: "Projects/Modules/DataKit/Resources"
        ),
        .directory(
            path: "Projects/Modules/DataKit/",
            sourcePath: "Projects/Modules/DataKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/DataKit/",
            sourcePath: "Projects/Modules/DataKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/DomainKit/Project.swift",
            templatePath: "Projects/Modules/DomainKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/DomainKit/",
            sourcePath: "Projects/Modules/DomainKit/Resources"
        ),
        .directory(
            path: "Projects/Modules/DomainKit/",
            sourcePath: "Projects/Modules/DomainKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/DomainKit/",
            sourcePath: "Projects/Modules/DomainKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/FoundationKit/Project.swift",
            templatePath: "Projects/Modules/FoundationKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/FoundationKit/",
            sourcePath: "Projects/Modules/FoundationKit/Resources"
        ),
        .directory(
            path: "Projects/Modules/FoundationKit/",
            sourcePath: "Projects/Modules/FoundationKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/FoundationKit/",
            sourcePath: "Projects/Modules/FoundationKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/PresentationKit/Project.swift",
            templatePath: "Projects/Modules/PresentationKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/PresentationKit/",
            sourcePath: "Projects/Modules/PresentationKit/Resources"
        ),
        .directory(
            path: "Projects/Modules/PresentationKit/",
            sourcePath: "Projects/Modules/PresentationKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/PresentationKit/",
            sourcePath: "Projects/Modules/PresentationKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/ThirdPartyManager/Project.swift",
            templatePath: "Projects/Modules/ThirdPartyManager/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/ThirdPartyManager/",
            sourcePath: "Projects/Modules/ThirdPartyManager/Resources"
        ),
        .directory(
            path: "Projects/Modules/ThirdPartyManager/",
            sourcePath: "Projects/Modules/ThirdPartyManager/Sources"
        ),
        .directory(
            path: "Projects/Modules/ThirdPartyManager/",
            sourcePath: "Projects/Modules/ThirdPartyManager/Tests"
        ),
        
        // Scripts
        .directory(
            path: ".",
            sourcePath: "Scripts"
        )
    ]
)
