<?php
header("Content-Type: application/json");
ini_set("display_errors", 1);
error_reporting(E_ALL);
$output = shell_exec("curl https://freeipapi.com/api/json");
if ($output === false) {
    echo "[Error running curl command]";
} else {
    echo "$output";
}
