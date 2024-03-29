<?php
    function classAutoLoader($class) {
        $class = ucfirst($class);
        $the_path = "includes/{$class}.php";
        if (is_file($the_path) && !class_exists($class)) {
            include($the_path);
        } else {
            die("This file name {$class}.php was not found.");
        }
    }
    function redirect($location) {
        header("Location: {$location}");
    }
    spl_autoload_register('classAutoLoader');
?>
