/**
Represents compiled regular expresion.

* `\` - For characters that are usually treated literally, indicates that the next character is special and not to be interpreted literally.
                        For example, `/b/` matches the character `b`. By placing a backslash in front of b, that is by using `/\b/`, the character becomes special to mean match a word boundary.
                        For characters that are usually treated specially, indicates that the next character is not special and should be interpreted literally.
                        For example, `*` is a special character that means 0 or more occurrences of the preceding character should be matched; for example, `/a* /` means match 0 or more "a"s. To match `*` literally, precede it with a backslash; for example, `/a\* /` matches `'a*'`.
* `^` -     Matches beginning of input. If the multiline flag is set to true, also matches immediately after a line break character.
                        For example, /^A/ does not match the 'A' in "an A", but does match the first 'A' in "An A."
* `$` -     Matches end of input. If the multiline flag is set to true, also matches immediately before a line break character.
                        For example, /t$/ does not match the 't' in "eater", but does match it in "eat".
* `*` -     Matches the preceding item 0 or more times.
                        For example, /bo* / matches 'boooo' in "A ghost booooed" and 'b' in "A bird warbled", but nothing in "A goat grunted".
* `+` -     Matches the preceding item 1 or more times. Equivalent to {1,}.
                        For example, /a+/ matches the 'a' in "candy" and all the a's in "caaaaaaandy".
* `?` -     Matches the preceding item 0 or 1 time.
                        For example, /e?le?/ matches the 'el' in "angel" and the 'le' in "angle."
                        If used immediately after any of the quantifiers *, +, ?, or {}, makes the quantifier non-greedy (matching the minimum number of times), as opposed to the default, which is greedy (matching the maximum number of times).
                        Also used in lookahead assertions, described under (?=), (?!), and (?:) in this table.
* `.` -     (The decimal point) matches any single character except the newline characters: \n \r \u2028 or \u2029. ([\s\S] can be used to match any character including newlines.)
                        For example, /.n/ matches 'an' and 'on' in "nay, an apple is on the tree", but not 'nay'.
* `(x)` -   Matches x and remembers the match. These are called capturing parentheses.
                        For example, /(foo)/ matches and remembers 'foo' in "foo bar." The matched substring can be recalled from the resulting array's elements [1], ..., [n]
                        or from the predefined RegExp object's properties $1, ..
* `x|y` -   Matches either x or y.
                        For example, /green|red/ matches 'green' in "green apple" and 'red' in "red apple."
* `\b` -    Matches a word boundary, such as a space. (Not to be confused with [\b].)
                        For example, /\bn\w/ matches the 'no' in "noonday"; /\wy\b/ matches the 'ly' in "possibly yesterday."
* \B -    Matches a non-word boundary.
                        For example, /\w\Bn/ matches 'on' in "noonday", and /y\B\w/ matches 'ye' in "possibly yesterday."
* \d -    Matches a digit character from any alphabet.
                        For example, /\d/ or /[0-9]/ matches '2' in "B2 is the suite number."
* \D -    Matches any non-digit character in any alphabet.
                        For example, /\D/ or /[^0-9]/ matches 'B' in "B2 is the suite number."
* \m -    Matches any alpha or numeric character from any alphabet.
* \M -    Matches any non-alpha and non-numeric character from any alphabet.
* \a -    Matches any alpha character from any alphabet.
* \A -    Matches any non-alpha character from any alphabet.
* \c -    Matches any control character from any alphabet.
* \C -    Matches any non-control character from any alphabet.
* \g -    Matches any character that has graphic representation from any alphabet.
* \G -    Matches any character that has no graphic representation from any alphabet.
* \p -    Matches any printable or space character from any alphabet.
* \P -    Matches any non-printable and non-space character from any alphabet.
* \l -    Matches any lower case character from any alphabet.
* \L -    Matches any non-lower case character from any alphabet.
* \u -    Matches any upper case character from any alphabet.
* \U -    Matches any non-upper case character from any alphabet.
* \n -    Matches any punctuation character from any alphabet.
* \N -    Matches any non-punctuation character from any alphabet.
* \s -    Matches any space character from any alphabet.
* \S -    Matches any non-space character from any alphabet.
* \x -    Matches any hexadecimal character.
* \X -    Matches any non-hexadecimal character.*
@class RegExp
@module core
*/
class RegExp
{

    /**
    Used for intitalization of new instance of RegExp object.
    @method this
    @param regExp {String} Source of the regular expression
    @param [flags]* {String} If provided may contain characters 'i' for case insensitive search and/or 'g' - for global search - to find all occurences of source in the input string.
    @return {RegExp} New instance of RegExp class
    */
    function this(regExp [, flags]) { }

    /**
    Number of matches after last exec or match methods calls.
    @property length
    @type {Integer}
    @readOnly
    */
    property length() { }

    /**
     Last inspected string.
    @property input
    @type {String}
    */
    property input() { }

    /**
    Source code of the regular expression - string this RegExp was build from.
    @property source
    @type {String}
    */
    property source() { }

    /**
    Character position where the first successful match begins in a searched string, read-only.
    @property index
    @type {Integer}
    @readOnly
    */
    property index() { }

    /**
    Character position where the next match begins in a searched string.
    @property lastindex
    @type {Integer}
    @readOnly
    */
    property lastindex() { }

    /**
    Returns n-th matched fragment.
    @property [index]
    @type {Object}
    */
    property [index] { }

    /**
    Checks input string to see if a pattern exists within a string.
    @method test
    @param input {String} String to check
    @return {Boolean} True if a pattern exists within a string, otherwise retuns false.
    */
    function test(input)
    {
    }

     /**
    Returns this RegExp object with length and list of matches set if pattern exists in input string or null otherwise.
    @method exec
    @param input {String} Input string.
    @return {Boolean} This RegExp object with length and list of matches set if pattern exists in input string or null otherwise.
    */
    function exec(input)
    {
    }


}