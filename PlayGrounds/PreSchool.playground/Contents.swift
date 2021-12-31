import UIKit


// 스위프트 프로그래밍

// 학습 목표
// - 기본 데이터 타입 이해하기
// - 프로그램 실행 흐름 제어하기


// 정수 두개를 더하는 코드
func add(number1: Int, number2: Int) -> Int {
    let sum = number1 + number2
    return sum
}


// 정수 세개를 더하는 코드
func add(number1: Int, number2: Int, number3: Int) -> Int{
    return number1 + number2 + number3
}

// 직접 코딩해보기
//빼기 : substract(number1 : Int, number2 : Int) -> Int
//
//제곱 : square(number : Int) -> Int
//
//나누기 : divide(number : Int, divisor : Int) -> Int


func substract(number1: Int, number2: Int) -> Int {
    return number1 - number2
}

func square(number: Int) -> Int{
    return number*number
}

func divide(number: Int, divisor: Int) -> Int {
    return number / divisor
}
add(number1: 123, number2: 234)
substract(number1: 456, number2: 123)
square(number: 8)
divide(number: 256, divisor: 8)


///

// print()
//주어진 값을 출력하는 함수
//
//print(_:separator:terminator:)

print(12, 99, 3.14)
print(12, 88, 3.14, separator: ",", terminator: "---")
print(max(99, 10, 31.4), 123)



// 계산결과 출력하기
// 다음 코드 결과값을 print()로 출력하세요.

print(add(number1: 123, number2: 234))
print(substract(number1: 456, number2: 123))
print(square(number: 8))
print(divide(number: 256, divisor: 8))



// 데이터 타입 Data Type, 자료형
//
//데이터 값value
//컴퓨터가 처리하는(계산하는) 데이터 단위와 종류
//
//정수형: Int
//
//실수형 (부동 소수): Float / Double
//
//문자열: String
//
//논리값: Bool


//변수(상수) 이름짓기
//길이 제한 없음
//
//첫 문자는 문자(유니코드, 알파벳), $, _ 만 가능.
//var 🐶🐄 = "dogcow"
//
//숫자로 시작하면 안됨
//
//두 번째 문자부터는 숫자, 문자, $, _ 모두 가능
//
//읽어서 명확한 이름을 지어주자. 처음 단어는 소문자로, 다음 단어 시작만 대문자로
//basicSwift, twoNumber2


// 부동 소수형

// Float => 부호(1자리) + 지수(8자리) + 가수(23자리) = 32비트
// Double => 부호(1자리) + 지수(11자리) + 가수(52자리) = 62비트

// 연습문제 - 단위 변환 함수 만들기

// 미션1: inch를 cm로 바꾸는 함수
//함수명 : convertToCM(fromInches : Float) -> Float
//함수 내부에서 매개변수 fromInches 값을 cm 단위로 변환해서 return하세요.
//함수를 만들고 아래에서 다음과 값을 바꾸고 print 함수로 변환 결과를 출력하세요.

func convertToCM(fromInches: Float) -> Float {
    return fromInches * 2.54
}

convertToCM(fromInches: 50)
convertToCM(fromInches: 15)


//미션2: cm를 inch로 바꾸는 함수
//함수명 : convertToInches(fromCM : Float) -> Float
//함수 내부에서 매개변수 fromCM 값을 inch 단위로 변환해서 return하세요.
//함수를 만들고 아래에서 다음과 값을 바꾸고 print 함수로 변환 결과를 출력하세요

func convertToInches(fromCM: Float) -> Float {
    return fromCM / 2.54
}


convertToInches(fromCM: 254)
convertToInches(fromCM: 75)


//미션3: m를 inch로 바꾸는 함수
//함수명 : convertToInches(fromMeter : Float) -> Float
//함수 내부에서 매개변수 fromMeter 값을 cm로 바꾸고
//inch 단위로 변환해서 return하세요.
//함수를 만들고 아래에서 다음과 값을 바꾸고 print 함수로 변환 결과를 출력하세요


func convertToInches(fromMeter: Float) -> Float {
    return convertToInches(fromCM: (fromMeter*100))
}

convertToInches(fromMeter: 1.5)
convertToInches(fromMeter: 0.4)



//
