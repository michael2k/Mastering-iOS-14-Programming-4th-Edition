/*:


&nbsp;

[< Previous](@previous)           [Home](Intro)           [Next >](@next)
# Callable values of user-defined nominal types

 [SE-0253](https://github.com/apple/swift-evolution/blob/master/proposals/0253-callable.md)
 */

import Foundation

struct MyPow {
    let base: Double

    func callAsFunction(_ x: Double) -> Double {
        return pow(base, x)
    }
}

let base2Pow = MyPow(base: 2)
print(base2Pow.callAsFunction(3))

print(base2Pow(3))

struct MikeTest {
    let base: Double
    
    func callAsFunction( _ x: Double) -> Double {
        return pow(base, x)
    }
    
    func test( _ x: Double) -> Double {
        return pow(base, x)
    }

}

let mike3Test = MikeTest(base: 4)
print(mike3Test.test(2))

print(mike3Test(2))

/*:


&nbsp;

[< Previous](@previous)           [Home](Intro)           [Next >](@next)

*/
