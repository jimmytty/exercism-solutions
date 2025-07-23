class HighScores {

    private List scores

    HighScores(scores) {
        this.scores = scores
    }

    int latest() {
        return this.scores[-1]
    }

    int personalBest() {
        return this.scores.max()
    }

    List personalTopThree() {
        return this.scores.sort(false).reverse()[0, 1, 2] - null
    }

}
