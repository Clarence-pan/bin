<?PHP
function run($cmd, &$returnVar=null, $echo=true){
    $output = null;
    if ($echo){
        echo "> $cmd \n";
    }
    exec($cmd, $output, $returnVar);
    if ($echo){
        echo implode("\n", $output);
        echo "\n";
    }

    $GLOBALS['output'] = $output;
}

