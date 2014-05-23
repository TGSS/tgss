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
        //$data['cart'] = $this->shoppingcart->get_shoppingcart();
        $data['cart'] = $this->session->userdata('shoppingcart');
        $data['template'] = "cards/show";
        $this->load->view('template', $data);
    }

    public function visitingcards()
    {
        $card_type_hidden = $this->input->post('card_type_hidden');
        $color_hidden = $this->input->post('color_hidden');
        $card_data = array($card_type_hidden,$color_hidden,);

        $quantity = $this->input->post('quantity_hidden');
        $price=$this->input->post('price_hidden');
        $total = $this->input->post('total_hidden');
        $card_id = $this->input->post('card_id');

        $this->addcards('visitingcards',$card_id, $quantity, $price,$card_data, $total);
    }

    public function letterheads()
    {
        $color_hidden = $this->input->post('color_hidden');
        $card_data = array($color_hidden);

        $quantity = $this->input->post('quantity_hidden'); 
        $price=$this->input->post('price_hidden');
        $total = $this->input->post('total_hidden');       

        $card_id = $this->input->post('card_id');
        $this->addcards('letterheads',$card_id, $quantity,$price, $card_data, $total);
    }

    public function addcards($type,$card_id, $quantity, $price,$card_data, $total)
    {
        $card = $this->session->userdata('shoppingcart');
        if ($card) {
            //echo "Session Have";
            if(isset($card[$type]))
            {
                //echo $type . "Have"; //exit;
                $shopping_data = array(
                    'card_id' => $card_id,
                    'quantity' => $quantity,
                    'price' => $price,
                    'card_data' => $card_data,
                    'total' => $total
                );
                array_push($card[$type], $shopping_data);
                $this->session->set_userdata('shoppingcart',$card);
            }
            else
            {
                //echo $type . "Havn't"; //exit;
                $card[$type][] = array(
                    'card_id' => $card_id,
                    'quantity' => $quantity,
                    'price' => $price,
                    'card_data' => $card_data,
                    'total' => $total
                );
                //array_push($card, $shopping_data);
                $this->session->set_userdata('shoppingcart',$card);
            }
        }
        else 
        {
            //echo "Session Havn't";
            $shopping_data[$type][] = array(
                'card_id' => $card_id,
                'quantity' => $quantity,
                'price' => $price,
                'card_data' => $card_data,
                'total' => $total
            );
            $this->session->set_userdata('shoppingcart',$shopping_data);
        }
        $card = $this->session->userdata('shoppingcart');
        redirect('shoppingcart');
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

    public function cart_delete($card_id)
    {
        $cart = $this->session->userdata('shoppingcart');
        //echo "<pre>"; print_r($cart);
        foreach($cart as $key1=>$value1)
        {
            foreach($value1 as $key2=>$value2)
            {
                if($value2['card_id'] == $card_id)
                {
                    //echo $key2;
                    unset( $cart[$key1][$key2] );
                    $this->session->set_userdata('shoppingcart', $cart);
                }
            }
        }
        redirect('cards/show');
    }
}

?>
