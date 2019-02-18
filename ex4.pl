`rm ex4nombre.php`;
`rm cookies.txt`;
`rm ex4nombre.php*`;

$login = "";
$mdp = "";

`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex4nombre.php -O ex4nombre.php`;

open FILE1, "< ex4nombre.php";
while( $var =<FILE1>){
$var =~ /rw-r--r--.*\s(\w+.txt)/;
$mot = $1;
}
print "Le mot est $mot \n";
$lien = "\'http://geii.univ-angers.fr/lprt/test/ex4solution.php?file=$mot\'";
                              
print "\n";
`wget --load-cookies cookies.txt -p $lien -O solution.txt`;
                             
close FILE1;

