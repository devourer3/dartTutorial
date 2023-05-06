// https://dart-ko.dev/language/variables
void variable() {
  // 변수를 만들고 초기화 하는 예
  // var / dynamic / Object 는 컴파일러가 알아서 타입을 유추함.
  // 할당하지 않은 nullable 한 변수는 null (원시 변수도 마찬가지)

  var varEx = 10; // varEx 는 초기화 시 타입을 추론하고, 해당 타입이 고정된다.
  varEx = 'A'; // varEx 은 이미 int 타입으로 할당 되었으므로, String 으로 재할당이 불가하다.

  dynamic dynamicEx = 10; // dynamic 초기화 이후에도 다른 타입으로 언제든지 할당이 가능하다.
  dynamicEx = 'B'; // dynamicEx 는 어떠한 타입이든 할당이 가능
  print(dynamicEx + 10); // 그러나, 타입이 모호해 성질이 다른 타입과 충돌이 될 수 있음. 컴파일러 타입 체크도 통과되므로 사용자의 주의가 필요.

  Object objectEx = 10; // Object 는 어떤 값이든 할당이 가능. dynamic 과 비슷
  objectEx = 50; // Object 는 어떠한 타입이든 할당 가능
  print((objectEx as int) + 10); // 단, Object 는 컴파일러 타입 체크를 하므로, 캐스팅을 해주어야 함.

  int var4 = 10; // 타입 고정
  var4 = 'D' // 고정된 타입에 다른 타입을 할당하면 컴파일러 에러 발생

  // 늦은 초기화. 해당 변수를 사용할 때 초기화.
  // 초기화하는 데 비용이 많이 드는 경우 필요
  late String var5;
  print(var5); // 초기화 하기 전에 사용하면 에러 발생
  var5 = getLateInitStr();
  print('late 변수 $var5');

  // final, const 변수는 한번 할당하면 재할당은 불가

  // final 상수. 런타임 때 할당
  final String var6;
  var6 = 'final 변수';
  print('final 변수 $var6');

  // final 변수는, 재할당은 불가하지만 해당 객체의 필드는 추가/수정이 가능함.
  final var7 = ['El1', 'El2', 'El3'];
  var7.add('El4');
  var7.add('El5');
  print(var7);

  // const(컴파일 타임 상수) 상수, 컴파일 시에만 할당
  // 컴파일 시 할당하지 않으면 오류 발생
  const var8;
  const String var8 = 'const 변수';
  print('const 변수: $var8');

  // const 변수는 필드 변경이 불가능함.
  const List<String> var9 = ['Apple', 'Banana'];
  var9.add('Cinnamon'); // Unsupported operation: Cannot add to an unmodifiable list 에러 발생
  print(var9);

  // const 는 변수에 할당 할 때도 쓰일 수 있음
  var var10 = const ['const 변수1', 'const 변수2'];
}

String getLateInitStr() {
  return '늦은 초기화 반환';
}

main(List<String> arguments) async {
  variable();
}