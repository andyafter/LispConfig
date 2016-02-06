(getenv "PATH")
(setenv "PATH"
        (concat
         "/Library/TeX/Distributions/.DefaultTeX/Contents/Programs/texbin" ":"

         (getenv "PATH")))
