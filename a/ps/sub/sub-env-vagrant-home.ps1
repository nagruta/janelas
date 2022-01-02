$homevagrant = "$scriptdir/../../../home/vagrant"
iex "$scriptdir/sub-establish-path $homevagrant"
$env:VAGRANT_HOME = $homevagrant
