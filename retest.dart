void main() {
  test('number less than 5', () {
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];
    a.forEach((number) {
      if (number < 5) print(number);
    });
  });

  test('different element lists', () {
    List<int> a = [1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89];

    List<int> b = [1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13];
    print(Set.of(a).intersection(Set.of(b)));
  });

  test('even element', () {
    List<int> a = [1, 4, 9, 16, 25, 36, 49, 64, 81, 100];

    print([
      for (int number in a)
        if (number % 2 == 0) number
    ]);
  });

  test('generate number', () {
    var r = Random();
    print(r.nextInt(100));
  });

  test('first last element', () {
    List<int> a = [5, 10, 15, 20, 25];

    print((a.first, a.last));
  });
  test('description', () {
    print('Please enter number');
    var number = int.parse(stdin.readLineSync() ?? '');
  });

  test('1-20 mode 3 and 5 ลงตัว', () {
    int count = 0;
    for (var i = 1; i <= 20; i++) {
      if (i % 3 == 0 || i % 5 == 0) count++;
    }
    print(count);
  });
}
