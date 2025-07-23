#include "vehicle_purchase.h"

namespace vehicle_purchase {

    // needs_license determines whether a license is needed to drive a
    // type of vehicle. Only "car" and "truck" require a license.
    bool needs_license(std::string kind){
        return (kind == "car" || kind == "truck");
    }

    // choose_vehicle recommends a vehicle for selection. It always
    // recommends the vehicle that comes first in lexicographical
    // order.
    std::string choose_vehicle(std::string option1, std::string option2) {
        // TODO: Return the final decision in a sentence.
        std::string opt{};
        if ( option1 < option2 ) {
            opt = option1;
        } else {
            opt = option2;
        }
        return opt + " is clearly the better choice.";
    }

    // calculate_resell_price calculates how much a vehicle can resell
    // for at a certain age.
    double calculate_resell_price(double original_price, double age) {
        int percentage{};
        if      ( age < 3 )  { percentage = 80; }
        else if ( age < 10 ) { percentage = 70; }
        else                 { percentage = 50; }
        double resell_price = original_price * percentage / 100;
        return resell_price;
    }

}  // namespace vehicle_purchase
