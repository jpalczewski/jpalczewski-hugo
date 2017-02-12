+++
Description = ""
date = "2017-02-12T12:56:41+01:00"
title = "Czujnik ds18b20 na rpi3"
categories = ["elektronika", "raspberrypi", "linux"]
tags = ["raspberrypi", "ds18b20"]

+++

Dokumentacja z uruchomienia czujnika temperatury na Raspberrym - udało się!

<!--more-->

# Set & settings

Dwa czujniki ds18b20 prosto z aliexpress(tutaj tylko napomknę że spotkałem oryginalne oznaczenie kabli - czerwony 3.3V, niebieski data, czarny masa). Parę godzin spędziłem na próbie ożenienia tego z kopią digisparka, ale to akurat nie był szczególnie dobry pomysł - [DigiCDC](https://digistump.com/wiki/digispark/tutorials/digicdc) wcina połowę dostępnej pamięci, a opcja z klawiaturą jest... specyficzna(ale w tym czasie okazało się że jeszcze czujnik miałem krzywo polutowany, więc próba komunikowania się z notatnikiem spełzała co najwyżej na informacji zwrotnej o braku dostępnych adresów 1W)

Toteż wybrałem inną drogą i spróbowałem uruchomić to poprzez malinę.

## Podłączenie do malinki

W moim przypadku wyglądało to tak:

{{< image src="/img/ds18b20-rpi3.jpg" scale="50%" >}}

Jeżeli chodzi o piny, to bez szaleństw - skorzystałem z domyślnych ustawień modułu 1W, czyli pin data poleciał na GPIO 4.
## Ustawienie samej malinki.

Bingo! Wpis na [blogu Łukasza Jokiela](https://blog.jokielowie.com/en/2016/03/domoticz-cz-4-podlaczenie-termometru-ds18b20-do-raspberry-pi/) w pełni wyczerpuje temat konfiguracji a instalacja domoticza na raspbianie jest turboprosta, także przejdę do pochwalenia się swoimi rezultatami.

Powtórzę tylko informację z komentarzy tamże - pole OWFS w nowszych wersjach domoticza powinno być puste.

# Showtime

## Pomiary na przestrzeni kilku dni

### Z mieszkania

{{< image src="/img/domoticz-1.png" scale="75%" >}}

### I zza okna

{{< image src="/img/domoticz-2.png" scale="75%" >}}

Gwoli ścisłości - pierwszego dnia chciałem sprawdzić czy czujnik działa i trzymałem go przez chwilę w zaciśniętej pięści. Fajnie byłoby mieć za oknem 30 stopni tak na chwilę...


# Podsumowanie

Pomijając już frajdę z samego lutowania(płytka to druga iteracja, pierwszą był pajączek zalany klejem - głupi pomysł) to korzystanie z ds18b20 sprawia dużo przyjemności. Aż chciałoby się zrobić własną stację pogodową, ale to może przy innej okazji...
