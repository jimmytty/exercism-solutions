export const gigasecond = (date) => {
    let d = new Date(date.valueOf())
    d.setUTCSeconds( date.getUTCSeconds() + 1e9 );
    return d;
};
