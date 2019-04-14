BEGIN				       { FS=";";
                             print "digraph{" > "out/grafo/grafo.dot";
                             print "\trankdir=LR;" > "out/grafo/grafo.dot";
                           }

$0 ~ /[a-zA-Z]+/           { split($4, autores, "Carta de | que o |[cC]arta do |Requerimento do | dad[ao] pelo ");
                             gsub(" a um | a | dá ao | ao | aos ", "\" -> \"", autores[2]);

                             if(autores[2] !~ "->"){
                                unknown(autores);
                             } else {
                                print "\t\""autores[2]"\";" > "out/grafo/grafo.dot";
                             }
                           }

END                        { print "}\n" > "out/grafo/grafo.dot"
                           }


function unknown(autores)
{
    #unknow destinatário
    if(autores[2] ~ /[a-zA-Z]+/){
        print "\t\""autores[2]"\" -> \"Desconhecido\";" > "out/grafo/grafo.dot";
    }

    #unknow remetente
    if(autores[1] ~ " ao "){
        split(autores[1], autor, "Carta ao |Carta enviada ao | que ficaram ");
        print "\t\"Desconhecido\" -> \""autor[2]"\";" > "out/grafo/grafo.dot";
    }
}
