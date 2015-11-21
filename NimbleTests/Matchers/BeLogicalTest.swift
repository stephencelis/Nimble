import XCTest
import Nimble

class BeTruthyTest : XCTestCase {
    func testShouldMatchNonNilTypes() {
        expect(true as Bool?).to.beTruthy()
        expect(1 as Int?).to.beTruthy()
    }

    func testShouldMatchTrue() {
        expect(true).to.beTruthy()

        failsWithErrorMessage("expected to not be truthy, got <true>") {
            expect(true).to.not.beTruthy()
        }
    }

    func testShouldNotMatchNilTypes() {
        expect(false as Bool?).to.not.beTruthy()
        expect(nil as Bool?).to.not.beTruthy()
        expect(nil as Int?).to.not.beTruthy()
    }

    func testShouldNotMatchFalse() {
        expect(false).to.not.beTruthy()

        failsWithErrorMessage("expected to be truthy, got <false>") {
            expect(false).to.beTruthy()
        }
    }

    func testShouldNotMatchNilBools() {
        expect(nil as Bool?).to.not.beTruthy()

        failsWithErrorMessage("expected to be truthy, got <nil>") {
            expect(nil as Bool?).to.beTruthy()
        }
    }

    func testShouldMatchBoolConvertibleTypesThatConvertToTrue() {
        expect(ConvertsToBool.TrueLike).to.beTruthy()

        failsWithErrorMessage("expected to not be truthy, got <TrueLike>") {
            expect(ConvertsToBool.TrueLike).to.not.beTruthy()
        }
    }

    func testShouldNotMatchBoolConvertibleTypesThatConvertToFalse() {
        expect(ConvertsToBool.FalseLike).to.not.beTruthy()

        failsWithErrorMessage("expected to be truthy, got <FalseLike>") {
            expect(ConvertsToBool.FalseLike).to.beTruthy()
        }
    }
}

class BeTrueTest : XCTestCase {
    func testShouldMatchTrue() {
        expect(true).to.beTrue()

        failsWithErrorMessage("expected to not be true, got <true>") {
            expect(true).to.not.beTrue()
        }
    }

    func testShouldNotMatchFalse() {
        expect(false).to.not.beTrue()

        failsWithErrorMessage("expected to be true, got <false>") {
            expect(false).to.beTrue()
        }
    }

    func testShouldNotMatchNilBools() {
        failsWithErrorMessageForNil("expected to not be true, got <nil>") {
            expect(nil as Bool?).to.not.beTrue()
        }

        failsWithErrorMessageForNil("expected to be true, got <nil>") {
            expect(nil as Bool?).to.beTrue()
        }
    }
}

class BeFalsyTest : XCTestCase {
    func testShouldMatchNilTypes() {
        expect(false as Bool?).to.beFalsy()
        expect(nil as Bool?).to.beFalsy()
        expect(nil as Int?).to.beFalsy()
    }

    func testShouldNotMatchTrue() {
        expect(true).to.not.beFalsy()

        failsWithErrorMessage("expected to be falsy, got <true>") {
            expect(true).to.beFalsy()
        }
    }

    func testShouldNotMatchNonNilTypes() {
        expect(true as Bool?).to.not.beFalsy()
        expect(1 as Int?).to.not.beFalsy()
    }

    func testShouldMatchFalse() {
        expect(false).to.beFalsy()

        failsWithErrorMessage("expected to not be falsy, got <false>") {
            expect(false).to.not.beFalsy()
        }
    }

    func testShouldMatchNilBools() {
        expect(nil as Bool?).to.beFalsy()

        failsWithErrorMessage("expected to not be falsy, got <nil>") {
            expect(nil as Bool?).to.not.beFalsy()
        }
    }
}

class BeFalseTest : XCTestCase {
    func testShouldNotMatchTrue() {
        expect(true).to.not.beFalse()

        failsWithErrorMessage("expected to be false, got <true>") {
            expect(true).to.beFalse()
        }
    }

    func testShouldMatchFalse() {
        expect(false).to.beFalse()

        failsWithErrorMessage("expected to not be false, got <false>") {
            expect(false).to.not.beFalse()
        }
    }

    func testShouldNotMatchNilBools() {
        failsWithErrorMessageForNil("expected to be false, got <nil>") {
            expect(nil as Bool?).to.beFalse()
        }

        failsWithErrorMessageForNil("expected to not be false, got <nil>") {
            expect(nil as Bool?).to.not.beFalse()
        }
    }
}

class BeTruthyDeprecatedTest : XCTestCase {
    func testShouldMatchNonNilTypes() {
        expect(true as Bool?).to(beTruthy())
        expect(1 as Int?).to(beTruthy())
    }

