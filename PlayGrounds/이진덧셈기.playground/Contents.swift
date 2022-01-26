import UIKit
//
//// 미션1 - 디지털 논리 게이트 함수
//
//func AND(_ bitA: Bool, _ bitB: Bool) -> Bool {
//    return bitA && bitB
//}
//
//func OR(_ bitA: Bool, _ bitB: Bool) -> Bool {
//    return bitA || bitB
//}
//
//func NAND(_ bitA: Bool, _ bitB: Bool) -> Bool {
//    return !(bitA && bitB)
//}
//
//func NOR(_ bitA: Bool, _ bitB: Bool) -> Bool {
//    return !(bitA || bitB)
//}
//
//NOR(true, false)
//NOR(true, true)
//NOR(false, false)
//
//
//// 미션 2
//// 반쪽 덧셈과 전체 덧셈
//
//
//// sum => 두 비트가 다를 때만 True (XOR)
//// carry => 둘다 True 일때 True (AND)
//
//func XOR(_ bitA: Bool, _ bitB: Bool) -> Bool {
//    return AND(NAND(bitA, bitB),OR(bitA, bitB)) // 1
////    return OR(AND(!bitA,bitB),AND(bitA,!bitB))  // 2
//}
//
//func halfadder(_ bitA:Bool, _ bitB:Bool) -> [Bool] {
//
//    let sum: Bool = XOR(bitA, bitB)
//    let carry: Bool = bitA && bitB
//
//    return [carry,sum]
//}
//
//
//
//func fulladder(_ bitA:Bool, _ bitB:Bool, _ carry:Bool) -> [Bool] {
//
//    // [0] carry  [1] sum
//
//    let firstHalf = halfadder(bitA, bitB)
//    let secondHalf = halfadder(carry, firstHalf[1]) //
//
//    let resultSum = secondHalf[1]
//    let resultCarry = OR(firstHalf[0], secondHalf[0])
//
//
//    return [resultCarry,resultSum]
//}
//
//fulladder(true, true ,false)
//fulladder(true, true ,true)
//
//
//// 미션3 - 1바이트 덧셈기
//
//func oneByteAdder(_ byteA: [Bool], _ byteB: [Bool]) -> [Bool] {
//
//    var result: [Bool] = []
//
//    var temp = halfadder(byteA[0], byteB[0])
//    result.append(temp[1])
//
//    var tempCarry = temp[0]
//    print(tempCarry)
//
//    for i in 1..<byteA.count {
//
//        let fulladderValue = fulladder(byteA[i], byteB[i], tempCarry)
//        result.append(fulladderValue[1])
//        tempCarry = fulladderValue[0]
//
//
//    }
//    result.append(tempCarry)
//    return result
//}
//
//
//let sampleByteArray1 = [true,false,false,false,false,false,false,false]
//let sampleByteArray2 = [true,false,false,false,false,false,false,false,]
//
//oneByteAdder(sampleByteArray1, sampleByteArray2)
//
//
//let fourByteArray1 = [true,true,false,false,false,false,false,false,
//                    false,false,false,false,false,false,false,false,
//                    false,false,false,false,false,false,false,false,
//                    false,false,false,false,false,false,false,false,]
//
//
//let fourByteArray2 = [true,true,false,false,false,false,false,false,
//                    false,false,false,false,false,false,false,false,
//                    false,false,false,false,false,false,false,false,
//                    false,false,false,false,false,false,false,false,]
//
//print(oneByteAdder(fourByteArray1, fourByteArray2))
////
////
////
////func oneByteAdder(_ byteA: [Bool], _ byteB: [Bool]) -> [Bool] {
////
////    var result: [Bool] = []
////
////    var temp = halfadder(byteA[0], byteB[0])
////    result.append(temp[1])
////
////
////    var tempCarry = temp[0]
////    print(tempCarry)
////
////    for i in 1..<byteA.count {
////
////        let fulladderValue = fulladder(byteA[i], byteB[i], tempCarry)
////        result.insert(fulladderValue[1], at: 0)
////        tempCarry = fulladderValue[0]
////
////
////    }
////    result.insert(tempCarry, at: 0)
////    return result
////}



func dec2bin(_ decimal:Int) -> [Bool] {
    var tempDecimal = decimal
    var bin: [Bool] = []

    while tempDecimal > 0 {
        if tempDecimal % 2 == 0 {
            bin.append(false)
        }
        else{
            bin.append(true)
        }
        tempDecimal = Int(tempDecimal / 2)
    }
    return bin
}

dec2bin(13)


func bin2dec(_ bin:[Bool]) -> Int {
    var dec: Int = 0
    var power: Int = 1
    for i in 0..<bin.count{
        if bin[i]{
            dec += power
        }
        power *= 2

    }
    return dec
}


bin2dec([true,false,false,false])




// 10진수 -> 2진수 -> 16진수
func dec2hex(_ dec: Int) -> String {
    
    let hexCode = ["0","1","2","3","4","5","6","7","8","9","A","B","C","D","E","F"]
    var result = ""
    var bin = dec2bin(dec) // 10진수를 2진수로 변환한 배열
    print(bin)
    // 변환한 binary 배열이 4비트 단위가 아닐수도 있음
    // 4비트 단위가 되도록 false를 채워주자
    
    while bin.count % 4 != 0 {
        bin.append(false)
    }
    
    print(bin)
    
    var index = 0
    for _ in 0..<Int(bin.count/4){
        let subArray = Array(bin[index...index+3])// binary 4자리를 가지고 와서

        result += hexCode[bin2dec(subArray)]
        index += 4
    }
//
//    for i in stride(from: 0, to: bin.count-4, by: 4){
//        let subArray = Array(bin[i...i+3])// binary 4자리를 가지고 와서
//
//        result += hexCode[bin2dec(subArray)]
//

//    }
    
    return result
}

dec2hex(35)
