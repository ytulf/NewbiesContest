# `rm ex4nombre.php`;
# `rm cookies.txt`;
# `rm ex4nombre.php*`;
$login = "";
$mdp = "";

#`wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
#`wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex4nombre.php -O ex4nombre.php`;

open FILE1, "< ex4nombre.php";
while ($decryptage = <FILE1>) {
$decryptage =~ /.*\:.*\'(.*)\'.*/;
$texte = $1;
$liste = $liste . ' ' . $texte;
}

my @alphabet = ('a' .. 'z');
my $alp = "@alphabet";
$alp =~ s/\s+//g;

my @list = split(" ", $liste);
my $text_a_dechiffrer = @list[0];
my $decalage = 26-@list[1];
my $texte_modif = '';
print $text_a_dechiffrer . "\n"; 
print $decalage . "\n"; 

  
my @Liste_lettres = split( '', $text_a_dechiffrer);
foreach my $lettre ( @Liste_lettres ){  
my $index = index($alp, $lettre) + $decalage;
$index -= 26 if ( $index > 25 );
# insertion de la nouvelle lettre dans le nouveau texte
$texte_modif .= substr($alp,$index,1);
}
print "Texte initiale : $text_a_dechiffrer\n";
print "Texte final    : $texte_modif\n";

close $FILE1;
