<?php

Class Home extends Controller
{
    public function index()
    {
        //echo "this is the home class inside index method";
     
        $this->view("eshop/index");
    }

}