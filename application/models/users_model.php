<?php

class Users_model extends CI_Model {

    function __construct() {
        parent::__construct();
        $this->load->helper('url');
        $this->load->database();
    }

    /**
     * 
     * Insert data into "users" and "profiles" tables
     */
    public function register($role = "customer") {

        $this->db->trans_begin();

        $userData = array(
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password'),
            'role' => $role
        );

        $continue = $this->db->insert('users', $userData);

        if ($continue) {
            $user_id = $this->db->insert_id();

            $profileData = array(
                'user_id' => $user_id,
                'firstname' => $this->input->post('firstname'),
                'lastname' => $this->input->post('lastname'),
                'address1' => $this->input->post('address1'),
                'address2' => $this->input->post('address2'),
                'city' => $this->input->post('city'),
                'country' => $this->input->post('country'),
                'timezone_id' => $this->input->post('timezone_id'),
                'postcode' => $this->input->post('postcode'),
                'phoneno' => $this->input->post('phoneno'),
                'mobileno' => $this->input->post('mobileno'),
            );

            $continue = $this->db->insert('profiles', $profileData);
        }

        if ($continue) {
            $this->db->trans_commit();
            return true;
        } else {
            $this->db->trans_rollback();
            return false;
        }
    }

    public function edit_profiles() {
        $profileData = array(
            'user_id' => $this->input->post('user_id'),
            'firstname' => $this->input->post('firstname'),
            'lastname' => $this->input->post('lastname'),
            'address1' => $this->input->post('address1'),
            'address2' => $this->input->post('address2'),
            'city' => $this->input->post('city'),
            'country' => $this->input->post('country'),
            'timezone_id' => $this->input->post('timezone_id'),
            'postcode' => $this->input->post('postcode'),
            'phoneno' => $this->input->post('phoneno'),
            'mobileno' => $this->input->post('mobileno'),
        );


        $this->db->where('user_id',  $this->input->post('user_id'));
        return $this->db->update('profiles', $profileData);
    }

    public function get_country() {
        $query = $this->db->query("SELECT * FROM countries ORDER BY `country`");
        return $query->result_array();
    }

    public function get_timezones() {
        $query = $this->db->query("SELECT * FROM timezones ORDER BY `id`");
        return $query->result_array();
    }

    public function get_user_by_user_id_and_username($user_id, $username) {
        $sql="SELECT * FROM `users` WHERE user_id!=" . $user_id . " AND username='" . $username . "'";
        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function get_user_by_user_id($user_id) {
        $sql = "SELECT `users`.*, " .
                "`profiles`.`firstname`,`profiles`.`lastname`,`profiles`.`address1`,`profiles`.`address2`,`profiles`.`city`,`profiles`.`country`, " .
                "`profiles`.`timezone_id`,`profiles`.`postcode`,`profiles`.`phoneno`,`profiles`.`mobileno` " .
                "FROM `users` " .
                "INNER JOIN `profiles` " .
                "ON `users`.`user_id`=`profiles`.`user_id` " .
                "WHERE `users`.`user_id`='" . $user_id . "'";

        $query = $this->db->query($sql);
        return $query->row_array();
    }

    public function login() {
        $user = array(
            'username' => $this->input->post('username'),
            'password' => $this->input->post('password')
        );

        $result = $this->db->get_where('users', $user);

        if ($result->num_rows() > 0) {
            return $result->result();
        } else {
            return FALSE;
        }
    }
    
    public function get_profile_by_user_id($user_id){
        $sql="SELECT profiles.*,`timezones`.* ".
                "FROM `profiles` " .
                "INNER JOIN `timezones` " .
                "ON " .
                "`profiles`.`timezone_id`=`timezones`.`id` " .
                "WHERE `profiles`.`user_id`=" . $user_id;
        $query = $this->db->query($sql);
        return $query->row_array();
    }

}

?>
