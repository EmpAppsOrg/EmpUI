// Tests/EmpUITests/Tokens/EmpTokensTests.swift
import CoreGraphics
@testable import EmpUI
import Testing

@Suite("Design Tokens Tests")
struct EmpTokensTests {
    // MARK: - Spacing

    @Test("Spacing values are ordered ascending")
    func spacingOrder() {
        let values: [CGFloat] = [
            EmpSpacing.xxs.value,
            EmpSpacing.xs.value,
            EmpSpacing.sm.value,
            EmpSpacing.md.value,
            EmpSpacing.lg.value,
            EmpSpacing.xl.value,
            EmpSpacing.xxl.value,
        ]
        for i in 0 ..< values.count - 1 {
            #expect(values[i] < values[i + 1])
        }
    }

    @Test("Spacing has expected values")
    func spacingValues() {
        #expect(EmpSpacing.xxs.value == 2)
        #expect(EmpSpacing.xs.value == 4)
        #expect(EmpSpacing.sm.value == 8)
        #expect(EmpSpacing.md.value == 12)
        #expect(EmpSpacing.lg.value == 16)
        #expect(EmpSpacing.xl.value == 24)
        #expect(EmpSpacing.xxl.value == 32)
    }

    // MARK: - Radius

    @Test("Radius values are ordered ascending")
    func radiusOrder() {
        let values: [CGFloat] = [
            EmpRadius.none.value,
            EmpRadius.sm.value,
            EmpRadius.md.value,
            EmpRadius.lg.value,
            EmpRadius.full.value,
        ]
        for i in 0 ..< values.count - 1 {
            #expect(values[i] < values[i + 1])
        }
    }

    @Test("Radius has expected values")
    func radiusValues() {
        #expect(EmpRadius.none.value == 0)
        #expect(EmpRadius.sm.value == 4)
        #expect(EmpRadius.md.value == 8)
        #expect(EmpRadius.lg.value == 12)
        #expect(EmpRadius.full.value == 999)
    }
}
