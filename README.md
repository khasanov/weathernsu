weathernsu
===========

KDE plasmoid that displays current temperature near Novosibirsk State University


Data source is [weather.nsu.ru](http://weather.nsu.ru/xml_brief.php)

>       <weather type="3" start_timestamp="1372663280" stop_timestamp="1372922480">
        <average>16.815</average>
        <current>24.71</current>
        <graph>
          <temp timestamp="1372922480">24.71</temp>
        </graph>
      </weather>



INSTALL
-------

You can install plasmoid just temporary:
$ plasmapkg --install /path/to/weathernsu


Or you can use cmake as usual

cd weathernsu
mkdir build
cd build
cmake ..
make
make install



COPYING / LICENSE
-----------------

The MIT License (MIT)
Copyright (c) 2013 Sergey A. Khasanov <s.a.khasanov@gmail.com>

Permission is hereby granted, free of charge, to any person obtaining
a copy of this software and associated documentation files (the
"Software"), to deal in the Software without restriction, including
without limitation the rights to use, copy, modify, merge, publish,
distribute, sublicense, and/or sell copies of the Software, and to
permit persons to whom the Software is furnished to do so, subject to
the following conditions:

The above copyright notice and this permission notice shall be
included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED "AS IS", WITHOUT WARRANTY OF ANY KIND,
EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF
MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND
NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE
LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION
OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION
WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.


Фото для миниатюры взято из [архива СО РАН](http://soran1957.ru)