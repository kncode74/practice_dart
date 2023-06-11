void main() {
  //Map<String, dynamic> คีย์จะเป็น String , ค่าที่อยู่ในคีย์จะเป็นอะไรก็ได้
  List<Map<String, dynamic>> data1 = [
    {'id': 1, 'name': 'Elephant', 'age': 50},
    {'id': 2, 'name': 'Dog', 'age': 5},
    {'id': 3, 'name': 'Cat', 'age': 5},
    {'id': 4, 'name': 'Ant', 'age': 1},
    {'id': 5, 'name': 'Alligator', 'age': 20},
    {'id': 6, 'name': 'Bird', 'age': 3},
    {'id': 7, 'name': 'Horse', 'age': 2},
    {'id': 8, 'name': 'Tiger', 'age': 24},
  ];
  List<List<int>> data2 = [
    [1, 2, 3],
    [4, 5, 6],
    [7, 8, 9],
  ];

  List<int> data3 = [1, 44, 5, 89, 100, 1, 44];
  //
  int numberAll = countNumbersDivisibleBy3Or5(1, 20);
  print("countNumbersDivisibleBy3Or5:$numberAll");
  //
  List<String> a = sortDataByAge(data1);
  print(a);
  //
  List<String> name = nameStartA(data1);
  print(name);
  
  //
  int maxnumber = find_the_largest_number_position(data3);
  print(maxnumber);

  //
  List<int> merge1 = mergeList(data2);
  print(merge1);


  
}

//ข้อที่ 1
//ให้หาจำนวนตัวเลขที่อยู่ระหว่าง 1 ถึง 20 ว่ามีเลขจำนวนกี่ตัวที่หาร 3 กับ 5 ลงตัว
int countNumbersDivisibleBy3Or5(int start, int end) {
  int count = 0;
  for (int i = start; i <= end; i++) {
    if (i % 3 == 0 || i % 5 == 0) {
      count++;
      //print(i); ตรวจสอบว่ามีจำนวนไหนบ้าง
    }
  }
  return count;
}

//ข้อที่ 3
//หาตำแหน่งตัวเลขที่มากที่สุด
int find_the_largest_number_position(List<int> data) {
  int maxnumber = data[0];
  int maxIndex = 0;
  for (int i = 1; i < data.length; i++) {
    if (data[i] > maxnumber) {
      maxnumber = data[i];
      maxIndex = i;
    }
  }
  return maxIndex;
}

//ข้อ 4 แปลงList 2 มิติ => 1 มิติ
List<int> mergeList(List<List<int>> inputList) {
  List<int> merge = [];

  for (var subsetOfList in inputList) {
    merge.addAll(subsetOfList);
  }
  return merge;
}

//ข้อที่2.2 ค้นหาชื่อที่มีตัว A นำหน้า
List<String> nameStartA(List<Map<String, dynamic>> data) {
  List<String> namesStartingWithA = [];

  for (var item in data) {
    String name = item['name'];
    if (name.startsWith('A')) {
      namesStartingWithA.add(name);
    }
  }
  return namesStartingWithA;
}

//ข้อ2.1
List<String> sortDataByAge(List<Map<String, dynamic>> data) {
  data.sort((a, b) => a['age'].compareTo(b['age']));
  List<String> names = [];
  for (var item in data) {
    if (item['age'] <= 20) {
      names.add(item['name']);
    }
  }

  return names;
}
