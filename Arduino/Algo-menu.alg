<?xml version="1.0" encoding="UTF-8"?>
<Algo>
    <description courant="AFFICHER &quot;Quitter &quot;" texte=""/>
    <extension extnom="inactif"/>
    <fonction fctetat="inactif" fctcode=""/>
    <F2 F2lignes="" F2para="" F2defaut="" F2etat="inactif"/>
    <repere repetat="inactif" repcode="-10#10#-10#10#2#2"/>
    <param totalAffichages="1000" maxBoucle="500000" epaisseurPoint="2" arrondiAuto="vrai" totalBoucles="5000000" nbDecimales="8" epaisseurLigne="2"/>
    <item code="200#declarationfonctions" algoitem="FONCTIONS_UTILISEES"/>
    <item code="100#declarationsvariables" algoitem="VARIABLES">
        <item code="1#NOMBRE#a" algoitem="a EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#b" algoitem="b EST_DU_TYPE NOMBRE"/>
        <item code="1#NOMBRE#choix" algoitem="choix EST_DU_TYPE NOMBRE"/>
    </item>
    <item code="101#debutalgo" algoitem="DEBUT_ALGORITHME">
        <item code="4#Tapez deux nombres :#1" algoitem="AFFICHER &quot;Tapez deux nombres :&quot;"/>
        <item code="2#a#pasliste" algoitem="LIRE a"/>
        <item code="2#b#pasliste" algoitem="LIRE b"/>
        <item code="4#&lt;menu> #1" algoitem="AFFICHER &quot;&lt;menu> &quot;"/>
        <item code="4#1:somme : #0" algoitem="AFFICHER &quot;1:somme : &quot;"/>
        <item code="4#2:différence : #0" algoitem="AFFICHER &quot;2:différence : &quot;"/>
        <item code="4#3:produit : #0" algoitem="AFFICHER &quot;3:produit : &quot;"/>
        <item code="4#4:division : #0" algoitem="AFFICHER &quot;4:division : &quot;"/>
        <item code="4#5:Quitter : #0" algoitem="AFFICHER &quot;5:Quitter : &quot;"/>
        <item code="2#choix#pasliste" algoitem="LIRE choix"/>
        <item code="6#choix==1" algoitem="SI (choix==1) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="20#a+b#0" algoitem="AFFICHERCALCUL a+b"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#choix==2" algoitem="SI (choix==2) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="20#a-b#0" algoitem="AFFICHERCALCUL a-b"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#choix==3" algoitem="SI (choix==3) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="20#a*b#0" algoitem="AFFICHERCALCUL a*b"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
        </item>
        <item code="6#choix==4 &amp; b!=0" algoitem="SI (choix==4 &amp; b!=0) ALORS">
            <item code="7#debutsi" algoitem="DEBUT_SI"/>
            <item code="20#a/b#0" algoitem="AFFICHERCALCUL a/b"/>
            <item code="8#finsi" algoitem="FIN_SI"/>
            <item code="9#sinon" algoitem="SINON">
                <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                <item code="6#choix==4 &amp; b==0" algoitem="SI (choix==4 &amp; b==0) ALORS">
                    <item code="7#debutsi" algoitem="DEBUT_SI"/>
                    <item code="4#erreur de calcul#0" algoitem="AFFICHER &quot;erreur de calcul&quot;"/>
                    <item code="8#finsi" algoitem="FIN_SI"/>
                    <item code="9#sinon" algoitem="SINON">
                        <item code="10#debutsinon" algoitem="DEBUT_SINON"/>
                        <item code="6#choix==5" algoitem="SI (choix==5) ALORS">
                            <item code="7#debutsi" algoitem="DEBUT_SI"/>
                            <item code="4#Quitter #0" algoitem="AFFICHER &quot;Quitter &quot;"/>
                            <item code="8#finsi" algoitem="FIN_SI"/>
                        </item>
                        <item code="11#finsinon" algoitem="FIN_SINON"/>
                    </item>
                </item>
                <item code="11#finsinon" algoitem="FIN_SINON"/>
            </item>
        </item>
    </item>
    <item code="102#finalgo" algoitem="FIN_ALGORITHME"/>
</Algo>
