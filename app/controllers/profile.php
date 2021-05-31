<?php

Class Profile extends Controller
{
    public function index()
    {
        //echo "this is the home class inside index method";
        $User = $this->load_model('User');
        $user_data = $User->check_login(true);
        if(is_object($user_data)){
            $data['user_data'] = $user_data;

        }
            

        $data['page_title'] = 'Profile';
        $this->view("profile",$data);
    }

}