`rm ex1nombre.php`;
`rm cookies.txt`;
`rm ex1nombre.php*`;
$login = "";
$mdp = "";

`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex1nombre.php -O ex1nombre.php`;
# `wget http://geii.univ-angers.fr/lprt/test/ex1nombre.php --http-user $login --http-password $mdp`; 

open FILE, "< ex1nombre.php";
while ($nom = <FILE>) {
     $nom =~ /^.*:(.*);$/;
     $nombre = $1;
     print $nombre;
}
$lien = "\'http://geii.univ-angers.fr/lprt/test/ex1solution.php?nombre=$nombre\'";
print "\n";
`wget --load-cookies cookies.txt -p $lien -O solution.txt`;

close FILE;

