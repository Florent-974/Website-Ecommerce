<?php

Class Admin extends Controller
{
    public function index()
    {
        //echo "this is the home class inside index method";
        $User = $this->load_model('User');
        $user_data = $User->check_login();
        if(is_object($user_data)){
            $data['user_data'] = $user_data;

        }
            

        $data['page_title'] = 'Admin';
        $this->view("admin/index",$data);
    }

}