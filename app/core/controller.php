<?php

Class controller
{
    public function view($path,$data= [])
    {
        //echo "this is the home class inside index method";
        if(file_exists("../app/views/" . $path . ".php"))
        {
            include "../app/views/" . $path . ".php";
        }
    }
}