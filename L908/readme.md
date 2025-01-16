main.cpp:

Ввод количества рёбер графа и самих рёбер (в виде пар вершин).
Вызывает функцию VertexCover, передавая ей список рёбер.
l908.cpp:

Реализует функцию VertexCover:
Итеративно выбирает ребро графа и добавляет его концы в множество покрытия (cover).
Удаляет из графа все рёбра, инцидентные выбранным вершинам.
Выводит вершины, входящие в покрытие (Vertex Cover).
l908.h:

Заголовочный файл, содержит объявление функции VertexCover, чтобы её можно было использовать в других модулях.
Makefile:

Определяет правила сборки программы:
Компилирует исходные файлы (L908_368.cpp и L908.cpp) в объектные файлы.
Линкует объектные файлы для создания исполняемого файла L908_368.