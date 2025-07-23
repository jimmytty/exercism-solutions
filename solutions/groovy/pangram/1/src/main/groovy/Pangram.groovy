class Pangram {

    static boolean isPangram(String sentence) {
        def alpha = 'a' .. 'z'
        def count = 0
        alpha.each{ if (sentence.toLowerCase().contains(it)) count ++ }
        return count == alpha.size()
    }

}
