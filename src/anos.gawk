BEGIN				                   { FS=";";
                                 print "<!DOCTYPE html><html>" > "out/html/anos.html";
                                 print "<head>" > "out/html/anos.html";
                                 print "<title>Anos</title>" > "out/html/anos.html";

                                 print "<meta name='viewport' content='width=device-width, initial-scale=1'>" > "out/html/anos.html";
                                 print "<style>.colunas { line-height: 200%; margin-left: 60px; -webkit-column-count: 3; -moz-column-count: 3; column-count:3; }</style>" > "out/html/anos.html";
                                 print "</head>" > "out/html/anos.html";

                                 print "<body>" > "out/html/anos.html";
                                 print "<h1><p align='center'><font color='#2874A6'>Anos das Cartas</font></p></h1>" > "out/html/anos.html";
                                 print "<br><br><br><br><br><div class='colunas'>" > "out/html/anos.html"
                               }

$0 ~ /[a-zA-Z]+/               { split($1, numero, "[ ]{2,10}");
                                 split($2, data, "[ ]{2,10}|[.]");
                                 split($4, titulo, "[ ]{2,10}");
                                 contaDatas[data[2]]++;

                                 if (contaDatas[data[2]] == 1) {
                                     printf("<li><a href='%s'>Cartas de %s</a></li>", "anos/" data[2]".html", data[2]) > "out/html/anos.html";
                                     printf("<h1><p align='center'><font color='#2874A6'>Cartas de %s</font></p></h1><br><br>",data[2]) > "out/html/anos/" data[2] ".html";
                                 };

                                 printf("<h3><li><font color='#85C1E9'>Carta número %s</font></li></h3>",numero[2]) > "out/html/anos/" data[2] ".html";

                                 print "<br><b>Mês:</b> "data[3] > "out/html/anos/" data[2] ".html";
                                 print "<br><b>Dia:</b> "data[4] > "out/html/anos/" data[2] ".html";
                                 print "<br><b>Título:</b> "titulo[2] > "out/html/anos/" data[2] ".html";
                                 print "<br><b>Resumo:</b> "> "out/html/anos/" data[2] ".html";
                                 for(i=6;i<=NF;i++) print $i > "out/html/anos/" data[2] ".html";
                                 print "<br><br><br><br><br>" > "out/html/anos/" data[2] ".html"
                                }


END                             { print "</div></body></html>" > "out/html/anos.html"; }
