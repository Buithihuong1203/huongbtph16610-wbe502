<?php

function dashboard_index(){
    $totalProduct = rand(100, 999);
    $totalProfit = rand(1000, 500000);
    $totalCustomer = rand(50, 20000);
    admin_render('dashboard/index.php', 
        compact('totalProduct', 'totalProfit', 'totalCustomer')); 
}


?>