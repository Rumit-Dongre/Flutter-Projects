void main(List<String> args) {
  Map<String, dynamic> obj = {
    "products": [
      {
        "id": 1,
        "title": "iPhone 9",
        "description": "An apple mobile which is nothing like apple",
        "price": 549,
      },
      {
        "id": 1,
        "title": "iPhone 9",
        "description": "An apple mobile which is nothing like apple",
        "price": 549,
      }
    ]
  };

  List arr = [];
  print(obj['products']);

  arr.add(obj['products']);

  print(arr);
}
