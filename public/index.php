<?php 

// Declaring a constant
const BASE_PATH = __DIR__ . '/../';

// Pull in the helper  function
require BASE_PATH . 'functions.php';

spl_autoload_register(function($class) {
    require base_path("Core/{$class}.php'");
});

// Parse the request and decide what controller to be load
require base_path('router.php');





