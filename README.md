# Batch
**Zdravím všechny, kteří se přišli podívat zde, na tento GitHub. Nejsem žádný programátor, tyto programy vytvářím pouze jako experimenty, nebo abych si například usnadnil práci s nějakým problémem. Můžete se na tyto programy podívat, nebo mi napsat, co bych mohl zlepšit.**

Více informací o konkrétních programech naleznete níže.

Pokud byste mě chtěli kontaktovat, tak mi můžete napsat na e-mail: grizlik.smajlik@gmail.com

<br>

## Popis souborů:

**Attack:** Soubor, který používám, když chci otestovat náročnost antivirového programu. Vložím 3 viry na C:\ a tento program je poté kopíruje a spouští. Jelikož některé antiviry dovedou zdetekovat i viry na C:\ pouze podle přístupu k souborům, používám i další 2 programy "Copy" a "Start". Pokud antivirus vymaže soubory, které se ještě nespustily, tak se celý program zasekne. Soubor "StartNoError" tedy dovede viry spustit bez toho, aby se program zaseknul.

**Hádání číslic:** Jednoduchá hra, která vygeneruje náhodné číslo a uživatel se jej poté snaží uhodnout. Podobný soubor jsem použil i ve svém videu na vysvětlení, jak funguje trojský kůň.

**Hudba:** Když edituji videa na svůj YT kanál, tak si ukládám názvy všech písniček ve videu do souboru s názvem *[číslo videa]Hudba.txt*. Také, aby nebyla stejná písnička v několika videích po sobě, tak si otervřu i 5 předchozích souborů *Hudba.txt*. Pro usnadnění práce zadám do tohoto programu číslo videa a on mi sám otevře 5 předchozích souborů s názvem *[číslo]Hudba.txt* ve správném pořadí a dovede i vytvořit soubor s hudbou v aktuální složce.

**Instalátor:** Tento program vám umožní snadno nainstalovat vybrané programy. Pouze napíšete název programu, který chcete nainstalovat a tento Instalátor.bat za vás stáhne instalační soubor a spustí instalaci.

**Počet spuštění:** Tento program počítá, kolikrát byl spuštěn. Když ho spustíte poprvé, vypíše 1, když ho spustíte podruhé, vypíše 2 atd. Počet spuštění si ukládá do souboru *soubor.soubor*, pokud tedy potřebujete, aby váš program detekoval počet spuštění, můžete k tomu použít tento kód.

**Porovnávání složek:** Program sloužící k porovnání obsahů dvou složek. Program neporovnává obsah souborů, ale pouze jejich názvy. Narozdíl od programu pro nalezení duplikovaných souborů, tento program vypíše soubory, které jsou různé pouze z jedné složky.,

**Random:** Pomocí příkazu %random% mohu vygenerovat náhodné číslo od 0 do 32 769. Tento program porovná, jestli příkaz opravdu vygeneruje všechny tyto čísla. PS: Tento program běží opravdu dlouho (až v řádech dnů).

**Seřazení:** Pokud chcete přejmenovat hodně souborů na názvy: 1, 2, 3, ... tak vám v tom tento program pomůže. Soubory přejmenujete na název "a", který se změní na "a (1), a (2), a (3), ..." a tento program je poté přejmenuje na číselné názvy.

**Timer:** Tento program slouží k počítání časových úseků. Zadáte dobu jednoho úseku, časovou prodlevu mezi úseky, počet úseků a prodlevu přes startem počítání. Program poté bude zobrazovat světle modrou barvu před startem odpočtu, červenou barvu v době vámi měřeného úseku a zelenou barvu v době prodlevy mezi úseky.

**Videa:** Tento program používám, když převádím videa ze starého formátu *.mpg* na nový formát *.mp4*. Označím složky plné videí k převedení, ale poté potřebuji převedená videa zpět rozdělit do složek. Tento program porovná názvy .mpg videí a přesune .mp4 videa do odpovídající složky. Kód programu by šel napsat i lépe a je dost jednoúčelový, ale já tento program používám pouze pro řešení konkrétního problému.

**Vireb:** Jednoduchý program, který pouze mění název složky pořád dokola. Tento soubor nemá žádné praktické využití, možná tak, když chcete otestovat ochranu proti ransomwaru.

**Wifi password:** Program pro zjištění hesla od Wifi sítě. Zadáte název sítě a program vám vypíše heslo k té síti. *Heslo od sítě musí být uloženo v tom počítači, kde program spouštíte!* Pokud je tedy počítač připojený např. přes kabel a nikdy nebyl připojený k bezdrátové síti, tak to nebude fungovat.