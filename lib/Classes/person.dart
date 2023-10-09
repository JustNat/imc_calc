class Person {
  String _name = '';
  double _weight = 0;
  double _height = 0;

  Person(String name, double weight, double height) {
    setName(name);
    setHeight(height);
    setWeight(weight);
  }

  String getName() {
    return _name;
  }

  void setName(String name) {
    _name = name;
  }

  double getWeight() {
    return _weight;
  }

  void setWeight(double weight) {
    _weight = weight;
  }

  double getHeight() {
    return _height;
  }

  void setHeight(double height) {
    _height = height;
  }
}