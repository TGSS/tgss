<html>
    <head>
        <meta name="generator" content="HTML Tidy, see www.w3.org" />
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
        <meta http-equiv="Content-Script-Type" content="text/javascript" />
        <meta http-equiv="Content-Style-Type" content="text/css" />
        <meta name="gmapkey" content="" />
        <meta name="description" content="" />
        <meta name="keywords" content="" />

        <title>TGSS Printing</title>
        <base href="<?php echo base_url(); ?>">

        <link href="<?php echo base_url(); ?>css/bootstrap.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/font-awesome.css">
        <!--<link href="//netdna.bootstrapcdn.com/font-awesome/4.0.3/css/font-awesome.css" rel="stylesheet">-->
        
        <link href="<?php echo base_url(); ?>css/chosen.min.css" rel="stylesheet" type="text/css" />
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/style.css">
        <link rel="stylesheet" type="text/css" href="<?php echo base_url(); ?>css/custom-style.css">

<!--        <script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-1.9.1.min.js"></script>-->
        <script type="text/javascript" src="<?php echo base_url(); ?>js/jquery-1.10.2.min.js"></script>
        <script src="<?php echo base_url(); ?>js/bootstrap.min.js" type="text/javascript"></script>
        <script type="text/javascript" src="<?php echo base_url(); ?>js/jquery.validate.min.js"></script>
        <script src="<?php echo base_url(); ?>js/chosen/chosen.jquery.min.js" type="text/javascript"></script>                                
        <script src="<?php echo base_url(); ?>js/chosen/chosen.proto.min.js" type="text/javascript"></script>
        <!-- echoing "base_url" from "PHP" to be used with "javascript" -->
        <script type="text/javascript">var base_url = '<?php echo base_url(); ?>'; </script>

        <script type="text/javascript" src="js/noty/packaged/jquery.noty.packaged.min.js"></script>
        <script type="text/javascript" src="js/tgss.noty.js"></script>
        
        <script type="text/javascript">
            $(document).ready(function(){
                // $("img#viewallproducts").click(function(){
                    // $("div#view_all_product_top").slideDown(1000);
                // }, function(){
                    // $("div#view_all_product_topa").hide(500);
                // });
  				$('body').on('click','img#viewallproducts', function() {
  					$("div.view_all_product_top").toggleClass('click');
  				});
            });
        </script>
    </head>
    <body>		
        <div id="header">
            <div id="header_body">
                <div class="header_body_top_left">
                </div>
                <div class="header_body_top_right">
                    <div class="hotline"><img src="<?php echo base_url(); ?>/images/hotline.png" /></div>
                    <div class="login_register">
                        <a href="<?php echo site_url('users/register'); ?>">
                            <img src="<?php echo base_url(); ?>/images/register.png" />
                        </a>
                    </div>
                    <?php
                        if($this->tgss_security->get_user_data())
                        {
                    ?>
                            <div class="login_login">
                                <a href="<?php echo site_url('users/logout'); ?>">
                                    <img src="<?php echo base_url(); ?>/images/logout.png" />
                                </a>
                            </div>
                    <?php
                        }
                        else
                        {
                    ?>
                            <div class="login_login">
                                <a href="<?php echo site_url('users'); ?>">
                                    <img src="<?php echo base_url(); ?>/images/login.png" />
                                </a>
                            </div>
                    <?php
                        }
                    ?>
                </div>
                <div class="logo">
                    <img src="<?php echo base_url(); ?>/images/logo.png" />
                </div>
            </div>
        </div>
        <div id="wrapper">
            <div id="body_wrapper">
                <div id="body_header">
                    <div class="body_header_left">
                        <div class="body_header_left_left"></div>
                        <div class="body_header_left_body">
                            <div class="body_header_left_body_body">
                                <ul>
                                    <li><a href="">HOME</a></li>
                                    <li><a href="<?php echo site_url(); ?>/tgss/about_us">ABOUT US</a></li>
                                    <li><a href="#">QUOTE</a></li>
                                    <li><a href="<?php echo site_url(); ?>/tgss/delivery">DELIVERY</a></li>
                                    <li><a href="<?php echo site_url(); ?>/tgss/faq">FAQ</a></li>
                                    <li><a href="#">CONTACT US</a></li>
                                </ul>
                                <img src="images/btn_viewallproducts.png" id="viewallproducts">
                            </div>
                        </div>
                        <div class="body_header_left_right"></div>
                    </div>
                    <div class="body_header_right"><a id="cart" href="<?php if($this->shoppingcart->number_shoppingcart() == 0) { echo ""; } else { echo site_url('shoppingcart'); } ?>" class="basket">( <?php echo $this->shoppingcart->number_shoppingcart(); ?> )Item</a></div>
                    <div class="view_all_product_top">
                    	<?php $this->load->view('products'); ?>
                        <div id="clr"></div>
                    </div>
                </div>
                <div id="wrapper_body">
                    <?php
                    //Showing "Flash Message" if it is in "session"
                    if ($this->session->flashdata('error_message')) {
                        $this->load->view("templates/error-message");
                    }elseif ($this->session->flashdata('warning_message')) {
                        $this->load->view("templates/warning-message");
                    }elseif ($this->session->flashdata('info_message')) {
                        $this->load->view("templates/info-message");
                    }elseif ($this->session->flashdata('success_message')) {
                        $this->load->view("templates/success-message");
                    }
                    ?>
                    <div class="body_wrapper_top">
                    </div>
                    <div class="body_wrapper_body">
                        <!-- Template Content Start -->
                        <?php $this->load->view($template); ?>
                        <!-- Template Content End -->
                    </div>
                    <div class="body_wrapper_bottom"></div>
                    <div id="clr"></div>
                </div>
                <div id="clr"></div>
            </div>
            <div id="clr"></div>
        </div>
        <div id="footer">
            <div id="footer_body">
                <div class="footer_body_top">
                    <div class="payments_power_by">
                        <div class="footer_body_title">PAYMENTS POWERED BY</div>
                        <img src="<?php echo base_url(); ?>/images/paypal.png" />
                        <div id="clr"></div>
                    </div>
                    <div class="popular_products">
                        <div class="footer_body_title">POPULAR PRODUCTS</div>
                        <ul>
                            <li><a href="#">Busines Cards</a></li>
                            <li><a href="#">Flyers</a></li>
                            <li><a href="#">Brochures</a></li>
                            <li><a href="#">Certificates</a></li>
                            <li><a href="#">Calendars</a></li>
                            <li><a href="#"><img src="<?php echo base_url(); ?>images/btn_more.png" /></a></li>
                        </ul>
                        <div id="clr"></div>
                    </div>
                    <div class="contact_us_and_we_locate_here">
                        <div class="footer_body_title">CONTACT US & WE LOCATE HERE</div>
                        <div class="contact_us_and_we_locate_here_1">No(999), Lorem ipsum Street,
                            Between Dolor Road & Quirm Road,
                            Near of Woit Park, Dkusp Township,
                            Yangon, Myanmar.
                            <br/>
                            To place an order <span>Call 800-395-0277.</span>
                            <br/>
                            Mail to <span>info@tgssprinting.com.</span>
                        </div>
                        <div id="clr"></div>
                    </div>
                    <div class="map"></div>
                    <div id="clr"></div>
                </div>
                <div class="footer_body_line"></div>
                <div class="footer_body_bottom">
                    <div class="copyright">Copyright © 2013 - TGSS Online Printing Service. All Rights Reserved. </div>
                    <div class="footer_body_bottom_link"><a href="">Terms of use</a></div>
                    <div class="footer_body_bottom_link"><a href="">Privacy Policy</a></div>
                    <div class="fb"><a href="#">Join us on Facebook</a></div>
                    <div id="clr"></div>
                </div>
            </div>
        </div>
    </body>
</html>