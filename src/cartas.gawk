BEGIN				           { FS=";"
                                 print "<!DOCTYPE html><html>" > "out/html/cartas.html";
                                 print "<head>" > "out/html/cartas.html";
                                 print "<title>Cartas</title>" > "out/html/cartas.html";

                                 print "<meta name='viewport' content='width=device-width, initial-scale=1'>" > "out/html/cartas.html";
                                 print "<style>.colunas { line-height: 200%; margin-left: 60px; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2; } ul li { margin: 5px; padding: 0px; line-height: 80% }</style>" > "out/html/cartas.html";
                                 print "</head>" > "out/html/cartas.html";

                                 print "<body>" > "out/html/cartas.html";
                                 print "<h1><p align='center'><font color='#2874A6'>Listagem das cartas</font></p></h1>" > "out/html/cartas.html";
                                 print "<br><br><br><div class='colunas'>" > "out/html/cartas.html"
                               }

$0 ~ /[a-zA-Z]+/               { split($1, numero, "[ ]{2,10}");
                                 printf("<ul><h3><li><font color='#85C1E9'>Carta número %s</font></li></h3><ul>",numero[2]) > "out/html/cartas.html";

                                 split($5, apelidos, "[ ]{2,10}|:");
                                 for(a in apelidos){
                                     if(apelidos[a] ~ /[a-zA-Z]+/){
                                         print "<li>"numero[2]"-"apelidos[a]"</li><br>" > "out/html/cartas.html"
                                     }
                                 };

                                 print "</ul></ul>" > "out/html/cartas.html"
                                }


END                            { print "</div></body></html>" > "out/html/cartas.html" }
