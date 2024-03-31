class Car {
  String? image, brand, model, co2, fuelCons;
  int? price;

  Car(this.brand, this.co2, this.fuelCons, this.image, this.model, this.price);
}

List<Car> carList = [
  Car(
    'Bent Lye', 
    '77/km', 
    '5.5 L',
     'images/bentley.png',
      '3A 9200', 
      120
      ),
    Car(
      'Rolls Royce', 
      '77/km', 
      '5.5 L',
       'images/rolls_royce.png',
        '3A 9200',
         185
         ),
         Car(
      'Cadillac', 
      '77/km', 
      '5.5 L',
       'images/cadillac.png',
        '3A 9200',
         210
         ),
          Car(
      'Maserati', 
      '77/km', 
      '5.5 L',
       'images/maserati.png',
        '3A 9200',
         170
         ),


];
