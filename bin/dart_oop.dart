import 'package:dart_oop/dart_oop.dart' as dart_oop;

import 'car.dart';

void main(List<String> arguments) {
  var car =
      Car(id: 1, model: 'Toyota yaris', color: 'red', price: 300);


  var carViews = CarViews(id: 1, view: 12);
  var carLikes = CarLikes(id: 1, like: 25);
  var userReview =
      UserReview(id: 1, user: 'Gehad', review: 'comfortable', rate: 5);
  var order = Order(
    id: 1,
    user: 'Badr',
    orderQty: 2,
  );
  print('My car is :-------------');
  print(car.carInfo());
  print('Viwes : ${carViews.view}');
  carViews.updateView();
  print('Viwes update : ${carViews.view}');
  print('Likes : ${carLikes.like}');
  carLikes.updateLike(5);
  print('Likes update : ${carLikes.like}');
  print('Reviwes :-------------');
  print(
      '   User :${userReview.user} ===> rate :${userReview.rate} ***** ===> review : ${userReview.review}');
  print('Orders :-------------');
  print('   User :${order.user} ===> qty :${order.orderQty}');
  print('override :-------------');
  print(order.text());


}
