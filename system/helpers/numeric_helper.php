<?php  

function format_value( $value )
{
	$value = (string) $value;

	if (strpos( $value, '.') !== FALSE)
	{
		list( $int_val, $decimal ) = explode( '.', $value );
	}

	else
	{
		$int_val = $value;
		$decimal = '00';
	}

	$count = strlen( $int_val );
	$num_count_down = 3; $formated_val = '';
	for($i=$count-1; $i>=0; $i--)
	{
		if( $num_count_down > 0 )
		{
			$formated_val .= $int_val[ $i ];
		}

		else
		{
			$formated_val .= ',' . $int_val[ $i ];
			$num_count_down	= 3;
		}

		--$num_count_down;
	}

	return str_reverse($formated_val) . '.' . $decimal;
}

function str_reverse( $string )
{
	$result_string = '';
	$c = strlen( $string );

	for($i=0; $i<$c; $i++)
	{
		$result_string = $string[ $i ] . $result_string;
	}

	return $result_string;
}