<?php

if (!defined('BASEPATH'))
    exit('No direct script access allowed');

class datetime_component {

    /**
     * 
     * Function to get the "Timestamp" of the given datetime
     * 
     */
    public function getGMT_TS($stringValue = null) {
        if ($stringValue == null) {
            $TS = time();
        } else {
            $offset = $this->getEventTimeZoneOffset();
            $TS = strtotime($stringValue . ' UTC') - $offset;
        }
        return $TS;
    }

}
