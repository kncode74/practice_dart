Dart

1. ให้หาจำนวนตัวเลขที่อยู่ระหว่าง 1 ถึง 20 ว่ามีเลขจำนวนกี่ตัวที่หาร 3 กับ 5 ลงตัว

Expect: 9

2. List<Map<String, dynamic>> data = [ 

    {'id': 1, 'name': 'Elephant', 'age': 50}, 

    {'id': 2, 'name': 'Dog', 'age': 5}, 

    {'id': 3, 'name': 'Cat', 'age': 5}, 

    {'id': 4, 'name': 'Ant', 'age': 1}, 

    {'id': 5, 'name': 'Alligator', 'age': 20}, 

    {'id': 6, 'name': 'Bird', 'age': 3}, 

    {'id': 7, 'name': 'Horse', 'age': 2}, 

    {'id': 8, 'name': 'Tiger', 'age': 24}, 

  ]; 

 

 2.1 ให้แสดงชื่อสัตว์ที่มีอายุไม่เกิน 20 ปี และเรียงลำดับอายุจากน้อยไปมาก

 Expect: [Ant, Horse, Bird, Dog, Cat, Alligator]

 2.2 ให้แสดงชื่อสัตว์ที่ขึ้นต้นด้วยตัว ‘A’
 Expect: [Ant, Alligator]

3. ให้หาตำแหน่งตัวที่มากที่สุดใน Array 

List<int> data = [1,44,5,89,100, 1, 44];
Expect: 4

4. ให้แปลงข้อมูลจาก 

List<List<int>> data = [ 

    [1,2,3], 

    [4,5,6], 

    [7,8,9], 

  ]; 

เป็น [1, 2, 3, 4, 5, 6, 7, 8, 9]

แต่ละข้อให้ทำแยกเป็นฟังก์ชั่น
