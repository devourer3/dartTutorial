// https://dart-ko.dev/language/metadata

class Point {
  @Deprecated('borderLineType is deprecated, use borderLine')
  late final String borderLineType;

  late final String borderLine;
}

@Todo('who one', 'what two')
void todoSomething() {
  print('Do something');
}

class Todo {
  final String who;
  final String what;
  const Todo(this.who, this.what);
}

void main() {
  Point p = Point();
  p.borderLineType = '10';
  todoSomething();
}