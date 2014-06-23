<?php

class Users extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index() {
        // $session = $this->session->userdata('user');
        // if ($session) {
            // var_dump($session);
            // echo "<a style='text-align:center; width: 100%;' href='" . site_url('users/logout') . "'>Logout</a>";
        // } else {
            // echo "SESSION CLEAR";
        // }
        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            $result = $this->users_model->login();
            if ($result) {
                foreach ($result as $results) {
                    $user = array('user_id' => $results->user_id, 'username' => $results->username, 'role' => $results->role);
                    $this->session->set_userdata('user', $user);    //Add user data to user_session array
                    $this->session->set_flashdata('success_message', 'Login Success');
                    redirect('/tgss');    //redirect to home page
                }
            } else {
                $this->session->set_flashdata('error_message', 'Login Fail!! Please Try Again');
                redirect('users');    //redirect to home page
            }
        }
        $data['template'] = "users/login";
        $this->load->view('template', $data);
    }

    public function edit_profile() {

        $user_id = null;

        if ($this->tgss_security->is_customer_logged_in() == true) {
            $user_data = $this->tgss_security->get_user_data();

            $user_id = $user_data['user_id'];
        } else {
            $this->session->set_flashdata('error_message', 'User not logged in. Please logged in to continue.');
            redirect('login');
        }

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if ($this->users_model->edit_profiles() == true) {
                $this->session->set_flashdata('success_message', 'Account information update successful.');
                redirect('account');
            }
        } else {
            $form_mode = "EDIT";
            $user_data = $this->users_model->get_user_by_user_id($user_id);
            
            $data['form_mode'] = $form_mode;
            $data['user_data'] = $user_data;
            $data['countries'] = $this->users_model->get_country();
            $data['timezones'] = $this->users_model->get_timezones();
            $data['template'] = "users/register";
            $this->load->view('template', $data);
        }
    }

    public function register() {

        if ($_SERVER['REQUEST_METHOD'] == 'POST') {
            if ($this->users_model->register() == true) {
                $this->session->set_flashdata('success_message', 'Registration success. Please log in to continue.');
                redirect('login');    //redirect to user login page
            }
        } else {
            $form_mode = "NEW";
            //Filling "Blank" Values
            $user_data = array(
                'user_id' => -1, //"-1" means new user
                'username' => "",
                'firstname' => "",
                'lastname' => "",
                'address1' => "",
                'address2' => "",
                'city' => "",
                'country' => "Myanmar",
                'timezone' => "54", //Myanmar Timezone ID
                'postcode' => "",
                'phoneno' => "",
                'mobileno' => ""
            );

            $data['form_mode'] = $form_mode;
            $data['user_data'] = $user_data;
            $data['countries'] = $this->users_model->get_country();
            $data['timezones'] = $this->users_model->get_timezones();
            $data['template'] = "users/register";
            $this->load->view('template', $data);
        }
    }

    public function login() {
        $data['template'] = "users/login";
        $this->load->view('template', $data);
    }

    public function is_username_exist() {

        $user_id = $this->input->post('user_id');
        $username = $this->input->post('username');

        $user_data = $this->users_model->get_user_by_user_id_and_username($user_id, $username);

        if (empty($user_data)) {
            return $this->ajax_handler->responseSuccess(array(
                        'is_username_exist' => false
                    ));
        } else {
            return $this->ajax_handler->responseSuccess(array(
                        'is_username_exist' => true
                    ));
        }
        //return responseSuccess($_POST['username']);
    }

    public function logout() {
        $this->session->unset_userdata('user');
        $this->shoppingcart->clear_shoppingcart();
        $this->session->set_flashdata('success_message', 'Logout Success');
        redirect('users');    //redirect to login page
    }   
}

?>
