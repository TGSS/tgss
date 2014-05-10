<?php

class Cards extends CI_Controller {

    public function __construct() {
        parent::__construct();
    }

    public function index()
    {
        $card_id = $this->input->post('card_id');
        $shoppingcart = $this->session->userdata('shoppingcart');
        array_push($shoppingcart['visitingcards'], array('card_id'=>$card_id));
        $this->session->set_userdata('shoppingcart',$shoppingcart);
    }

    public function show()
    {
        $data['cart'] = $this->shoppingcart->get_shoppingcart();
        $data['template'] = "cards/show";
        $this->load->view('template', $data);
    }

    public function visitingcards()
    {
        $card_id = $this->input->post('card_id');
        $this->addcards('visitingcards',$card_id);
    }

    public function letterheads()
    {
        $card_id = $this->input->post('card_id');
        $this->addcards('letterheads',$card_id);
    }

    public function addcards($type,$id)
    {
        $card = $this->session->userdata('shoppingcart');
        if ($card) {
            echo "Session Have";
            if($card[$type])
            {
                echo $type . "Have"; //exit;
                $shopping_data = array(
                    'card_id' => $id
                );
                array_push($card[$type], $shopping_data);
                $this->session->set_userdata('shoppingcart',$card);
            }
            else
            {
                echo $type . "Havn't"; //exit;
                $card[$type][] = array(
                    'card_id' => $id
                );
                //array_push($card, $shopping_data);
                $this->session->set_userdata('shoppingcart',$card);
            }
        }
        else 
        {
            echo "Session Havn't";
            $shopping_data[$type][] = array(
                'card_id' => $id
            );
            $this->session->set_userdata('shoppingcart',$shopping_data);
        }
        $card = $this->session->userdata('shoppingcart');
        var_dump($card); exit;
        // $shopping_data = array(
        //     'card_id' => $id
        // );
        // array_push($card[$type], $shopping_data);
        // $this->session->set_userdata('shoppingcart',$card);
        // $this->show();
    }

    public function clear()
    {
        $this->session->unset_userdata('shoppingcart');
        if(!$this->session->userdata('shoppingcart'))
        {
            echo "Session Cleared";
            echo $this->session->userdata('shoppingcart');
        }
        else
        {
            echo "Session Can't Clear";
            echo $this->session->userdata('shoppingcart');
        }
    }
}

?>
