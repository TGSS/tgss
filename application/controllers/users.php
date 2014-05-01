<?php

class Users extends CI_Controller {

    public function __construct() {
        parent::__construct();
        $this->load->model('users_model');
        $this->load->library('session');
       
    }

    public function index(){
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
    
    public function registersubmit()
    {
        $rules=array(
                array(
                    'field' => 'email',
                    'label' => 'Email:',
                    'rules' => 'required|valid_email|trim|xss_clean|strip_tags'
                ),array(
                    'field' => 'password',
                    'label' => 'Password :',
                    'rules' => 'required|min_length[8]|trim|xss_clean|strip_tags'
                ),array(
                    'field' => 'repassword',
                    'label' => 'Re-Password :',
                    'rules' => 'required|min_length[8]|matches[password]|trim|xss_clean|strip_tags'
                ),array(
                    'field' => 'address',
                    'label' => 'Address :',
                    'rules' => 'trim|xss_clean|strip_tags'
                ),array(
                    'field' => 'phno',
                    'label' => 'Phone No. :',
                    'rules' => 'trim|xss_clean|strip_tags'
                ));
                $this->form_validation->set_rules($rules);

            if ($this->form_validation->run() == FALSE)
            {
                $data['temlate'] = "users/register";
                $this->load->view('template', $data);
            }
            else
            {
                $email = $this->input->post('email');
                $password = $this->input->post('password');
                $address = $this->input->post('address');
                $phno = $this->input->post('phno');

                $this->Users_model->register($email,$password,$address,$phno);
            }
    }

}

?>
