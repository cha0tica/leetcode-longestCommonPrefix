Longest Common Prefix

Описание задачки:
Дается массив с несколькими словами (strs: [String]). Нужно найти общий префикс (первые буквы) у этих слов. Если общего префикса нет, нужно вернуть пустую строчку «»


Пример:
Input: strs = ["flower","flow","flight"]
Output: "fl"


Как решала:

1. Нужно убедиться: что наш массив не пустой. Делаем это с помощью guard. Если он пустой, возвращаем пустую строчку.
guard strs.count != 0 else { return "" }

2. Я решила найти самое короткое слово в массиве, чтобы использовать его для выдачи результата.
var result = strs.sorted(by: { $0.count < $1.count })[0] 
(здесь массив strs отсортирован по количеству символов в элементе массива)

3. Начинаем проверять элементы в массиве strs с помощью цикла for in. Я пробовала проверять по самому короткому слову, делая количество повторов 1..короткоеСлово.count - 2, но код выдает ошибку, если в слове 2 буквы. Поэтому берем просто
for i in strs {

4. К каждому элементу применяем следующее условие - пока префикс не совпадает, выкидываем из нашего короткого слова по букве. Если они все не совпали - короткое слово окажется пустым. 
while !i.hasPrefix(result) {
result = String(result.dropLast())   
        }
5. Возвращаем переменную, в которой было короткое слово.
return (result)

6. Мы великолепны =)
