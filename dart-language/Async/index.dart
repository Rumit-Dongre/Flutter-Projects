void main() async {
  // @ Consume Future functions 
  print(await getUseName());
  print(await getAddress());
  print(await getPhoneNo());
  print(await getCity());
  print(await getCountry());
  print(await getzipCode());
}


// @ ways To Create a Future functions 
// String getName() => 'FooBar';
Future<String> getUseName() async => "John Doe";
Future<String> getAddress() => Future.value("123 main str");
Future<String> getPhoneNo() =>
    Future.delayed(Duration(seconds: 1), () => "555-555-555");

// Future<String> getPhoneNo1() => Future<String>.delayed(Duration(seconds: 1),()=> "555-555-555");

Future<String> getCity() async {
  await Future.delayed(Duration(seconds: 2));
  return "London";
}

Future<String> getCountry() async => "India";
Future<String> getzipCode() /*async*/ =>
    Future.delayed(Duration(seconds: 1), () => '1234');