    func testShouldMatchTrue() {
        expect(true).to(beTruthy())

        failsWithErrorMessage("expected to not be truthy, got <true>") {
            expect(true).toNot(beTruthy())
        }
    }

    func testShouldNotMatchNilTypes() {
        expect(false as Bool?).toNot(beTruthy())
        expect(nil as Bool?).toNot(beTruthy())
        expect(nil as Int?).toNot(beTruthy())
    }

    func testShouldNotMatchFalse() {
        expect(false).toNot(beTruthy())

        failsWithErrorMessage("expected to be truthy, got <false>") {
            expect(false).to(beTruthy())
        }
    }

    func testShouldNotMatchNilBools() {
        expect(nil as Bool?).toNot(beTruthy())

        failsWithErrorMessage("expected to be truthy, got <nil>") {
            expect(nil as Bool?).to(beTruthy())
        }
    }

    func testShouldMatchBoolConvertibleTypesThatConvertToTrue() {
        expect(ConvertsToBool.TrueLike).to(beTruthy())

        failsWithErrorMessage("expected to not be truthy, got <TrueLike>") {
            expect(ConvertsToBool.TrueLike).toNot(beTruthy())
        }
    }

    func testShouldNotMatchBoolConvertibleTypesThatConvertToFalse() {
        expect(ConvertsToBool.FalseLike).toNot(beTruthy())

        failsWithErrorMessage("expected to be truthy, got <FalseLike>") {
            expect(ConvertsToBool.FalseLike).to(beTruthy())
        }
    }
}

class BeTrueDeprecatedTest : XCTestCase {
    func testShouldMatchTrue() {
        expect(true).to(beTrue())

        failsWithErrorMessage("expected to not be true, got <true>") {
            expect(true).toNot(beTrue())
        }
    }

    func testShouldNotMatchFalse() {
        expect(false).toNot(beTrue())

        failsWithErrorMessage("expected to be true, got <false>") {
            expect(false).to(beTrue())
        }
    }

    func testShouldNotMatchNilBools() {
        failsWithErrorMessageForNil("expected to not be true, got <nil>") {
            expect(nil as Bool?).toNot(beTrue())
        }

        failsWithErrorMessageForNil("expected to be true, got <nil>") {
            expect(nil as Bool?).to(beTrue())
        }
    }
}

class BeFalsyDeprecatedTest : XCTestCase {
    func testShouldMatchNilTypes() {
        expect(false as Bool?).to(beFalsy())
        expect(nil as Bool?).to(beFalsy())
        expect(nil as Int?).to(beFalsy())
    }

    func testShouldNotMatchTrue() {
        expect(true).toNot(beFalsy())

        failsWithErrorMessage("expected to be falsy, got <true>") {
            expect(true).to(beFalsy())
        }
    }

    func testShouldNotMatchNonNilTypes() {
        expect(true as Bool?).toNot(beFalsy())
        expect(1 as Int?).toNot(beFalsy())
    }

    func testShouldMatchFalse() {
        expect(false).to(beFalsy())

        failsWithErrorMessage("expected to not be falsy, got <false>") {
            expect(false).toNot(beFalsy())
        }
    }

    func testShouldMatchNilBools() {
        expect(nil as Bool?).to(beFalsy())

        failsWithErrorMessage("expected to not be falsy, got <nil>") {
            expect(nil as Bool?).toNot(beFalsy())
        }
    }
}

class BeFalseDeprecatedTest : XCTestCase {
    func testShouldNotMatchTrue() {
        expect(true).toNot(beFalse())

        failsWithErrorMessage("expected to be false, got <true>") {
            expect(true).to(beFalse())
        }
    }

    func testShouldMatchFalse() {
        expect(false).to(beFalse())

        failsWithErrorMessage("expected to not be false, got <false>") {
            expect(false).toNot(beFalse())
        }
    }

    func testShouldNotMatchNilBools() {
        failsWithErrorMessageForNil("expected to be false, got <nil>") {
            expect(nil as Bool?).to(beFalse())
        }

        failsWithErrorMessageForNil("expected to not be false, got <nil>") {
            expect(nil as Bool?).toNot(beFalse())
        }
    }
}

enum ConvertsToBool : BooleanType, CustomStringConvertible {
    case TrueLike, FalseLike

    var boolValue : Bool {
        switch self {
        case .TrueLike: return true
        case .FalseLike: return false
        }
    }

    var description : String {
        switch self {
        case .TrueLike: return "TrueLike"
        case .FalseLike: return "FalseLike"
        }
    }
}
