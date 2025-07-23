import java.util.*;

class Badge {
    public String print(Integer id, String name, String department) {
        ArrayList<String> badge = new ArrayList<String>();
        if ( id != null ) { badge.add(String.format("[%d]", id)); }
        badge.add(String.format("%s", name));
        if ( department != null ) {
            badge.add(String.format("%s", department.toUpperCase()));
        } else { badge.add("OWNER"); }
        return String.join(" - ", badge);
    }
}
