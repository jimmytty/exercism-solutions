// Secret knowledge of the Zhang family:
namespace zhang {
    int bank_number_part(int secret_modifier) {
        int zhang_part{8'541};
        return (zhang_part*secret_modifier) % 10000;
    }
    namespace red {
        int code_fragment() {return 512;}
    }
    namespace blue {
        int code_fragment() {return 677;}
    }
}

// Secret knowledge of the Khan family:
namespace khan {
    int bank_number_part(int secret_modifier) {
        int khan_part{4'142};
        return (khan_part*secret_modifier) % 10000;
    }
    namespace red {
        int code_fragment() {return 148;}
    }
    namespace blue {
        int code_fragment() {return 875;}
    }
}

// Secret knowledge of the Garcia family:
namespace garcia {
    int bank_number_part(int secret_modifier) {
        int garcia_part{4'023};
        return (garcia_part*secret_modifier) % 10000;
    }
    namespace red {
        int code_fragment() {return 118;}
    }
    namespace blue {
        int code_fragment() {return 923;}
    }
}

namespace estate_executor {
    int assemble_account_number(int secret_modifier) {
        int zbank =  zhang::bank_number_part(secret_modifier);
        int kbank =   khan::bank_number_part(secret_modifier);
        int gbank = garcia::bank_number_part(secret_modifier);
        return zbank + kbank + gbank;
    }

    int assemble_code() {
        int zblue =  zhang::blue::code_fragment();
        int kblue =   khan::blue::code_fragment();
        int gblue = garcia::blue::code_fragment();
        int zred  =   zhang::red::code_fragment();
        int kred  =    khan::red::code_fragment();
        int gred  =  garcia::red::code_fragment();
        return (zblue + kblue + gblue) * (zred + kred + gred);
    }
}
