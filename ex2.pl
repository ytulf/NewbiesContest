`rm ex2nombre.php`;
`rm cookies.txt`;
`rm ex2nombre.php*`;

$login = "";
$mdp = "";

`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex2nombre.php -O ex2nombre.php`;


open FILE1, "< ex2nombre.php";
while ($nom = <FILE1>) {
$nom =~ /\s(\d*),\s(\d*)\set\s(\d+)/;
$somme1 = $1;
$somme2 = $2;
$somme3 = $3;
                         
print "Nous allons calculer : $somme1 + $somme2 + $somme3 \n";
   }
                              
$y = $somme1 + $somme2 + $somme3;
print "le calcul donne : $y";

$lien = "\'http://geii.univ-angers.fr/lprt/test/ex2solution.php?nombre=$y\'";
                              
print "\n";
`wget --load-cookies cookies.txt -p $lien -O solution.txt`;
                             
close FILE1;
