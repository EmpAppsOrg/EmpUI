// Sources/EmpUI/Tokens/EmpColor.swift
import Foundation

public enum EmpColor: String, CaseIterable, Sendable {
    // Accent
    case accent
    case accentSecondary

    // Text
    case textPrimary
    case textSecondary
    case textTertiary

    // Background
    case backgroundPrimary
    case backgroundSecondary
    case backgroundElevated

    // UI
    case separator
    case border

    // Semantic
    case success
    case warning
    case error
}
