///Create a new swift file in your app and paste the below in it to see your Lint rules in action.

import Foundation

class LintSample {
    
    /// Init statement
    init() {
        let testVariable = "Variable"
        print(testVariable)
    }
    
    /// Sample method showing documentation is required
    /// - Parameter arg1: String for this sample method showing documentation is required
    func methodWithDocumentation(_ arg1: String) {
        
    }
    
    // A comment here doesn't resolve the warning since it's not documentation
    func methodWithoutDocumentation(_ arg1: String) {
        
    }
}
