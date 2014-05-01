<?php

class Users extends CI_Controller {

    public function __construct() {
        parent::__construct();
       
    }

    public function index(){
        $session = $this->session->userdata('user');
        if($session)
        {
            var_dump($session);
            echo "<a style='text-align:center; width: 100%;' href='".site_url('users/logout')."'>Logout</a>";
        }
        else
        {
            echo "SESSION CLEAR";
        }
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $result = $this->users_model->login();
            if($result)
            {
                foreach ($result as $results) {
                    $user = array('username'=>$results->username,'role'=>$results->role);
                    $this->session->set_userdata('user', $user);    //Add user data to user_session array
                    $this->session->set_flashdata('success_message','Login Success');
                    redirect('tgss');    //redirect to home page
                }
            }
            else
            {
                $this->session->set_flashdata('error_message','Login Fail!! Please Try Again');
                redirect('users');    //redirect to home page
            }
        }
        $data['temlate'] = "users/login";
        $this->load->view('template', $data);
    }

    public function register(){
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $data['countries']=$this->users_model->register();
            $this->session->set_flashdata('success_message','Registration success. Please log in to continue.');
            redirect('users/login');    //redirect to user login page
        }
        
        $data['countries']=$this->users_model->get_country();
        $data['temlate'] = "users/register";
        $this->load->view('template', $data);
    }

    public function login(){
        $data['temlate'] = "users/login";
        $this->load->view('template', $data);
    }
    
    public function is_username_exist(){
         
        $username=  $this->input->post('username');
        $user_data=$this->users_model->get_user_by_username($username);
        
        if (empty($user_data)){
            return responseSuccess(array(
                'is_username_exist'=>false
            ));
        }else{
            return responseSuccess(array(
                'is_username_exist'=>true
            ));
        }
        //return responseSuccess($_POST['username']);
    }

    public function logout()
    {
        $this->session->unset_userdata('user');
        $this->session->set_flashdata('success_message','Logout Success');
        redirect('users');    //redirect to login page

    }

}

?>
