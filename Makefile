# Определение компилятора (gcc для Linux, g++ для Windows)
CXX=gcc

# Определение команды удаления и расширение файла в зависимости от ОС
ifeq ($(OS),Windows_NT)
	RM=del
	EXT=.exe
else
	RM=rm
	EXT=

endif
#Правило сборки исполняемого файла из объектных.
#CXX - переменная для команды компилятора. (По умолчанию g++.)
objects=m.o kva.o

m.exe: $(objects)
	$(CXX) -o m.exe $(objects)
	
#Правило компиляции исходного файла с завизимостью от заголовочного файла в объектный
m.o: m.c kva.h
	$(CXX) -c m.c

#Правило компиляции исходного файла в объектный
kva.o: kva.c
	$(CXX) -c kva.c

#Фиктивное правило для очистки каталога от созданных в процессе сборки файлов.
#Для его вызова нужно указать clean после команды make.

#Пример теста листинга 1.1 со стр. 22
l101022o=L101_022.o L101_022test.o
L101022.exe: $(l101022o)
	$(CXX) -o L101022.exe $(l101022o)

L101_022.o: L101_022.c
	$(CXX) -c L101_022.c

L101_022test.o: L101_022test.c L101_022.h
	$(CXX) -c L101_022test.c

# L110_034
l110034o=L110_034.o increment.o
L110_034.exe: $(l110034o)
	$(CXX) -o L110_034.exe $(l110034o) 
L110_034.o: L110_034.cpp increment.cpp 
	$(CXX) -c L110_034.cpp 

# Компиляция ins
increment.o: increment.cpp
	$(CXX) -c increment.cpp 




.PHONY: clean
clean:
	$(RM) $(objects) $(l101022o) m.exe L101022.exe