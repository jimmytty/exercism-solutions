;;; rna-transcription.el -- RNA Transcription (exercism)

;;; Commentary:
;; Receives a strand of DNA and transcribes it to RNA by substituting
;; each complementary nucleotide

;;; Code:
(setq nucleotide-complements
      '(("G" . "C")
        ("C" . "G")
        ("T" . "A")
        ("A" . "U")))

(defun to-rna (strand)
  (setq rna-list
        (mapcar (lambda (c) (cdr
                             (assoc
                              (char-to-string c)
                              nucleotide-complements)))
                strand))
  (if (member nil rna-list)
      (error "invalid strand")
    (mapconcat 'identity rna-list "")))

(provide 'rna-transcription)
;;; rna-transcription.el ends here
