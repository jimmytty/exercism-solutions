class SqueakyClean {
    static String clean(String identifier) {
        StringBuilder chars = new StringBuilder(identifier);

        for ( int i = 0; i < chars.length(); i++ ) {
            char c = chars.charAt(i);
            if ( Character.isWhitespace(c) ) {
                chars.setCharAt(i, '_');
            } else if ( c == '0' ) {
                chars.setCharAt(i, 'o');
            } else if ( c == '3' ) {
                chars.setCharAt(i, 'e');
            } else if ( c == '4' ) {
                chars.setCharAt(i, 'a');
            } else if ( c == '7' ) {
                chars.setCharAt(i, 't');
            } else if ( c == '¡' ) {
                chars.deleteCharAt(i);
                if ( i < chars.length() ) {
                    c = chars.charAt(i);
                    if ( c == '1' ) {
                        chars.setCharAt(i, 'l');
                    }
                }
            } else if ( c == '-' ) {
                chars.deleteCharAt(i);
                if ( i < chars.length() ) {
                    c = chars.charAt(i);
                    chars.setCharAt(i, Character.toUpperCase(c));
                }
            } else if ( ! Character.isLetter(c) ) {
                chars.deleteCharAt(i);
                i--;
            }
        }

        return chars.toString();
    }
}
