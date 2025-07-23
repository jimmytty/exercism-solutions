# TODO: define the 'EXPECTED_BAKE_TIME' constant
# TODO: consider defining the 'PREPARATION_TIME' constant
#       equal to the time it takes to prepare a single layer

EXPECTED_BAKE_TIME = 40
PREPARATION_TIME   =  2

# TODO: define the 'bake_time_remaining()' function
def bake_time_remaining(elapsed_bake_time):
    """Calculate the bake time remaining.

    :param elapsed_bake_time: int baking time already elapsed.
    :return: int remaining bake time derived from 'EXPECTED_BAKE_TIME'.

    Function that takes the actual minutes the lasagna has been in the oven as
    an argument and returns how many minutes the lasagna still needs to bake
    based on the `EXPECTED_BAKE_TIME`.
    """

    # pass

    bake_time_remaining = EXPECTED_BAKE_TIME - elapsed_bake_time

    return bake_time_remaining

# TODO: define the 'preparation_time_in_minutes()' function
#       and consider using 'PREPARATION_TIME' here
def preparation_time_in_minutes(number_of_layers):
    """Return preparation time in minutes"""
    
    preparation_time_in_minutes = number_of_layers * PREPARATION_TIME
    
    return preparation_time_in_minutes

# TODO: define the 'elapsed_time_in_minutes()' function
def elapsed_time_in_minutes(number_of_layers, elapsed_bake_time):
    """
    Return elapsed cooking time.

    This function takes two numbers representing the number of layers & the time already spent
    baking and calculates the total elapsed minutes spent cooking the lasagna.
    """

    my_bake_time_remaining = bake_time_remaining(elapsed_bake_time)
    my_preparation_time_in_minutes = preparation_time_in_minutes(number_of_layers)
    my_elapsed_time_in_minutes = EXPECTED_BAKE_TIME - my_bake_time_remaining + my_preparation_time_in_minutes
    
    return my_elapsed_time_in_minutes
