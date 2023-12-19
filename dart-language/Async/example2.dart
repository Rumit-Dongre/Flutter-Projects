// Future Chaining
void main() async {
  // final length = await calculate(await getFullName());
  // print(length);

  // @ 2nd way

  final l = await getFullName().then((value) => calculate(value));
  print(l);
}

Future<String> getFullName() => Future.delayed(
      Duration(seconds: 1),
      () => "Johm Doe",
    );
Future<int> calculate(String value) => Future.delayed(
      Duration(seconds: 1),
      () => value.length,
    );
