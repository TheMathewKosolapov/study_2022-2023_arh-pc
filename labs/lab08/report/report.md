---
## Front matter
title: "Лабораторная работа №8"
subtitle: "Архитектура компьютера"
author: "Косолапов Матвей Эдуардович"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Изучить команды условного и безусловного перехода, приобрести навыки написания программ с использованием перехода, познакомиться с назначением и структурой файла листинга.

# Выполнение лабораторной работы

1. Создаем каталог для программ лабораторной работы №8, переходим в него и создаем файл lab8-1.asm (рис. [-@fig:001]):

![Создание каталога lab08 и файла lab8-1.asm](image/1.png){ #fig:001 width=70% }

2. Вводим в файл lab8-1.asm текст предложенной программы (рис. [-@fig:002]):

![Текст программы из листинга 8.1](image/2.png){ #fig:002 width=70% }

3. Создаем исполняемый файл и запускаем его(рис. [-@fig:003]):

![Создание исполняемого файла, проверка его работы](image/3.png){ #fig:003 width=70% }

4. Далее в текст программы после вывода сообщения №2 добавим инструкцию jmp с меткой _label1 и после вывода сообщения №1 добавим инструкцию jmp с меткой _end. Изменим текст программы в соответствии с листингом 8.2 (рис. [-@fig:004]):

![Изменяем текст программы в соответствии с листингом 8.2](image/4.png){ #fig:004 width=70% }

5. Создаем исполняемый файл и проверяем его работу (рис. [-@fig:005]):

![Создание исполняемого файла, проверка его работы](image/5.png){ #fig:005 width=70% }

6. Изменим текст программы, добавив и изменив инструкцию jmp, чтобы сообщения выводились с 3-го по 1-ый (рис. [-@fig:006]):

![Текст измененной программы](image/6.png){ #fig:006 width=70% }

7. Создаем исполняемый файл и проверяем его работу (рис. [-@fig:007]):

![Создание исполняемого файла. проверка его работы](image/7.png){ #fig:007 width=70% }

8. Создаем файл lab8-2.asm, вводим в него текст программы из листинга 8.3 (рис. [-@fig:008]):

![Текст программы из листинга 8.3](image/8.png){ #fig:008 width=70% }

9. Создаем исполняемый файл и проверяем его (рис. [-@fig:009]):

![Создание исполняемого файла, проверка его работы](image/9.png){ #fig:009 width=70% }

10. Далее создаем файл листинга для программы из файла lab8-2.asm.(рис. [-@fig:010]):

![Создание файла листинга](image/10.png){ #fig:010 width=70% }

11. Открываем файл листинга с помощью текстового редактора gedit. В строках 24, 25, 28 мы видим последовательно идущие номер строки, смещение машинного кода от начала текущего сегмента, машинный код(инструкции, используемые для разных целей), исходный текст программы(рис. [-@fig:011]):

![Открытие файла листинга](image/11.png){ #fig:011 width=70% }

12. Открываем файл с программой lab8-2.asm и на 14 строке удаляем операнд(рис. [-@fig:012] - рис. [-@fig:013]):

![Строка до удаления операнда](image/12.png){ #fig:012 width=70% }

![Строка после удаления операнда](image/13.png){ #fig:013 width=70% }

13. Создаём файл листинга, получаем сообщение об ошибке, заходим в созданный файл и видим ошибку(рис. [-@fig:014] - рис. [-@fig:015]):

![Ошибка при создании листинг-файла](image/14.png){ #fig:014 width=70% }

![Ошибка в самом файле на месте удалённого операнда](image/15.png){ #fig:015 width=70% }

***ЗАДАНИЯ ДЛЯ САМОСТОЯТЕЛЬНОЙ РАБОТЫ***

14. Пишем программу №1 для нахождения наименьшего числа среди чисел 79, 83, 41(6 вариант)(рис. [-@fig:017]):

![Программа №1 для нахождения наименьшего числа](image/17.png){ #fig:017 width=70% }

15. Создание исполняемого файла и проверка работы(рис. [-@fig:018]):

![Создание исполняемого файла, проверка его работы](image/18.png){ #fig:018 width=70% }

16. Пишем программу №2 по 6 варианту с предложенным условием(рис. [-@fig:019]):

![Программа №2](image/19.png){ #fig:019 width=70% }

17. Создание исполняемого файла и проверка работы(рис. [-@fig:020]):

![Создание исполняемого файла, проверка его работы](image/20.png){ #fig:020 width=70% }

# Выводы

В ходе данной лабораторной работы я изучил команды условного и безусловного перехода, приобрел навыки написания программ с использованием перехода, познакомился с назначением и структурой файла листинга.

# Список литературы{.unnumbered}

::: {#refs}
:::
