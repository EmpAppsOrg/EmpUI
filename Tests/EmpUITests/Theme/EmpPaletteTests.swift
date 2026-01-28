// Tests/EmpUITests/Theme/EmpPaletteTests.swift
@testable import EmpUI
import SwiftUI
import Testing

@Suite("EmpPalette Tests")
struct EmpPaletteTests {
    @Test("Default palette has all colors defined")
    func defaultPaletteComplete() {
        let palette = EmpPalette.default
        for color in EmpColor.allCases {
            #expect(palette.color(for: color) != nil, "Missing color: \(color)")
        }
    }

    @Test("Palette override replaces specific color")
    func overrideSingleColor() {
        let custom = Color.red
        let palette = EmpPalette.default.overriding([.accent: custom])

        #expect(palette.color(for: .accent) == custom)
        // Other colors remain default
        #expect(palette.color(for: .textPrimary) == EmpPalette.default.color(for: .textPrimary))
    }

    @Test("Full palette replacement")
    func fullReplacement() {
        var colors: [EmpColor: Color] = [:]
        for c in EmpColor.allCases {
            colors[c] = .purple
        }
        let palette = EmpPalette(colors: colors)

        for c in EmpColor.allCases {
            #expect(palette.color(for: c) == .purple)
        }
    }
}
