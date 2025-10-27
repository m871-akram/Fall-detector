<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description texte="" courant="AFFICHER p"/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2etat="inactif" F2para="" F2lignes="" F2defaut=""/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurLigne="2" nbDecimales="8" maxBoucle="500000" epaisseurPoint="2" totalAffichages="1000" arrondiAuto="vrai" totalBoucles="5000000"/>
    <item algoitem="FONCTIONS_UTILISEES" code="200#declarationfonctions"/>
    <item algoitem="VARIABLES" code="100#declarationsvariables">
        <item algoitem="a EST_DU_TYPE NOMBRE" code="1#NOMBRE#a"/>
        <item algoitem="max EST_DU_TYPE NOMBRE" code="1#NOMBRE#max"/>
        <item algoitem="i EST_DU_TYPE NOMBRE" code="1#NOMBRE#i"/>
        <item algoitem="p EST_DU_TYPE NOMBRE" code="1#NOMBRE#p"/>
    </item>
    <item algoitem="DEBUT_ALGORITHME" code="101#debutalgo">
        <item algoitem="AFFICHER &quot;Entrer le nombre n°1 :&quot;" code="4#Entrer le nombre n°1 :#0"/>
        <item algoitem="LIRE a" code="2#a#pasliste"/>
        <item algoitem="max PREND_LA_VALEUR a" code="5#max#a#pasliste"/>
        <item algoitem="POUR i ALLANT_DE 2 A 20" code="12#i#2#20">
            <item algoitem="DEBUT_POUR" code="13#debutpour"/>
            <item algoitem="AFFICHER &quot;Entrez le nombre n°&quot;" code="4#Entrez le nombre n°#0"/>
            <item algoitem="AFFICHER i" code="3#i#0#pasliste"/>
            <item algoitem="AFFICHER &quot;: &quot;" code="4#: #0"/>
            <item algoitem="LIRE a" code="2#a#pasliste"/>
            <item algoitem="SI (a>max) ALORS" code="6#a>max">
                <item algoitem="DEBUT_SI" code="7#debutsi"/>
                <item algoitem="max PREND_LA_VALEUR a" code="5#max#a#pasliste"/>
                <item algoitem="p PREND_LA_VALEUR i" code="5#p#i#pasliste"/>
                <item algoitem="FIN_SI" code="8#finsi"/>
            </item>
            <item algoitem="FIN_POUR" code="14#finpour"/>
        </item>
        <item algoitem="AFFICHER &quot;Le plus grand nombre est :&quot;" code="4#Le plus grand nombre est :#0"/>
        <item algoitem="AFFICHER max" code="3#max#0#pasliste"/>
        <item algoitem="AFFICHER &quot;sa position est :&quot;" code="4#sa position est :#0"/>
        <item algoitem="AFFICHER p" code="3#p#0#pasliste"/>
    </item>
    <item algoitem="FIN_ALGORITHME" code="102#finalgo"/>
</Algo>
