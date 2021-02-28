## Задача №3:
#
# Джон добрался до этажа с бомбой, но у него на пути стоит дверь с кодовым замком и рядом бумажка с инструкциями (файл data/3.txt)
#
# Чтобы узнать код от замка, ему нужно для каждой строки найти разницу между наибольшим и наименьшим числами и потом сложить полученные значения
#
## Требования к решению:
# - Входные данные находятся в файле data/3.txt (разделитель значений - символ табуляции)
# - Результат должен быть выведен в консоль командой puts
#
## Решение:


file = File.open("data/3.txt")
file_data = file.read

str = ''
table = Array.new(16) { Array.new(16) { 0 } }

j, k = 0, 0

for i in 0..file_data.size

  if file_data[i] == "\t"
    table[j][k] = str.to_i
    str = ""
    k += 1
  elsif file_data[i] == "\n"
    table[j][k] = str.to_i
    str = ""
    k = 0
    j += 1
  elsif file_data[i] == nil
  else
      str += file_data[i]
  end
end

answer = 0
for i in 0..15
  answer += (table[i].max - table[i].min)
end

puts answer
