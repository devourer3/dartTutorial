// 산술 연산자
// https://dart-ko.dev/language/operators
void operation() {
  int a = 45;
  int b = 20;
  assert(a + b == 65); // 더하기
  print(a + b);
  assert(a - b == 25); // 빼기
  print(a - b);
  assert(a * b == 900); // 곱하기
  print(a * b);
  assert(a / b == 2.25); // 나누기
  print(a / b);
  assert(a % b == 5); // 나머지
  print(a % b);
  assert(a ~/ b == 2); // 나머지 제외한 몫
  print(a ~/ b);
}

// 타입 테스트 연산자
void typeCasting() {
  try {
    num numVar = 20; // num 타입은 모든 숫자의 조상
    int intVar = 10;
    String stringVar = '30';
    // num stringCastInt = stringVar as num; // as => 해당 타입을 다른 타입으로 캐스트. 단, 해당 타입이 서브타입으로 존재하는 경우만 캐스팅
    // print('stringCastInt: $stringCastInt');
    num stringParseInt = num.parse(stringVar); // 스트링을 캐스팅 할 때는 parse
    print('stringParseInt: $stringParseInt');
    double doubleCast = intVar as double;
    print('doubleCast $doubleCast');
    assert(numVar is num);
    assert(intVar is int);
    assert(intVar is! double);
    assert(stringVar is String); // stringType 이 num 타입이 아닌 경우
    assert(stringVar is! num); // stringType 이 num 타입이 아닌 경우
    // assert(intType is double);
  } on OutOfMemoryError catch (oomError) {
    print(oomError);
  } on ArgumentError catch (argError) {
    print(argError);
  } catch (e) {
    print(e);
  }
}

String conditionExample(String? name) => name ?? 'default Name';

void cascade() {
  // cascade 같은 객체에 연속적 명령을 적용.
  Point point = Point();
  point
    ..x = 10
    ..y = 20
    ..color = 'white'
    ..strokeCap = 'butt'
    ..strokeWidth = 30;
}

main() {
  operation();
  typeCasting();
  String defaultName = conditionExample(null);
  print(defaultName);
  String jamesName = conditionExample('James');
  print(jamesName);
  cascade();
}

class Point {
  late int x;
  late int y;
  late String color;
  late String strokeCap;
  late int strokeWidth;

// Point(this.x, this.y, this.color, this.strokeCap, this.strokeWidth);
}
