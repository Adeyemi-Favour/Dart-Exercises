void main() {
  List man = [
    {
      'Albert Einstein': '4/20/2001',
      'Benjamin Franklin': '01/17/1706',
      'Ada Lovelace': '06/07/2001'
    }
  ];
  for (var item in man) {
    print(item['Albert Einstein']);
  }
}
  