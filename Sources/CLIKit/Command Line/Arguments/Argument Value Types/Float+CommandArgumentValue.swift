//
//  Copyright © 2019 Apparata AB. All rights reserved.
//

import Foundation

extension Float: CommandArgumentValue {
    
    public init(argumentValue: String) throws {
        guard let value = Self(argumentValue) else {
            throw CommandLineError.invalidArgumentValueFormat(argumentValue)
        }
        self = value
    }
}

#if arch(x86_64)

extension Float80: CommandArgumentValue {
    
    public init(argumentValue: String) throws {
        guard let value = Self(argumentValue) else {
            throw CommandLineError.invalidArgumentValueFormat(argumentValue)
        }
        self = value
    }
}

#endif
