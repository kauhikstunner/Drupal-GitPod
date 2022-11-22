<?php
function like($names){
    if (count($names)==0)
        return 'no one likes this<br>';
    if (count($names)==1)
        return" $names[0] likes this<br>" ;
    if (count($names)==2)
        return "$names[0] and $names[1] likes this<br>";
    if (count($names)==3)
        return "$names[0],$names[1] and $names[2] likes this<br>";
    $Z=count($names)-2;
    if (count($names)>3)
        return "$names[0] , $names[1] and $x others likes this<br>";
}
echo like([]) ;
echo like(['A']);
echo like(['A','B']);
echo like(['A','B','C']);
echo like(['A','B','C','D','E']);
?>