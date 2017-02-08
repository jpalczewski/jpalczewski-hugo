+++
categories = []
date = "2016-06-04T02:19:25+02:00"
description = ""
keywords = []
title = "Fajne rzeczy"
menu = "main"
weight = 40
+++
Fajne rzeczy, czyli wszystkie ukończone projekty z których jestem dumny.

# [JRotorMap](https://github.com/jpalczewski/JRotorMap)

Aplikacja stricte krótkofalarska - rozwiązuje drugi odwrotny problem geodezyjny(na podstawie dwóch współrzędnych oblicza odległość i azymut). Projekt zaliczeniowy na PROZy, dla prowadzącego był zdecydowanie nietypowy. 

# [Potential spoon](https://github.com/jpalczewski/potential-spoon)

Czyli zbiór Julii implementowany w MIPowym asemblerze(czyt. w oparciu o emulator napisany w Javie, czyli MARS). Ładne grafiki w repozytorium.

# [Animacja](https://github.com/jpalczewski/Animacja)

Aplikacja napisana w OpenGLu 3.3 na GKOMy - bez używania ładowania modeli było całkiem ciekawym przeżyciem - dość dużo korzystałem i całkiem miło wspominam [LearnOpenGL tutorial](http://www.learnopengl.com/).


# [Kalman](https://github.com/jpalczewski/Kalman)

Projekt na  [ZPRy](https://eres.elka.pw.edu.pl/eres/wwersje$.startup?Z_ID_PRZEDMIOTU=ZPR)(Całkiem fajne, polecam!) - aplikacja składała się z części pisanej w C++ i Pythonie(łączenie ich było... wymagające). Aplikacja robiła to na co wskazuje nazwa, czyli korzystała z filtra Kalmana do przewidywania danych z czujników.

Z ciekawszych wspomnień to przy tym projekcie odkryłem jak fajne potrafi być połączenie slack + jenkins + git - dzięki temu pisanie aplikacji na Linuxa i Windowsa jednocześnie było znacznie prostsze(a pisanie pod Windowsem w sensie MSVC a późniejsza kompilacja pod Linuxem ssie, bo obie implementacje C++ rozjeżdżają się w kilku miejscach - chociażby wspomnę o tym, że konstruktory `std::exception` w obu kompilatorach są zupełne różne).
