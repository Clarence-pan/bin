<?PHP
require("run.php");

$output = run("git status");
if (strstr($output[0], "On branch debug")){
    run("git add .");
    run("git commit -mAuto-Commit-Backup-DEBUG");
}
run("git checkout work");

