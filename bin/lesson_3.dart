import 'package:collection/collection.dart';

void main() {
  taskOne();
  taskTwo();
  taskThree();
  taskFour();
}

taskOne() {
  List<String> cityNames = [
    'London',
    'Paris',
    'Amsterdam',
    'Berlin',
    'Copenhagen',
    'Stockholm',
    'Helsinki',
    'Tallin',
    'Riga',
    'Kyiv'
  ];
  print('Початковий список: $cityNames');
  cityNames.add('Oslo');
  print('Після додавання нового елемента: $cityNames');
  cityNames.removeAt(2);
  print('Після видалення елемента: $cityNames');
  cityNames.sort();
  print('Після сортування: $cityNames');
  List<String> upperCaseCityNames =
      cityNames.map((cityNames) => cityNames.toUpperCase()).toList();
  print('Новий список з елементами у верхньому регістрі: $upperCaseCityNames');
  print('Початковий список після всіх змін: $cityNames');
}

taskTwo() {
  Set<int> Numbers_A = {1, 3, 5, 7};
  Set<int> Numbers_B = {3, 5, 8, 10};
  Set<int> unionSet = Numbers_A.union(Numbers_B);
  print('Об\'єднання: $unionSet');
  Set<int> differenceSet = Numbers_A.difference(Numbers_B);
  print('Різниця: $differenceSet');
  Set<int> intersectionSet = Numbers_A.intersection(Numbers_B);
  print('Перетин: $intersectionSet');
}

taskThree() {
  Map<String, int> studentsRating = {'Оля': 85, 'Максим': 90, 'Анна': 78};
  studentsRating['Олександр'] = 87;
  studentsRating['Оля'] = 100;
  studentsRating.remove('Максим');
  print('Записи студентів:');
  studentsRating.forEach((name, rating) {
    print('$name; $rating');
  });
  double averageRating =
      studentsRating.values.reduce((a, b) => a + b) / studentsRating.length;
  print('Середня оцінка: ${averageRating.toStringAsFixed(2)}');
}

taskFour() {
  Map<String, int> studentsRating = {
    'Оля': 85,
    'Максим': 90,
    'Анна': 78,
    'Іван': 78
  };
  var groupedByGrade = groupBy(studentsRating.entries, (entry) => entry.value);
  groupedByGrade.forEach((grade, students) {
    var studentNames = students.map((entry) => entry.key).toList();
    print('Оцінка $grade: $studentNames');
  });
}
