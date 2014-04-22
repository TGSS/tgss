<?php
/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

?>
<div id="wrapper_body_body">
    <div id="britannic_title">L/H</div>
    <div id="title_line"></div>
    <div id="clr"></div>
    <div id="" style="height:auto;overflow:hidden; text-align: center;">
        <form action="<?php echo site_url(); ?>/tgss/LH_submit" method="POST">
			<div class="rowElem">
				<label>Color :</label>
				<select name="lh_color">
					<option value="1C">1 Color</option>
					<option value="2C">2 Color</option>
					<option value="3C">3 Color</option>
					<option value="4C">4 Color</option>
				</select>
			</div>
			<div class="rowElem">
				<label>Quentity :</label>
				<select name="lh_quentity">
					<option value="500">500</option>
					<option value="1000">1000</option>
					<option value="1500">1500</option>
					<option value="3000">3000</option>
					<option value="5000">5000</option>
				</select>
			</div>
			<input type="submit" name="Calculate" id="">
		</form>
    </div>
    <div id="clr"></div>
</div>
