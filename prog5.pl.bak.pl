#`rm ex5nombre.php`;
#`rm cookies.txt`;
#`rm ex5nombre.php*`;
$login = "";
$mdp = "";

# `wget --keep-session-cookies --save-cookies cookies.txt  --post-data "password=$mdp&login=$login" http://geii.univ-angers.fr/lprt/test/login.php`;
# `wget --load-cookies cookies.txt -p http://geii.univ-angers.fr/lprt/test/ex5nombre.php -O ex5nombre.php`;



open FILE1, "< ex5nombre.php";
while ($var = <FILE1>) {
$var =~ /(\d)x.*(\-|\+)\s(\d)x.*(\-|\+)\s(\d)\s.*/;
$a = $1;
$signeb = $2;
$b = $3;
$signec = $4;
$c = $5;
}
print "\n" . "-" x 10 . " Valeur des varaibles " . "-" x 10 . "\n";

print "La valeur de 'a' est : $a \n";
print "La valeur du signe de 'b' est : $signeb \n";
print "La valeur de 'b' est : $b \n";
print "La valeur du signe de 'c' est : $signec \n";
print "La valeur de 'c' est : $c \n";

print "\n" . "-" x 10 . " Changement de signe " . "-" x 10 . "\n";
if ($signeb == "+") {
$b = $b;
print "La valeur de 'b' est maintenant : $b \n";
}
else {
$b = -$b;
print "La valeur de 'b' est maintenant : $b \n";
}
if ($signec eq "+") {
$c = $c;
print "La valeur de 'c' est maintenant : $c \n";
}
else {
$c = -$c;
print "La valeur de 'c' est maintenant : $c \n";
}

print "\n" . "-" x 10 . " Calcul du discriminant " . "-" x 10 . "\n";

$delta = ($b * $b) - (4 * $a * $c);
print "Delta est égale à : $delta \n";
if ($delta eq "0") {
$soluce = (-$b / 2 * $a);
print $soluce;
}
elsif ($delta > "0") {
$x1 = (-$b + sqrt($delta)) / 2 * $a;
print "La première racine : $x1 \n";
$x2 = (-$b - sqrt($delta)) / 2 * $a;
print "La deuxième racine : $x2 \n";
if ($x1 > $x2){
$soluce = $x1;
}
else {
$soluce = $x2;
}
}

print "\n" . "-" x 10 . " Racine la plus grande " . "-" x 10 . "\n";

print "La racine la plus grande est : $soluce \n";

print "\n" . "-" x 10 . " Tronquature " . "-" x 10 . "\n";
$soluce = sprintf("%0.2f", $soluce);
print "Une fois tronquer : $soluce \n";

close $FILE1;

# $lien = "\'http://geii.univ-angers.fr/lprt/test/ex5solution.php?nombre=$soluce\'";

print "\n";
#`wget --load-cookies cookies.txt -p $lien -O solution.txt`;
