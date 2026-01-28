// Sources/EmpUI/Theme/EmpPalette.swift
import SwiftUI

public struct EmpPalette: Sendable {
    private let colors: [EmpColor: Color]

    public init(colors: [EmpColor: Color]) {
        self.colors = colors
    }

    public func color(for token: EmpColor) -> Color? {
        colors[token]
    }

    public func overriding(_ overrides: [EmpColor: Color]) -> EmpPalette {
        var merged = colors
        for (key, value) in overrides {
            merged[key] = value
        }
        return EmpPalette(colors: merged)
    }
}

extension EmpPalette {
    public static let `default` = EmpPalette(colors: makeDefaultColors())

    private static func makeDefaultColors() -> [EmpColor: Color] {
        var colors: [EmpColor: Color] = [:]

        // Accent — muted, calm tone (Japanese minimalism)
        colors[.accent] = Color(red: 0.35, green: 0.35, blue: 0.38)
        colors[.accentSecondary] = Color(red: 0.55, green: 0.55, blue: 0.58)

        // Text
        #if os(iOS)
            colors[.textPrimary] = Color(uiColor: .label)
            colors[.textSecondary] = Color(uiColor: .secondaryLabel)
            colors[.textTertiary] = Color(uiColor: .tertiaryLabel)
        #else
            colors[.textPrimary] = Color(nsColor: .labelColor)
            colors[.textSecondary] = Color(nsColor: .secondaryLabelColor)
            colors[.textTertiary] = Color(nsColor: .tertiaryLabelColor)
        #endif

        // Background
        #if os(iOS)
            colors[.backgroundPrimary] = Color(uiColor: .systemBackground)
            colors[.backgroundSecondary] = Color(uiColor: .secondarySystemBackground)
            colors[.backgroundElevated] = Color(uiColor: .tertiarySystemBackground)
        #else
            colors[.backgroundPrimary] = Color(nsColor: .windowBackgroundColor)
            colors[.backgroundSecondary] = Color(nsColor: .controlBackgroundColor)
            colors[.backgroundElevated] = Color(nsColor: .underPageBackgroundColor)
        #endif

        // UI
        #if os(iOS)
            colors[.separator] = Color(uiColor: .separator)
            colors[.border] = Color(uiColor: .separator).opacity(0.5)
        #else
            colors[.separator] = Color(nsColor: .separatorColor)
            colors[.border] = Color(nsColor: .separatorColor).opacity(0.5)
        #endif

        // Semantic
        colors[.success] = Color(red: 0.30, green: 0.58, blue: 0.40)
        colors[.warning] = Color(red: 0.78, green: 0.62, blue: 0.25)
        colors[.error] = Color(red: 0.75, green: 0.28, blue: 0.28)

        return colors
    }
}
