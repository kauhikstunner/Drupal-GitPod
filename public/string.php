<?php
function check($string,$substring){
    $upper_string=strtoupper($string);
    $upper_substring=strtoupper($substring);
    if (str_ends_with($upper_string,$upper_substring)){
        return "True<br>"; 
    } else {
        return "False<br>";
    }

}
echo check("kaushik","ik");
echo check("ashok","ki");
?>