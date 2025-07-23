class Acronym {
    static String abbreviate(String phrase) {
        def words = phrase.split('[ _-]+');
        def letters = [];
        for ( int i = 0; i < words.size(); i++ ) {
            letters[i] = words[i].substring(0, 1);
        }
        def acronym = letters.join('').toUpperCase();
        return acronym;
    }
}
