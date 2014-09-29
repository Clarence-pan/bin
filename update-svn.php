<?php
/**
 * Created by PhpStorm.
 * User: panchangyun
 * Date: 14-9-29
 * Time: 下午1:32
 */

require("git.php");

$status = git::status();
$stash = null;
if (!$status['clean']){
    $stash = git::stash();
}

if ($status['branch'] != 'work'){
    git::checkout('work');
    $status = git::status();
}

git::svn_update();

git::stash_pop($stash);




