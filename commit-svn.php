<?php
/**
 * Created by PhpStorm.
 * User: panchangyun
 * Date: 14-9-29
 * Time: 下午1:35
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

if (!$status['clean']){
    $stash = git::stash();
}

$commit = git::svn_dcommit();
if ($commit['need_update']){
    git::svn_update();
    git::svn_dcommit();
}

git::stash_pop($stash);

