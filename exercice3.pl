        
open FILE1, "< ex3nombre.php";
my @un = <FILE1>;
print "Liste trié :\n";
print sort { lc($a) cmp lc($b) } @un;
@list = sort { lc($a) cmp lc($b) } @un;

print "Le dernier mot par ordre alphabétique est : \n";
$NbElem = scalar(@list);
print @list[$NbElem - 1] . "\n";
