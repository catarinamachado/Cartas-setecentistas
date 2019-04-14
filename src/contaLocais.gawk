BEGIN				                            { FS=";";
                                          print "<!DOCTYPE html><html>" > "out/html/contaLocais.html";
                                          print "<head>" > "out/html/contaLocais.html";
                                          print "<title>Cartas por Local</title>" > "out/html/contaLocais.html";
                                          print "</head>" > "out/html/contaLocais.html";

                                          print "<body>" > "out/html/contaLocais.html";
                                          print "<h1><p align='center'><font color='#2874A6'>Cartas por Local</font></p></h1>" > "out/html/contaLocais.html"
                                        }

$3 !~ /[a-zA-Z]+/ && $3 ~ /[ ]+/        { contaLocais["NIL"]++ }

$3 ~ /[a-zA-Z]+/                        { split($3, local, "[ ]{2,10}|]");
                                          gsub(" ", "", local[2]);   #para tirar os espaços no final da linha
                                          gsub(",", ", ", local[2]); #e manter o espaço depois da vírgula
                                          contaLocais[local[2]]++
                                        }

END                                     { for(l in contaLocais){
                                            number = contaLocais[l];
                                            if(n == "1")
                                              {print "<li><b>"l" -> </b> "number" carta</li><br>" > "out/html/contaLocais.html"}
                                            else
                                              {print "<li><b>"l" -> </b> "number" cartas</li><br>" > "out/html/contaLocais.html"}
                                          };
                                          print "</body></html>" > "out/html/contaLocais.html"
                                        }
