<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot; fois .&quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" totalAffichages="1000" maxBoucle="500000" epaisseurLigne="2" nbDecimales="8"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#i" algoitem="i EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#p" algoitem="p EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Entrer la valeur à comparer :#0" algoitem="AFFICHER &quot;Entrer la valeur à comparer :&quot;"/>
        <item code="2#a#pasliste" algoitem="LIRE a"/>
        <item code="5#p#0#pasliste" algoitem="p PREND_LA_VALEUR 0"/>
        <item code="12#i#2#20" algoitem="POUR i ALLANT_DE 2 A 20">
            <item code="13#debutpour" algoitem="DEBUT_POUR"/>
            <item code="4#Entrez le nombre n°#0" algoitem="AFFICHER &quot;Entrez le nombre n°&quot;"/>
            <item code="3#i#0#pasliste" algoitem="AFFICHER i"/>
            <item code="4#: #0" algoitem="AFFICHER &quot;: &quot;"/>
            <item code="2#b#pasliste" algoitem="LIRE b"/>
            <item code="6#b==a" algoitem="SI (b==a) ALORS">
                <item code="7#debutsi" algoitem="DEBUT_SI"/>
                <item code="5#p#p+1#pasliste" algoitem="p PREND_LA_VALEUR p+1"/>
                <item code="8#finsi" algoitem="FIN_SI"/>
            </item>
            <item code="14#finpour" algoitem="FIN_POUR"/>
        </item>
        <item code="4#Le nombre #0" algoitem="AFFICHER &quot;Le nombre &quot;"/>
        <item code="3#a#0#pasliste" algoitem="AFFICHER a"/>
        <item code="4#est répété #0" algoitem="AFFICHER &quot;est répété &quot;"/>
        <item code="3#p#0#pasliste" algoitem="AFFICHER p"/>
        <item code="4# fois .#0" algoitem="AFFICHER &quot; fois .&quot;"/>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
