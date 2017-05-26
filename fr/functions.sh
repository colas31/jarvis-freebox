#! /bin/bash
# Here you can create functions which will be available from the commands file
# You can also use here user variables defined in your config file
freeboxNumber=1
freeboxRemoteCode=14765144
freeboxUrl="http://hd$freeboxNumber.freebox.fr/pub/remote_control?code=$freeboxRemoteCode&key="
#freeboxUrl="http://$freeboxNumber.freebox.fr/pub/remote_control?code=$freeboxRemoteCode&key=<bouton>&long=<long>"

callFreeboxUrl() {

    freeboxFinalUrl=$freeboxUrl$1
    if [ $2 ]
    then
        freeboxFinalUrl=$freeboxFinalUrl'&long=true'
    fi
    echo $freeboxFinalUrl
    curl -L -s $freeboxFinalUrl
}

# Table to match between an integer and a string
getNumberIntFromStr(){
    if [ "un" == "$1" ]
    then
       echo 1
    elif [ "deux" == "$1" ] || [ "de" == "$1" ]
    then
       echo 2
    elif [ "trois" == "$1" ] || [ "troie" == "$1" ]
    then
       echo 3
    elif [ "quatre" == "$1" ]
    then
       echo 4
    elif [ "cinq" == "$1" ]
    then
       echo 5
    elif [ "six" == "$1" ]
    then
       echo 6
    elif [ "sept" == "$1" ] || [ "cette" == "$1" ] || [ "cet" == "$1" ]
    then
       echo 7
    elif [ "huit" == "$1" ]
    then
       echo 8
    elif [ "neuf" == "$1" ]
    then
       echo 9
    elif [ "dix" == "$1" ] || [ "dis" == "$1" ] || [ "dit" == "$1" ]
    then
       echo 10
    elif [ "onze" == "$1" ]
    then
       echo 11
    elif [ "douze" == "$1" ]
    then
       echo 12
    elif [ "treize" == "$1" ]
    then
       echo 13
    elif [ "quatorze" == "$1" ]
    then
       echo 14
    elif [ "quinze" == "$1" ]
    then
       echo 15
    elif [ "seize" == "$1" ]
    then
       echo 16
    elif [ "dix sept" == "$1" ] || [ "dix-sept" == "$1" ] || [ "dix cette" == "$1" ] || [ "dis sept" == "$1" ] || [ "dit sept" == "$1" ] || [ "dix cet" == "$1" ] || [ "dis cette" == "$1" ] || [ "dis cet" == "$1" ] || [ "dit cette" == "$1" ] || [ "dit cet" == "$1" ]
    then
       echo 17
    elif [ "dix huit" == "$1" ] || [ "dix-huit" == "$1" ] || [ "dis huit" == "$1" ] || [ "dit huit" == "$1" ]
    then
       echo 18
    elif [ "dix neuf" == "$1" ] || [ "dix-neuf" == "$1" ] || [ "dis neuf" == "$1" ] || [ "dit neuf" == "$1" ]
    then
       echo 19
    elif [ "vingt" == "$1" ] || [ "vin" == "$1" ] || [ "vain" == "$1" ]
    then
       echo 20
    elif [ "vingt-et-un" == "$1" ] || [ "vingt et un" == "$1" ] || [ "vin et un" == "$1" ] || [ "vain et un" == "$1" ] || [ "vain est un" == "$1" ] || [ "vin est un" == "$1" ] || [ "vain est un" == "$1" ]
    then
       echo 21
    elif [ "vingt-deux" == "$1" ] || [ "vingt deux" == "$1" ] || [ "vin deux" == "$1" ] || [ "vain deux" == "$1" ] || [ "vain de" == "$1" ] || [ "vin de" == "$1" ] || [ "vingt de" == "$1" ]
    then
       echo 22
    elif [ "vingt-trois" == "$1" ] || [ "vingt trois" == "$1" ] || [ "vin trois" == "$1" ] || [ "vain trois" == "$1" ] || [ "vin troie" == "$1" ] || [ "vain troie" == "$1" ] || [ "vingt troie" == "$1" ]
    then
       echo 23
    elif [ "vingt-quatre" == "$1" ] || [ "vingt quatre" == "$1" ] || [ "vin quatre" == "$1" ] || [ "vain quatre" == "$1" ]
    then
       echo 24
    elif [ "vingt-cinq" == "$1" ] || [ "vingt cinq" == "$1" ] || [ "vin cinq" == "$1" ] || [ "vain cinq" == "$1" ]
    then
       echo 25
    elif [ "vingt-six" == "$1" ] || [ "vingt six" == "$1" ] || [ "vin six" == "$1" ] || [ "vain six" == "$1" ]
    then
       echo 26
    elif [ "vingt-sept" == "$1" ] || [ "vingt cette" == "$1" ] || [ "vingt cet" == "$1" ] || [ "vin sept" == "$1" ] || [ "vin cette" == "$1" ] || [ "vin cet" == "$1" ] || [ "vain sept" == "$1" ] || [ "vain cette" == "$1" ] || [ "vain cet" == "$1" ]
    then
       echo 27
    elif [ "vingt-huit" == "$1" ] || [ "vingt huit" == "$1" ] || [ "vin huit" == "$1" ] || [ "vain huit" == "$1" ]
    then
       echo 28
    elif [ "vingt-neuf" == "$1" ] || [ "vingt neuf" == "$1" ] || [ "vin neuf" == "$1" ] || [ "vain neuf" == "$1" ]
    then
       echo 29
    elif [ "trente" == "$1" ]
    then
       echo 30
    else
       echo "$1"
    fi
}



changeChaine(){
    tvInt=$(getNumberIntFromStr $1)

    if [ $tvInt -lt 10 ]
    then
        callFreeboxUrl $tvInt
   else
        dizaine=$(echo $tvInt | cut -c1)
        unite=$(echo $tvInt | cut -c2)
        callFreeboxUrl $dizaine true
        callFreeboxUrl $unite
    fi
}

zappingVar=0;

zappingWrapper() {
    echo $zappingVar
    zappingVar=1
    echo "zappingWrapper"
    zapping $1 &
    # Save progress() PID
    # You need to use the PID to kill the function
    MYSELF=$!
    echo $MYSELF > './tmp'
}

zapping() {
    for i in ` seq -w 1 $1`; do
    echo $zappingVar
        if [ $zappingVar -eq 0 ]
        then
            echo "touto"
            return;
        fi
        # remove leading 0
        channel=$(echo $i | awk '{print $1 + 0}')
        changeChaine $channel
        sleep 2
    done
}

stopzapping() {
    echo "stopzapping"
    zappingVar=0;
     echo $zappingVar
     # Kill progress
    kill $(cat ./tmp) >/dev/null 2>&1
}


changeChaineFromName() {

echo $1
if [[ $1 =~ .*France.* ]]
then
echo 'ok'
chaine=$(echo $1 | cut -d' ' -f2)
changeChaine $chaine
fi

#    if [ "TF1" == $1 ] || [ "TFR" == $1 ] || [ "TF un" == $1 ]
#    then
#       echo 1
#    elif [[ $$1 =~ .*France.* ]]
#    then
#       echo "France"
#    elif [ "france trois" == $1 ]
#   then
#       echo 30
#    else
#       echo $1
#    fi

#    changeChaine $number

}
#callFreeboxUrl 'power'
#changeChaine 12
#changeChaine 30
#changeChaine 1
#changeChaine 6
#changeChaineFromName "France deux"
#changeChaineFromName "France 4"
#changeChaineFromName "France quatre"
#changeChaineFromName "France 2"

