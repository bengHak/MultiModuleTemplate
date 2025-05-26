import ProjectDescription

let nameAttribute = Template.Attribute.required("name")
let bundleIdAttribute = Template.Attribute.optional("bundle-id", default: "kr.company.{{ name }}")
let organizationNameAttribute = Template.Attribute.optional("organization-name", default: "{{ name }}")

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
            path: "BuildConfigurations",
            sourcePath: "BuildConfigurations"
        ),
        
        // Tuist ProjectDescriptionHelpers
        .directory(
            path: "Tuist/ProjectDescriptionHelpers",
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
        .directory(
            path: "Projects/Application/Sources",
            sourcePath: "Projects/Application/Sources"
        ),
        .directory(
            path: "Projects/Application/Resources",
            sourcePath: "Projects/Application/Resources"
        ),
        .directory(
            path: "Projects/Application/Tests",
            sourcePath: "Projects/Application/Tests"
        ),
        
        // Framework Modules
        .file(
            path: "Projects/Modules/DIKit/Project.swift",
            templatePath: "Projects/Modules/DIKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/DIKit/Sources",
            sourcePath: "Projects/Modules/DIKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/DIKit/Tests",
            sourcePath: "Projects/Modules/DIKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/DataKit/Project.swift",
            templatePath: "Projects/Modules/DataKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/DataKit/Sources",
            sourcePath: "Projects/Modules/DataKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/DataKit/Tests",
            sourcePath: "Projects/Modules/DataKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/DomainKit/Project.swift",
            templatePath: "Projects/Modules/DomainKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/DomainKit/Sources",
            sourcePath: "Projects/Modules/DomainKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/DomainKit/Tests",
            sourcePath: "Projects/Modules/DomainKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/FoundationKit/Project.swift",
            templatePath: "Projects/Modules/FoundationKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/FoundationKit/Sources",
            sourcePath: "Projects/Modules/FoundationKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/FoundationKit/Tests",
            sourcePath: "Projects/Modules/FoundationKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/PresentationKit/Project.swift",
            templatePath: "Projects/Modules/PresentationKit/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/PresentationKit/Sources",
            sourcePath: "Projects/Modules/PresentationKit/Sources"
        ),
        .directory(
            path: "Projects/Modules/PresentationKit/Tests",
            sourcePath: "Projects/Modules/PresentationKit/Tests"
        ),
        
        .file(
            path: "Projects/Modules/ThirdPartyManager/Project.swift",
            templatePath: "Projects/Modules/ThirdPartyManager/Project.stencil"
        ),
        .directory(
            path: "Projects/Modules/ThirdPartyManager/Sources",
            sourcePath: "Projects/Modules/ThirdPartyManager/Sources"
        ),
        .directory(
            path: "Projects/Modules/ThirdPartyManager/Tests",
            sourcePath: "Projects/Modules/ThirdPartyManager/Tests"
        ),
        
        // Scripts
        .directory(
            path: "Scripts",
            sourcePath: "Scripts"
        )
    ]
)
