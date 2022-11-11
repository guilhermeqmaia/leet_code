void main() {
  ParkingSystem parkingSystem = ParkingSystem(1, 1, 0);
  print(parkingSystem.addCar(1));
  print(parkingSystem.addCar(2));
  print(parkingSystem.addCar(3));
  print(parkingSystem.addCar(1));
}

class ParkingSystem {
  int big;
  int medium;
  int small;
  ParkingSystem(this.big, this.medium, this.small) {}

  bool addCar(int carType) {
    if (carType == 1) {
      if (big == 0) return false;
      big--;
      return true;
    } else if (carType == 2) {
      if (medium == 0) return false;
      medium--;
      return true;
    } else {
      if (small == 0) return false;
      small--;
      return true;
    }
  }
}
