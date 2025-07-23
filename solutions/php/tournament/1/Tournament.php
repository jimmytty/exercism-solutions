<?php

declare(strict_types=1);

class Tournament
{

    public function tally(string $scores) : string {
        $header = 'Team                           | MP |  W |  D |  L |  P';

        if ( $scores == '' ) { return $header; }

        $data = array();
        foreach ( explode("\n", $scores) as $row ) {
            list($a, $b, $r) = explode(';', $row);
            foreach ( [$a, $b] as $team ) {
                if ( ! array_key_exists($team, $data) ) {
                    $data[$team] = array();
                }
                foreach ( ['MP', 'W', 'D', 'L', 'P'] as $key ) {
                    if ( ! array_key_exists($key, $data[$team]) ) {
                        $data[$team][$key] = 0;
                    }
                }
            }
            $data[$a]['MP']++;
            $data[$b]['MP']++;
            switch ($r) {
            case 'win' : $data[$a]['W']++; $data[$b]['L']++; break;
            case 'loss': $data[$a]['L']++; $data[$b]['W']++; break;
            case 'draw': $data[$a]['D']++; $data[$b]['D']++; break;
            }
        }

        foreach ( array_keys($data) as $team ) {
            $data[$team]['P'] += $data[$team]['W'] * 3;
            $data[$team]['P'] += $data[$team]['D'];
        }

        $points = array();
        foreach ( array_keys($data) as $key ) {
            $results[] = [
                str_pad($key, 31),
                sprintf(' % 2d ', $data[$key]['MP']),
                sprintf(' % 2d ', $data[$key]['W']),
                sprintf(' % 2d ', $data[$key]['D']),
                sprintf(' % 2d ', $data[$key]['L']),
                sprintf(' % 2d' , $data[$key]['P']),
            ];
            $points[] = $data[$key]['P'];
        }
        array_multisort($points, SORT_DESC, $results);
        for ( $i = 0; $i < count($results); $i++ ) {
            $results[$i] = join('|', $results[$i]);
        }
        array_unshift($results, $header);
        return join("\n", $results);
    }

}
