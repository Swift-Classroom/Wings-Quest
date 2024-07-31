import XCTest

@testable import WingsQuest

class TaskBonusPoints: XCTestCase {
  func testGetsBonusPoints() {
    XCTAssertTrue(
      bonusPoints(powerUpActive: true, touchingEagle: true)
    )
  }

  func testNoBonusPointsWhenNotPowerUpActive() throws {
    
    XCTAssertFalse(
      bonusPoints(powerUpActive: false, touchingEagle: true)
    )
  }

  func testNoBonusPointsWhenNotTouchingOtherBird() throws {
    
    XCTAssertFalse(
      bonusPoints(powerUpActive: true, touchingEagle: false)
    )
  }

  func testNoBonusPointsWhenNotTouchingOtherBirdnorPowerUp() throws {
    
    XCTAssertFalse(
      bonusPoints(powerUpActive: false, touchingEagle: false)
    )
  }
}

class TaskScore: XCTestCase {
  func testGetScore() throws {
    
    XCTAssertTrue(
      score(touchingPowerUp: true, touchingSeed: true)
    )
  }

  func testGetScoreWhenNotTouchingSeed() throws {
    
    XCTAssertTrue(
      score(touchingPowerUp: false, touchingSeed: true)
    )
  }

  func testGetScoreWhenNotTouchingPowerUp() throws {
    
    XCTAssertTrue(
      score(touchingPowerUp: true, touchingSeed: false)
    )
  }

  func testNoScoreWhenBothIsFalse() throws {
    
    XCTAssertFalse(
      score(touchingPowerUp: false, touchingSeed: false)
    )
  }
}

class TaskLose: XCTestCase {
  func testLose() throws {
    
    XCTAssertTrue(
      lose(powerUpActive: false, touchingEagle: true)
    )
  }

  func testDontLoseWhenPowerUp() throws {
    
    XCTAssertFalse(
      lose(powerUpActive: true, touchingEagle: true)
    )
  }

  func testDontLoseWhenNotTouchingAndPowerUp() throws {
    
    XCTAssertFalse(
      lose(powerUpActive: false, touchingEagle: false)
    )
  }

  func testDontLoseWhenNotTouching() throws {
    
    XCTAssertFalse(
      lose(powerUpActive: true, touchingEagle: false)
    )
  }
}

class TaskWin: XCTestCase {
  func testWin() throws {
    
    XCTAssertTrue(
      win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: false)
    )
  }

  func testDontWinIfLost() throws {
    
    XCTAssertFalse(
      win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: true)
    )
  }

  func testWinIfPickedUpAllSeedsAndTouchingOtherBird() throws {
    
    XCTAssertFalse(
      win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: true)
    )
  }
}
