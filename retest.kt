class TestPractice {

    @Test
    fun findNumberLessThan5() {

        val list: MutableList<Int> = mutableListOf()
        val a: List<Int> = (1..20).toList()

        for (number in a) {
            if (number < 5) {
                list.add(number)

            }
        }
        assertEquals(listOf(1, 2, 3, 4), list)

    }


    @Test
    fun differentElementLists() {
        val a: List<Int> = listOf(1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 89)
        val b: List<Int> = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9, 10, 11, 12, 13)

        val intersectionList: List<Int> = (a.toSet().intersect(b.toSet()).toList())
        assertEquals(listOf(1, 2, 3, 5, 8, 13), intersectionList)
    }

    @Test
    fun evenElement() {
        val a: List<Int> = listOf(1, 4, 9, 16, 25, 36, 49, 64, 81, 100)
        val result: MutableList<Int> = mutableListOf()

        for (number in a) {
            if (number % 2 == 0) {
                result.add(number)
            }
        }
        assertEquals(listOf(4, 16, 36, 64, 100), result)
    }

    @Test
    fun firstAndLastElement() {
        val a: List<Int> = listOf(5, 10, 15, 20, 25)

        assertEquals(listOf(5, 25), listOf(a.first(), a.last()))
    }

    @Test
    fun middleElement() {
        val a: List<Int> = listOf(5, 10, 15, 20, 25, 30)

        assertEquals(20, a[a.size / 2])
    }

    @Test
    fun getOddNumbers() {
        val a = listOf(1, 2, 3, 4, 5, 6, 7, 8, 9)
        val result: MutableList<Int> = mutableListOf()

        for (number in a) {
            if (number % 2 == 0) return
            result.add(number)
        }
        assertEquals(listOf(1, 3, 5, 7, 9), result)
    }

    @Test
    fun sumOfMultiplesOf3or5() {

        var result = 0

        for (i in 0..10) {
            if (i % 3 == 0 || i % 5 == 0) {
                result += i
            }
        }
        assertEquals(33, result)
    }

    @Test
    fun sortWords() {
        val words = listOf("banana", "apple", "cherry", "date")


        assertEquals(listOf("apple", "banana", "cherry", "date"), words.sorted())
    }

    @Test

    fun findDuplicate() {
        val numbers = listOf(1, 2, 3, 2, 3, 4, 5, 6, 5)
        val duplicates = numbers.groupBy { it }
            .filter { it.value.size > 1 }
            .keys.toList()
        assertEquals(listOf(2, 3, 5), duplicates)


    }

}
