BEGIN				                         { FS=";";
                                          print "<!DOCTYPE html><html>" > "out/html/contaLocaisAno.html";
                                          print "<head>" > "out/html/contaLocaisAno.html";
                                          print "<title>Cartas por Local e Data</title>" > "out/html/contaLocaisAno.html";
                                          print "<meta name='viewport' content='width=device-width, initial-scale=1'>" > "out/html/contaLocaisAno.html";
                                          print "<style>.colunas { line-height: 200%; margin-left: 60px; -webkit-column-count: 2; -moz-column-count: 2; column-count: 2; }</style>" > "out/html/contaLocaisAno.html";
                                          print "</head>" > "out/html/contaLocaisAno.html";

                                          print "<body>" > "out/html/contaLocaisAno.html";
                                          print "<h1><p align='center'><font color='#2874A6'>Cartas por Local e Data</font></p></h1>" > "out/html/contaLocaisAno.html";
                                          print "<br><br><br><div class='colunas'>" > "out/html/contaLocaisAno.html"
                                        }

$3 !~ /[a-zA-Z]+/ && $3 ~ /[ ]+/        { split($2, data, "[ ]{2,10}|[.]");
                                          contaLocaisData["NIL:"data[2]]++
                                        }

$3 ~ /[a-zA-Z]+/                        { split($3, local, "[ ]{2,10}|]");
                                          split($2, data, "[ ]{2,10}|[.]");
                                          contaLocaisData[local[2]":"data[2]]++
                                        }

END                                     { j = 1;
                                          for (i in contaLocaisData){
                                             ind[j] = i;
                                             j++
                                          };

                                          n = asort(ind);  #sort array by indexes

                                          for (i = 1; i <= n; i++){
                                            a = gensub(/(.+):(.+)/, "\\1", "g", ind[i]);
                                            b = gensub(/(.+):(.+)/, "\\2", "g", ind[i]);

                                            print "<li><b>"a": Ano "b" -> </b>"contaLocaisData[ind[i]]" carta(s)</li></h4>" > "out/html/contaLocaisAno.html"
                                          };

                                          print "</div></body></html>" > "out/html/contaLocaisAno.html"
                                        }
