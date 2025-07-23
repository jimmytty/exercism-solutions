return {
    decode = function(c1, c2, c3)
        local rcc = {
            ['black' ] = 0,
            ['brown' ] = 1,
            ['red'   ] = 2,
            ['orange'] = 3,
            ['yellow'] = 4,
            ['green' ] = 5,
            ['blue'  ] = 6,
            ['violet'] = 7,
            ['grey'  ] = 8,
            ['white' ] = 9,
        }
        local value = (rcc[c1] * 10 + rcc[c2]) * math.pow(10, rcc[c3])
        local unit = 'ohms'
        local metric_prefix = {
            {9, 'giga'},
            {6, 'mega'},
            {3, 'kilo'},
        }
        for i = 1, #metric_prefix do
            base = math.pow(10, metric_prefix[i][1])
            name = metric_prefix[i][2]
            if value > base then
                value = value / base
                unit = name .. unit
                break
            end
        end
        
        return value, unit
    end
}
