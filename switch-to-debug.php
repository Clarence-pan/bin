<?PHP

require("run.php");

$cmd = run("git status");
if (strstr($cmd[0], "On branch work")){
    run("git add .");
    run("git commit -mAuto-Commit-Backup-WORK");
}
run("git checkout debug");
run("git merge work");

