## Kompilacja z poziomu Linux-a ##
Na początku uruchamiamy konsolę i wydajemy polecenie:
```
svn checkout http://shoockos.googlecode.com/svn/trunk/ shoockos-read-only
```
I czekamy aż się ściągną źródła najnowszej wersji systemu.
Następnie przechodzimy do katalogu "shoockos-read-only" poleceniem:
```
cd shoockos-read-only
```
Teraz musimy zalogować się na root-a. Robimy to poleceniem:
```
sudo -s
```
i podajemy hasło.
Następnie musimy uruchom plik "build-linux.sh" robimy to poleceniem:
```
./build-linux.sh
```
i czekamy aż się pojawi mniej więcej coś takiego:

mkdosfs 2.11 (12 Mar 2005)<br>
1+0 records in<br>
1+0 records out<br>
>>> Done!<br>

Jeśli pojawiło tobie coś się w tym stylu, to oznacza, że kompilacja przebiegła bezproblemowo.<br>
<br>
<h2>Kompilacja z poziomu Windowsa</h2>
Na początku ściągamy źródła z svn. Potem musimy ściągnąć program imdisk stąd:<br>
<pre><code>http://www.ltr-data.se/files/imdiskinst.exe<br>
</code></pre>
I instalujemy program ImDisk. Następnie przechodzimy do folderu ze źródłami. Uruchamiamy program:<br>
<pre><code>build-windows.bat<br>
</code></pre>
Jeśli pokaże się coś mniej więcej takiego:<br>
<br>
Created device 0: B: -> bin\os.img<br>
Liczba skopiowanych plików:         1.<br>
programs\fileman.bin<br>
programs\hello.bin<br>
Liczba skopiowanych plików:         2.<br>
Sending device removal notifications...<br>
Flushing file buffers...<br>
Locking volume...<br>
Failed, forcing dismount...<br>
Removing device...<br>
Removing mountpoint...<br>
OK.<br>
Done!<br>
Aby kontynuować, naciśnij dowolny klawisz . . .<br>

To oznacza, że kompilacja przebiegła pomyślnie.