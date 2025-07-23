use unicode_segmentation::UnicodeSegmentation;

pub fn reverse(input: &str) -> String {
     /*  // only ascii 7 bits:
     return input.chars().rev().collect::<String>();
     */

    let g = input.graphemes(true).collect::<Vec<&str>>();
    return g.iter().copied().rev().collect();
}
