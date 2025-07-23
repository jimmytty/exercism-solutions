def is_valid_command:
  . | test("^chatbot\\W"; "i")
;

def remove_emoji:
  . | sub("emoji\\d+"; ""; "g")
;

def check_phone_number:
  . | if test("\\(\\+\\d{2}\\) \\d{3}(?:-\\d{3}){2}(?:\\D|$)")
      then "Thanks! Your phone number is OK."
      else
        capture("(?<nophone>[0-9-]+)") |
        .nophone |
        "Oops, it seems like I can't reach out to \(.)."
      end
;

def get_domains:
  . | [ scan("\\b[[:alnum:]-]+\\.(?:\\w+)(?:\\.\\w+)?\\b") ]
;

def nice_to_meet_you:
  . | capture("my name is (?<name>[[:alpha:]-]+)\\b"; "i") | .name |
  "Nice to meet you, \(.)"
;

def parse_csv:
  . | split("\\s*,\\s*"; "")
;
