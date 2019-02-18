`rm ex2nombre.php`;
`rm cookies.txt`;
`rm ex2nombre.php*`;
`rm ex3nombre.php`;
`rm ex3nombre.php*`;

$login = "";
$mdp = "";

`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex1nombre.php -O ex2nombre.php`;
`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex2nombre.php -O ex3nombre.php`;

open FILE1, "< ex2nombre.php";
open FILE2, "< ex3nombre.php";
while ($nom = <FILE1>) {
     $nom =~ /^.*:(.*)$/;
     $nombre = $1;
     print $nombre;
}
while ($nomb = <FILE2>) {
     $nomb =~ /^.*:(.*);/;
     $nombre2 = $1;
     print $nombre2;
}

$y = sqrt($nombre)*$nombre2;

$lien = "\'http://geii.univ-angers.fr/lprt/test/ex2solution.php?nombre=$y\'";
print "\n";
`wget --load-cookies cookies.txt -p $lien -O solution.txt`;

close FILE1;
close FILE2;
