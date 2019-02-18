`rm ex3nombre.php`;
`rm cookies.txt`;
`rm ex3nombre.php*`;

$login = "";
$mdp = "";

`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex3nombre.php -O ex3nombre.php`;

   
open FILE1, "< ex3nombre.php";
my @un = <FILE1>;
print "Liste trié :\n";
print sort { lc($a) cmp lc($b) } @un;
@list = sort { lc($a) cmp lc($b) } @un;

print "Le dernier mot par ordre alphabétique est : \n";
$NbElem = scalar(@list);
print @list[$NbElem - 1] . "\n";
$y = @list[$NbElem - 1];
$lien = "\'http://geii.univ-angers.fr/lprt/test/ex3solution.php?mot=$y\'";
                              
print "\n";
`wget --load-cookies cookies.txt -p $lien -O solution.txt`;
                             
close FILE1;
