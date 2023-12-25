class Car {
  int id;
  String? model;
  String? color;
  double? price;
  Car({
    required this.id,
    this.model,
    this.color,
    this.price,
    }) ;

  Map carInfo() {
    Map<String, dynamic> info = {
      'id': id,
      'model': model,
      'color': color,
      'price': price,
    };
    return info;
  }

  String text() {
    return ' Welcome';
  }
}

class CarViews extends Car {
  int _view = 0;

  CarViews({required super.id, int view = 0}) : _view = view;

  int get view => _view;

  set view(int value) {
    _view = value;
  }

  void updateView() {
    _view++;
  }
}

class CarLikes extends Car {
  int _like = 0;
  CarLikes({required super.id, int like = 0}) : _like = like;
  int get like => _like;

  set like(int value) {
    _like = value;
  }

  void updateLike(int value) {
    _like += value;
  }
}

class UserReview extends Car {
  String _user;
  String _review;
  double _rate = 0;
  UserReview(
      {required super.id,
      required String user,
      required String review,
      double rate = 0})
      : _user = user,
        _review = review,
        _rate = rate;
  String get user => _user;

  set user(String value) {
    _user = value;
  }

  String get review => _review;

  set review(String value) {
    _review = value;
  }

  double get rate => _rate;

  set rate(double value) {
    _rate = value;
  }
}

class Order extends Car {
  String _user;
  int _orderQty;
  Order({required super.id, required String user, required int orderQty})
      : _user = user,
        _orderQty = orderQty;
  String get user => _user;

  set user(String value) {
    _user = value;
  }

  int get orderQty => _orderQty;

  set orderQty(int value) {
    _orderQty = value;
  }
  
  @override
  String text() {
    // TODO: implement text
    return super.text()+'  here your order';
  }


}
