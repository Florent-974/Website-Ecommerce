<?php

Class Logout extends Controller
{
    public function index()
    {
        //echo "this is the home class inside index method";
        $User = $this->load_model('User');
        $User->Logout();
 
    }

}