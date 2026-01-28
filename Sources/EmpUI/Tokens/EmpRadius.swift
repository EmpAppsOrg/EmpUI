// Sources/EmpUI/Tokens/EmpRadius.swift
import CoreGraphics

public enum EmpRadius: CGFloat, Sendable {
    case none = 0
    case sm = 4
    case md = 8
    case lg = 12
    case full = 999

    public var value: CGFloat {
        rawValue
    }
}
