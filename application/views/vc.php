<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

?>
<div id="wrapper_body_body">
    <div id="britannic_title">V/C</div>
    <div id="title_line"></div>
    <div id="clr"></div>
    <div id="" style="height:auto;overflow:hidden; text-align: center;">
        <form action="<?php echo site_url(); ?>/tgss/VC_submit" method="POST">
			<div class="rowElem">
				<label>Card Quality :</label>
				<select name="vc_card_quality" id="vc_card_quality">
					<option value="A/C">A/C</option>
					<option value="W/C">W/C</option>
					<option value="S/C">S/C</option>
				</select>
			</div>
			<div class="rowElem">
				<label>Color :</label>
				<select name="vc_color" id="vc_color">
					<option value="1C">1 Color</option>
					<option value="2C">2 Color</option>
					<option value="3C">3 Color</option>
					<option value="4C">4 Color</option>
				</select>
			</div>
			<div class="rowElem">
				<label>Quentity :</label>
				<select name="vc_quentity" id="vc_quentity">
					<option value="600">600</option>
					<option value="1200">1200</option>
					<option value="2400">2400</option>
					<option value="3600">3600</option>
				</select>
			</div>
			<input type="submit" name="Calculate" id="">
		</form>
    </div>
    <div id="clr"></div>
</div>
