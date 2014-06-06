<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class Datetime_component {

    /**
     * 
     * Function to get the "Timestamp" of the given datetime
     * 
     */
    public function get_gmt_ts($stringValue = null,$timezone_offset=0) {
        if ($stringValue == null) {
            $TS = time();
        } else {
            $timezone_offset = $this->timezone_offset_to_seconds($timezone_offset);
            $TS = strtotime($stringValue . ' UTC') - $timezone_offset;
        }
        return $TS;
    }
    
    public function get_datetime_for_UI_from_timestamp($timestamp_value = null, $timezone_offset = null, $show_gmt_difference = false, $format = 0) {
        //format
        //0 - d-M-Y h:i A
        //1 - l d-M-Y h:i A			
        if ($timestamp_value == null || $timestamp_value=='') {
            return date('d-M-Y h:i A');
        } else {
            if ($timezone_offset == null) {
                //Set "timezoneoffset" with "default" value
                $timezone_offset=DEFAULT_TIMEZONE_OFFSET;              
            }
            
            $timezoneOffset_in_seconds = $this->timezone_offset_to_seconds($timezone_offset);
            $timpstamp = (int) $timestamp_value + $timezoneOffset_in_seconds;

            if ($format == 0) {
                $datetime_from_DB_formatted = gmdate('d-M-Y h:i A', $timpstamp);
            } elseif ($format == 1) {
                $datetime_from_DB_formatted = gmdate('l d-M-Y h:i A', $timpstamp);
            }

            if ($show_gmt_difference == true) {
                $decimalPart = abs($timezone_offset) - floor(abs($timezone_offset));

                $sign=($timezone_offset>0) ? '+' : '-';     
                $decimalPart*=60;
                $decimalPart = str_pad($decimalPart, 2, '0', STR_PAD_LEFT);
                $datetime_from_DB_formatted.=" (GMT " . $sign . floor(abs($timezone_offset)) . ":" . $decimalPart  . ")";
            }

            return $datetime_from_DB_formatted;
        }
    }
    
    public function timezone_offset_to_seconds($timezone_offset) {
        $timezone_offset*=3600;
        return $timezone_offset;
    }
    

}
