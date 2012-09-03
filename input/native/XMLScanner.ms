/**
XMLScanner - XML/HTML tokenzier. Also known as XML push parser.
@class XMLScanner
@module core
*/
class XMLScanner
{

    /**
    Creates new instance of XMLScanner class, and load xml file into it.
    @method this
    @param input {Stream} Source stream.
    @return {XMLScanner} New instance of XMLScanner
    */
    function this(input) { }

    /**
    Error in markup of input stream
    @property ERROR
    @final
    @type {Integer}
    */
    property ERROR() { }

    /**
    End of stream reached.
    @property EOF
    @final
    @type {Integer}
    */
    property EOF() { }

    /**
    Head of the element parsed.
    @property HEAD
    @final
    @type {Integer}
    @example
        <tag ...
        ^-- happens here
    */
    property HEAD() { }

       /**
    End of head of non-empty element parsed.
    @property HEAD_END
    @final
    @type {Integer}
    @example
            <tag ...
            ____^-- happens here
    */
    property HEAD_END() { }

       /**
    End of head of empty element parsed
    @property EMPTY_HEAD_END
    @final
    @type {Integer}
    @example
            <tag ... />
            _____^-- happens here
    */
    property EMPTY_HEAD_END() { }

       /**
    Tail of the non-empty element parsed
    @property TAIL
    @final
    @type {Integer}
    @example
            <tag ... />
            ^-- happens here
    */
    property TAIL() { }

       /**
    Attribute can be with or without (html style) value. scanner.attribute is the name of attribute and scanner.value - is a value of attribute. Attribute parsed.
    @property ATTR
    @final
    @type {Integer}
    @example
        <tag attr="value" >
        _______________^-- happens here
    */
    property ATTR() { }

       /**
    Space sequence parsed.
    @property WORD
    @final
    @type {Integer}
    */
    property WORD() { }

       /**
    CData parsed.
    @property CDATA
    @final
    @type {Integer}
    @example
            <![CDATA[ ...value... ]]>
            __________________^-- happens here
    */
    property CDATA() { }

       /**
    Processing instruction parsed.
    @property PI
    @final
    @type {Integer}
    @example
            <? ...value... ?>
            ___________^-- happens here
    */
    property PI() { }

       /**
    Scanner.value contains text of the doctype declaration: characters after <!DOCTYPE and before closing '>' doctype declaration parsed
    @property DOCTYPE
    @final
    @type {Integer}
    @example
            <!DOCTYPE ...value... >
            ___________________^-- happens here
    */
    property DOCTYPE() { }

/**
    Text of attribute value, text, cdata or pi.
    @property value
    @type {String}
    */
    property value() { }

 /**
    Name of the attribute. Valid if token == XMLScanner.ATTR.
    @property attribute
    @type {String}
    */
    property attribute() { }

    /**
    Name of the tag. Valid if token is XMLScanner.HEAD, XMLScanner.TAIL or XMLScanner.HEAD_END.
    @property tag
    @type {String}
    */
    property tag() { }

    /**
    Reports current line number in input stream
    @property lineNo
    @readOnly
    @type {Integer}
    */
    property lineNo() { }

   /**
    Returns one of constants above.  Use them in fully qualified form, e.g. XMLScanner.HEAD, XMLScanner.TAIL, etc.
    @method token
    @return {Integer} One of XMLScanner's constants.
    */
    function token() { }

   /**
     Pushes back current token so next invocation of token() will return it.
    @method stepBack
    @return {Integer}
    */
    function stepBack() { }
}