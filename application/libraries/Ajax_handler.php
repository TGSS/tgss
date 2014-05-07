<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed'); 

class Ajax_handler {

    public function responseSend($arr = array(), $options = array()) {

        //Merge default settings
//        $options = Hash::merge(array(
//                    'code' => 200
//                        ), $options);

        $options=  array_merge(array(
                    'code' => 200
                        ), $options);
                        
//        $jsonp = isset($_GET['callback']);
//        $jsonp_callback = $jsonp ? $_GET['callback'] : '';

        //$this->response->type('json');
        //$this->response->statusCode($options['code']);
        //$this->response->disableCache();
        
        $CI =& get_instance();
        
        $CI->output->set_content_type('application/json');
        $CI->output->set_header("Pragma: no-cache");
        $CI->output->set_header("HTTP/1.1 200 OK");
        
        $body = json_encode($arr);

//        if ($jsonp) {
//            $this->response->type('javascript');
//            $body = $jsonp_callback . '(' . $body . ');';
//        }

        //$this->response->body($body);
        $CI->output->set_output($body);
    }

    public function responseSuccess($msg = 'success') {
        if (is_array($msg)) {
            $this->responseSend(array_merge(array(
                        'success' => true
                            ), array(
                        'data' => $msg
                    )));
        } else if (is_bool($msg)) {
            $this->responseSend(array(
                'success' => $msg
            ));
        } else {
            $this->responseSend(array(
                'success' => true,
                'msg' => $msg
            ));
        }
    }

    public function responseFail($msg = 'failure', $code = 200) {
        $this->responseSend(array(
            'success' => false,
            'msg' => $msg
                ), array(
            'code' => $code
        ));
    }
    
}
