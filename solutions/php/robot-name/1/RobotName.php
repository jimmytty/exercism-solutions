<?php

declare(strict_types=1);

$GLOBALS['names'] = array();

class Robot
{
    private $_name = '';

    public function getName(): string
    {
        if ( $this->_name != '' && $GLOBALS['names'][$this->_name] == 1 ) {
            return $this->_name;
        }

        do {
            $this->_name = join(
                '',
                [
                    chr(mt_rand(66,90)),
                    chr(mt_rand(66,90)),
                    mt_rand(0,9),
                    mt_rand(0,9),
                    mt_rand(0,9),
                ]
            );
        } while (array_key_exists($this->_name, $GLOBALS['names']));

        $GLOBALS['names'][$this->_name] = 1;

        return $this->_name;
    }

    public function reset(): void
    {
        $GLOBALS['names'][$this->_name] = 0;
    }

}
