BEGIN				                    { FS=";";
                                          print "<!DOCTYPE html><html>" > "out/html/contaAnos.html";
                                          print "<head>" > "out/html/contaAnos.html";
                                          print "<title>Cartas por Ano</title>" > "out/html/contaAnos.html";
                                          print "</head>" > "out/html/contaAnos.html";

                                          print "<body>" > "out/html/contaAnos.html";
                                          print "<h1><p align='center'><font color='#2874A6'>Cartas por Ano</font></p></h1>" > "out/html/contaAnos.html"
                                        }

$3 ~ /[a-zA-Z]+/                        { split($2, data, "[ ]{2,10}|[.]");
                                          contaAnos[data[2]]++
                                        }

END                                     { for(l in contaAnos){
                                            number = contaAnos[l];
                                            if(number == "1")
                                              {print "<li><b>"l" -> </b> "number" carta</li><br>" > "out/html/contaAnos.html"}
                                            else
                                              {print "<li><b>"l" -> </b> "number" cartas</li><br>" > "out/html/contaAnos.html"}
                                          };
                                          print "</body></html>" > "out/html/contaAnos.html"
                                        }
