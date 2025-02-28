<?php
        
        $db = new mysqli("localhost","root","","gome");
        if($db->connect_error)
        {
            die("please check your database server for xampp");
        }

?>