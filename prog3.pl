`rm ex3nombre.php`;
`rm cookies.txt`;
`rm ex3nombre.php*`;

$login = "";
$mdp = "";

`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex3nombre.php -O ex3nombre.php`;


open FILE1, "< ex3nombre.php";
while ($nom = <FILE1>) {
     $nom =~ /\((\d)\).*\*(\d+).*\+(\d+)/;
     $racine = $1;
     $nombre = $2;
     $addition = $3;
     
     print "Nous allons calculer : racine($racine) * ($nombre)^2 + $addition \n";
}

$y = sqrt($racine) * (($nombre)*2) + $addition; // on fait le calcul
$y = int($y); // On prend la partie entière
print "le calcul donne : $y";
$lien = "\'http://geii.univ-angers.fr/lprt/test/ex3solution.php?nombre=$y\'";

print "\n";
`wget --load-cookies cookies.txt -p $lien -O solution.txt`;

close FILE1;
