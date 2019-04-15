BEGIN				       { total=0;
                             print "<!DOCTYPE html><html>" > "out/html/index.html";
                             print "<head>" > "out/html/index.html";
                             print "<title>PL</title>" > "out/html/index.html";
                             print "<meta name='viewport' content='width=device-width, initial-scale=1'>" > "out/html/index.html";
                             print "<style> .footer { position: fixed; left: 0; bottom: 0; width: 100%; } body { margin-right: 60px; } .totalcartas { margin-left: 50px; font-weight: bold; }</style>" > "out/html/index.html";
                             print "</head>" > "out/html/index.html";

                             print "<body>" > "out/html/index.html";
                             print "<h1><p align='center'><font color='#2874A6'>Processamento de Linguagens</font></p></h1>" > "out/html/index.html";
                             print "<h2><p align='center'><font color='#85C1E9'>GAWK</font></p></h2>" > "out/html/index.html";
                             print "<br><br>" > "out/html/index.html";

                             print "<div style='float: left; width: 45%;'>" > "out/html/index.html";
                             print "<ul>" > "out/html/index.html";
                             print "<li><b><h3><font color='#000000'>Cartas por Local e/ou Ano</b></font></h3></a></li>" > "out/html/index.html";
                             print "<p align='justify'><a href='contaLocais.html'><font color='#000000'>Número total de cartas por local</font></a>, <a href='contaAnos.html'><font color='#000000'>número total de cartas por ano</font></a> e <a href='contaLocaisAno.html'><font color='#000000'>número de cartas por local e ano.</font></a></p>" > "out/html/index.html";
                             print "</ul>" > "out/html/index.html";
                             print "</div>" > "out/html/index.html";

                             print "<div style='float: right; width: 45%;'>" > "out/html/index.html";
                             print "<ul>" > "out/html/index.html";
                             print "<li><a href='anos.html'><b><h3><font color='#000000'>Anos</b></font></h3></a></li>" > "out/html/index.html";
                             print "<p align='justify'>Todos os anos em que foram enviadas cartas, contendo em cada um dos anos o título e o resumo das cartas.</p>" > "out/html/index.html";
                             print "</ul>" > "out/html/index.html";
                             print "</div>" > "out/html/index.html";

                             print "<br><br><br><br><br><br><br><br><br>" > "out/html/index.html";

                             print "<div style='float: left; width: 45%;'>" > "out/html/index.html";
                             print "<ul>" > "out/html/index.html";
                             print "<li><a href='cartas.html'><b><h3><font color='#000000'>Cartas</b></font></h3></a></li>" > "out/html/index.html";
                             print "<p align='justify'>Lista de todas as cartas, cada uma identificada pelo número e associada (em pares Num-Nome) aos apelidos das pessoas envolvidas no assunto relatado.</p>" > "out/html/index.html";
                             print "</ul>" > "out/html/index.html";
                             print "</div>" > "out/html/index.html";

                             print "<div style='float: right; width: 45%;'>" > "out/html/index.html";
                             print "<ul>" > "out/html/index.html";
                             print "<li><a href='grafo.html'><b><h3><font color='#000000'>Grafo</b></font></h3></a></li>" > "out/html/index.html";
                             print "<p align='justify'>Grafo que relaciona cada autor (identificado pelo seu nome) com o destinatário (também identificado pelo nome).</p>" > "out/html/index.html";
                             print "</ul>" > "out/html/index.html";
                             print "</div>" > "out/html/index.html";

                             #print pagina do grafo.html
                             print "<h1><p align='center'><font color='#2874A6'>Grafo</font></p></h1>" > "out/html/grafo.html";
                             print "<center><img src='../grafo/grafo.png' alt='Grafo' width='1300' height='1100'></center>" > "out/html/grafo.html"
                            }

$0 ~ /[a-zA-Z]+/           { total++ }

END                        { print "<div class='footer'>" > "out/html/index.html";

                             print "<div class='totalcartas'>#"total " cartas</div>" > "out/html/index.html";
                             print "<p align='center'>Catarina Machado  &#149;  Gonçalo Faria  &#149;  João Vilaça</p>" > "out/html/index.html";

                             print "</div>" > "out/html/index.html";
                             print "</body></html>" > "out/html/index.html"
                            }
