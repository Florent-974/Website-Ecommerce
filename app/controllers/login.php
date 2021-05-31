<?php

Class Login extends Controller
{
    public function index()
    {
        //echo "this is the home class inside index method";
        $data['page_title'] = 'Login';
        
        if($_SERVER['REQUEST_METHOD'] == "POST")
        {

            $user = $this->load_model("User");
            $user->login($_POST);
        }

        $this->view("login",$data);
    }

}