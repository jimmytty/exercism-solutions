""" Meltdown Mitigation exercise """


def is_criticality_balanced(temperature, neutrons_emitted):
    """Verify criticality is balanced.

    :param temperature: temperature value in kelvin (integer or float)
    :param neutrons_emitted: number of neutrons emitted per second (integer or float)
    :return:  boolean True if conditions met, False if not

    A reactor is said to be critical if it satisfies the following conditions:
    - The temperature is less than 800 K.
    - The number of neutrons emitted per second is greater than 500.
    - The product of temperature and neutrons emitted per second is less than 500000.
    """

    if temperature < 800 and neutrons_emitted > 500 and temperature * neutrons_emitted < 5e5:
        return True

    return False


def reactor_efficiency(voltage, current, theoretical_max_power):
    """Assess reactor efficiency zone.

    :param voltage: voltage value (integer or float)
    :param current: current value (integer or float)
    :param theoretical_max_power: power that corresponds to a 100% efficiency (integer or float)
    :return: str one of 'green', 'orange', 'red', or 'black'

    Efficiency can be grouped into 4 bands:

    1. green -> efficiency of 80% or more,
    2. orange -> efficiency of less than 80% but at least 60%,
    3. red -> efficiency below 60%, but still 30% or more,
    4. black ->  less than 30% efficient.

    The percentage value is calculated as
    (generated power/ theoretical max power)*100
    where generated power = voltage * current
    """

    generated_power = voltage * current
    efficiency      = ( generated_power / theoretical_max_power ) * 100

    if   efficiency >= 80:
        efficiency_band = "green"
    elif efficiency >= 60:
        efficiency_band = "orange"
    elif efficiency >= 30:
        efficiency_band = "red"
    else:
        efficiency_band = "black"

    return efficiency_band

def fail_safe(temperature, neutrons_produced_per_second, threshold):
    """Assess and return status code for the reactor.

    :param temperature: value of the temperature in kelvin (integer or float)
    :param neutrons_produced_per_second: neutron flux (integer or float)
    :param threshold: threshold (integer or float)
    :return: str one of: 'LOW', 'NORMAL', 'DANGER'

    - `temperature * neutrons per second` < 90% of `threshold` == 'LOW'
    - `temperature * neutrons per second` +/- 10% of `threshold` == 'NORMAL'
    - `temperature * neutrons per second` is not in the above-stated ranges ==  'DANGER'
    """

    current_threshold = temperature * neutrons_produced_per_second
    threshold_90 = threshold * 90 / 100
    threshold_p_10 = threshold + threshold * 10 / 100
    threshold_m_10 = threshold - threshold * 10 / 100

    if current_threshold < threshold_90:
        status_code = "LOW"
    elif current_threshold <= threshold_p_10 and current_threshold >= threshold_m_10:
        status_code = "NORMAL"
    else:
        status_code = "DANGER"

    return status_code
