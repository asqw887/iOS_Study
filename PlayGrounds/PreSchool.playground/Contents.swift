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



// 연산자 operator
//    +, -, *, /, &&, ||, ??
//
//    기본 자료형을 계산하기 위해 사용
//    특별히 String 클래스는 + 연산자가 이어붙이는 기능.
//    boolean 제외


// 단항 연산자
//    + 와 -
//    + 는 “변수 * (1)”을 의미하고 - 는 “변수 * (-1)”을 의미한다.

var intValue = -10
var result = +intValue
var minus = -intValue

// !
// Bool 타입에 대해 결과값이 반대로 됨

var flag = true
print(flag)
print(!flag)

// 연산자 계산순서

//. 구분           연산자.    우선순위
//단항 연산자    +, -, !, ~    1
//산술 연산자    *, / , %      2
//산술 연산자    +, -          3


// 논리 연산자
// && : Conditional AND - 둘다 참일때
// || : Conditional OR - 둘 중에 하나라도 참일 때


// 삼항 연산자
// 변수 = (boolean조건식) ? 참일때값 : 거짓일때값

let point = 90
var doBlindDateFlag = (point >= 80) ? true : false



// 복잡한 데이터 구조
// - 한꺼번에 많은 값을 담아보자

// 배열 ( array )
// - 동일한 데이터 타입을 연속해서 담아놓고 순서대로 접근하는 콜렉션

var ageArray = [10,20,30,40,50]
print(ageArray[0])

// 사전 ( dictionary )
// - 동일한 데이터 타입을 키값과 함께 담아놓고 키값으로 접근하는 콜렉션

var gradeDic = ["a" : 90 , "b": 80, "c": 70]
print(gradeDic["a"] ?? 0)


// 집합 (set)
// - 동일한 데이터 타이블 순서없이 담아놓고 포함되어 있는지 확인하는 콜렉션

var aSet: Set = [11,12,13]
aSet.contains(12)

// 튜플 (tuples)
// - 여러 값을 한꺼번에 묶어서 사용하는 타입

let http404Error = (404, "Not Found")
// http404Error is of type (Int, String), and equals (404, "Not Found")


let (statusCode, statusMessage) = http404Error
print("The status code is \(statusCode)")
// Prints "The status code is 404"
print("The status message is \(statusMessage)")
// Prints "The status message is Not Found"

print("The status code is \(http404Error.0)")
// Prints "The status code is 404"
print("The status message is \(http404Error.1)")
// Prints "The status message is Not Found"

let http200Status = (statusCode: 200, description: "OK")


// 여러 데이터를 한꺼번에 struct
// - 값을 저장하기 위한 프러퍼티property 선언
// - 기능을 제공하기 위한 메서드method 선언
// - 서브스크립트로 접근할 수 있는 문법 지원
// - 초기 상태를 위한 초기화 메서드 제공


struct SomeStructure {
    // 정의하는 부분
}

struct Resolution {
    var width = 0
    var height = 0
}

let someResolution = Resolution()
someResolution.width

let vga = Resolution(width: 640, height: 480)


// 연습문제

//미션1. Rectangle
//Playground로 Rectangle struct를 만들어보세요.
//
//Int 형 leftTopX, leftTopY 변수를 추가하세요.
//
//Int 형 rightBottomX, rightBottomY 변수를 추가하세요.
//
//4개의 꼭지점을 출력하는 printRect() 메서드를 선언하세요.



struct Rectangle {
    
    var leftTopX: Float
    var leftTopY: Float
    
    var rightBottomX: Float
    var rightBottomY: Float
    
    func printRect() {
        print(" A  ( X : \(self.leftTopX), Y : \(self.leftTopY) ) ")
        print(" B  ( X : \(self.rightBottomX), Y : \(self.leftTopY) ) ")
        print(" C  ( X : \(self.leftTopX), Y : \(self.rightBottomY) ) ")
        print(" D  ( X : \(self.rightBottomX), Y : \(self.rightBottomY) ) ")
        
    }
    
    func printArea() {
        let area = ( self.rightBottomX - self.leftTopX ) * (self.leftTopY - self.rightBottomY)
        print("사각형의 면적 : \(area)")
    }
    
    func printCenter() {
        let centerX = ( self.rightBottomX + self.leftTopX ) / 2
        let centerY = (self.leftTopY + self.rightBottomY) / 2
        print("중점 X : \(centerX) Y : \(centerY)")
    }
    
}

//
//미션2. 호출하기
//아래에서 Rectangle struct를 rect 변수로 선언하고
//
//기본 제공하는 leftTopX, leftTopY, rightBottomX, rightBottomY 모두 초기화하는 메서드로 값을 지정하세요.
//
//printRect() 메서드를 호출해서 꼭지점 좌표를 출력하세요.





let rect = Rectangle(leftTopX: 5, leftTopY: 11, rightBottomX: 15, rightBottomY: 4)
rect.printRect()



//미션3. printArea()
//사각형의 면적을 계산해서 출력하는 printArea() 메서드를 추가하세요.
//
//아래에서 printArea() 메서드를 호출하세요.

rect.printArea()


//미션4. Float형
//사각형 좌표를 Float 형으로 바꿔보세요.
//
//printRect() 메서드를 호출하세요.


let rect2 = Rectangle(leftTopX: 4.5, leftTopY: 10.5, rightBottomX: 15, rightBottomY: 3.5)
rect2.printRect()



//미션5. center
//사각형의 중점(center)를 계산해서 float 형으로 출력하는 printCenter() 메서드를 추가하세요.
//
//아래에서 printCenter() 메서드를 호출하세요.


rect2.printCenter()




// 연습문제 2


//미션1. MyPoint
//MyPoint struct를 만들어보세요.
//
//Float 형 myX, myY 변수를 추가하세요.
//
//(x,y)형태로 좌표를 출력하는 printPoint() 메서드를 만드세요.
//
//MyPoint struct 인스턴스를 pointA로 선언하고
//
//초기화 메서드로 (2.5f,15.8f)값을 넘기고
//
//printPoint()를 호출해서 좌표를 출력하세요.

struct MyPoint{
    
    var myX: Float
    var myY: Float
    
    func printPoint() {
        print("(\(self.myX),\(self.myY))")
    }
    
    mutating func setX(x: Float){
        self.myX = x
    }
    
    mutating func setY(y: Float){
        self.myY = y
    }
    
    
    // 다른 점과의 거리를 계산
    // sqrt(Float) -> 제곱근 구해주는 함수
    
    func getDistanceTo(toPoint: MyPoint) -> Float {
        let x = toPoint.myX - self.myX
        let y = toPoint.myY - self.myY
        
        let distance = sqrt(pow(x,2) + pow(y, 2))
        return distance
        
    }
    
}

var pointA = MyPoint(myX: 2.5, myY: 15.8)
pointA.printPoint()


//미션2. 메소드 추가하기
//setX(x : Float) 메서드와 setY(y: Float) 메서드를 추가하세요.
//
//setX는 myX값을 x로 바꾸고, setY는 myY값을 y로 바꾸세요.
//
//setX(x:15.2)와 setY(y:7.4)를 호출하세요.
//
//직접 print(“pointA=( )”) 형태로 x와 y 값을 가져와서 출력하세요.

pointA.setX(x: 15.2)
pointA.setY(y: 7.4)

print("pointA = (\(pointA.myX),\(pointA.myY))")

var pointB = MyPoint(myX: 15, myY: 12.2)
pointA.getDistanceTo(toPoint: pointB)


