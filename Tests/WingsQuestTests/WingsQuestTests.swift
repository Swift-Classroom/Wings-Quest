import Testing

struct TaskBonusPoints {
    func testGetsBonusPoints() {
        #expect(
            bonusPoints(powerUpActive: true, touchingEagle: true) == true
        )
    }
    
    func testNoBonusPointsWhenNotPowerUpActive() throws {
        
        #expect(
            bonusPoints(powerUpActive: false, touchingEagle: true) == false
        )
    }
    
    func testNoBonusPointsWhenNotTouchingOtherBird() throws {
        
        #expect(
            bonusPoints(powerUpActive: true, touchingEagle: false) == false
        )
    }
    
    func testNoBonusPointsWhenNotTouchingOtherBirdnorPowerUp() throws {
        
        #expect(
            bonusPoints(powerUpActive: false, touchingEagle: false) == false
        )
    }
}

struct TaskScoreTests {
    func testGetScore() throws {
        
        #expect(
            score(touchingPowerUp: true, touchingSeed: true) == true
        )
    }
    
    func testGetScoreWhenNotTouchingSeed() throws {
        
        #expect(
            score(touchingPowerUp: false, touchingSeed: true) == true
        )
    }
    
    func testGetScoreWhenNotTouchingPowerUp() throws {
        
        #expect(
            score(touchingPowerUp: true, touchingSeed: false) == true
        )
    }
    
    func testNoScoreWhenBothIsFalse() throws {
        
        #expect(
            score(touchingPowerUp: false, touchingSeed: false) == false
        )
    }
}

struct TaskLoseTests {
    func testLose() throws {
        
        #expect(
            lose(powerUpActive: false, touchingEagle: true) == true
        )
    }
    
    func testDontLoseWhenPowerUp() throws {
        
        #expect(
            lose(powerUpActive: true, touchingEagle: true) == false
        )
    }
    
    func testDontLoseWhenNotTouchingAndPowerUp() throws {
        
        #expect(
            lose(powerUpActive: false, touchingEagle: false) == false
        )
    }
    
    func testDontLoseWhenNotTouching() throws {
        
        #expect(
            lose(powerUpActive: true, touchingEagle: false) == false
        )
    }
}

struct TaskWinTests {
    func testWin() throws {
        
        #expect(
            win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: false) == true
        )
    }
    
    func testDontWinIfLost() throws {
        
        #expect(
            win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: true) == false
        )
    }
    
    func testWinIfPickedUpAllSeedsAndTouchingOtherBird() throws {
        
        #expect(
            win(hasPickedUpAllSeeds: true, powerUpActive: false, touchingEagle: true) == false
        )
    }
}
