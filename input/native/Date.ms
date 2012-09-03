/**
Represents date and time. Local and UTC timezones supported.
@class Date
@module core
@example
    var d = new Date();
    console.printf("today is: %d-%d-%d %d:%d:%d\n", d.day, d.month, d.year, d.hour, d.minute, d.second);
    // UTC
    d = new Date("28 Feb 1980 UTC");
    if (d.UTCday != 28 || f.UTCmonth != 2 || d.UTCyear != 1980) throw "date ctor";
    // Locale strings
    console <<<< d.toLocaleString(true, 1);
*/
class Date
{

    /**
    Constructor - creates new date object. If no parameters were given then initializes date fields to the current time (UTC).
    If single string parameter provided then parses date contained in the string.
    @method this
    @param [value] {String} Date in string format: in [RFC-822](http://www.w3.org/Protocols/rfc822/#z28) date format or [ISO 8601](http://www.w3.org/TR/NOTE-datetime)
    @return {Date} New instance of Date class.
    @example
        var d = new Date();
    */
    function this([value]) { }

    /**
    Constructor - creates new date object. If no parameters were given then initializes date fields to the current time (UTC).
    If single string parameter provided then parses date contained in the string.
    @method this
    @param [year] {Integer} full number of the year, e.g. 2005.
    @param [month] {Integer} number of the month, from 1 to 12.
    @param [day] {Integer} number of the day, from 1 up to number of days in the month.
    @param [hour] {Integer} hour, from 0 to 23.
    @param [minute] {Integer} minute, from 0 to 59.
    @param [second] {Integer} second, from 0 to 59.
    @param [millisecond] {Integer} millisecond, from 0 to 999.
    @return {Date} New instance of Date class.
    */
    function this([year, month, day[, hour[, minute[, second[, millisecond]]]]]]) { }

    /**
    Number of the day, from 1 up to number of days in current month.
    @property day
    @type {Integer}
    */
    property day() { }

    /**
    Number of the month, from 1 to 12.
    @property month
    @type {Integer}
    */
    property month() { }

    /**
    Full number of the year, e.g. 2012.
    @property year
    @type {Integer}
    */
    property year() { }

    /**
    Hour, from 0 to 23.
    @property hour
    @type {Integer}
    */
    property hour() { }

    /**
    Minute, from 0 to 59.
    @property minute
    @type {Integer}
    */
    property minute() { }

    /**
    Second, from 0 to 59.
    @property second
    @type {Integer}
    */
    property second() { }

    /**
    Millisecond, from 0 to 999.
    @property millisecond
    @type {Integer}
    */
    property millisecond() { }

    /**
    Day of the week, number of day of the week, from 0 to 6 where 0 is Monday.
    @property dayOfWeek
    @type {Integer}
    @readOnly
    */
    property dayOfWeek() { }

    /**
    First day of the week in current locale, from 0 to 6 where 0 is Monday.
    @property firstDayOfWeek
    @type {Integer}
    @readOnly
    */
    property firstDayOfWeek() { }

    /**
    UTCday, number of the day, from 1 up to number of days in current month.
    @property UTCday
    @type {Integer}
    */
    property UTCday() { }

    /**
    UTCmonth, Number of the month, from 1 to 12.
    @property UTCmonth
    @type {Integer}
    */
    property UTCmonth() { }

    /**
    UTCyear, full number of the year, e.g. 2005.
    @property UTCyear
    @type {Integer}
    */
    property UTCyear() { }

    /**
    UTChour, from 0 to 23.
    @property UTChour
    @type {Integer}
    */
    property UTChour() { }

    /**
    UTCminute, from 0 to 59.
    @property UTCminute
    @type {Integer}
    */
    property UTCminute() { }

    /**
    UTCsecond, from 0 to 59.
    @property UTCsecond
    @type {Integer}
    */
    property UTCsecond() { }

    /**
    UTCmillisecond, from 0 to 999.
    @property UTCmillisecond
    @type {Integer}
    */
    property UTCmillisecond() { }

   /**
    UTCdayOfWeek, number of day of the week, from 0 to 6 where 0 is Monday.
    @property UTCdayOfWeek
    @type {Integer}
    @readOnly
    */
    property UTCdayOfWeek() { }

    /**
    Number of miliseconds. This property is suitable for animation (game) scheduling.
    @method tick
    @return {Integer} Number off milliseconds.
    */
    function tick() { }


    /**
    Actual date
    @method now
    @param [sequential=false] {Boolean} This ensures that two consequtive calls of Date.now(true) return distinct values.
    @return {Date} New instance of date class.
    */
    function now(sequential = false) { }

    /**
    Creates [RFC-822](http://www.w3.org/Protocols/rfc822/#z28) string representation of this date object.
    @method toString
    @return {String} [RFC-822](http://www.w3.org/Protocols/rfc822/#z28) string representation of this date object
    */
    function toString() { }

    /**
    Creates [RFC-822](http://www.w3.org/Protocols/rfc822/#z28) string representation of this date object as UTC date/time.
    @method toUTCString
    @return {String} Returns [RFC-822](http://www.w3.org/Protocols/rfc822/#z28) string representation of this date object as UTC date/time.
    */
    function toUTCString() { }

    /**
    Creates [ISO 8601](http://www.w3.org/TR/NOTE-datetime) string representation of this date object as either local or UTC date/time.
    @method toISOString
    @param [asUTC=false] {Boolean} True for UTC time, false for local time. The default je false.
    @return {String} [ISO 8601](http://www.w3.org/TR/NOTE-datetime) string representation of this date object as either local or UTC date/time.
    */
    function toISOString(asUTC = false) { }

    /**
    Returns string representation of the date using current system settings.
    @method toLocaleString
    @param longFormat {Boolean} If longFormat is equal exactly true then formats date using system long date format.
    @param longFormat {Integer} This parameter defines formatting style.  Argument typeFormat can by one of:
    * 0 - result strings will containts both date and time part
    * 1 - string will represent only date part
    * 2 - only time part will be displayed in result string representation.
    @return {String}
    */
    function toLocaleString(longFormat, typeFormat) { }

    /**
    Calculate number o milliseconds since midnight, January 1, 1970 UTC.
    @method valueOf
    @return {Float} Stored time value in milliseconds since midnight, January 1, 1970 UTC.
    */
    function valueOf() { }

    /**
     This function parse date in string
    @method parse
    @param value {String} Date in string format: in [RFC-822](http://www.w3.org/Protocols/rfc822/#z28) date format or [ISO 8601](http://www.w3.org/TR/NOTE-datetime).
    @return {Date} If result of parsing is successfull then returns Date as number of milliseconds since midnight, January 1, 1970 UTC. On error returns undefiend value.
    */
    function parse(value) { }

   /**
    Calculate number of milliseconds since midnight, January 1, 1970 UTC up to date defined by parameters
    @method UTC
    @param [year] {Integer} full number of the year, e.g. 2005.
    @param [month] {Integer} number of the month, from 1 to 12.
    @param [day] {Integer} number of the day, from 1 up to number of days in the month.
    @param [hour] {Integer} hour, from 0 to 23.
    @param [minute] {Integer} minute, from 0 to 59.
    @param [second] {Integer} second, from 0 to 59.
    @param [millisecond] {Integer} millisecond, from 0 to 999.
    @return {Integer} Number of milliseconds since midnight, January 1, 1970 UTC up to date defined by parameters.
    */
    function UTC([year, month, day[, hour[, minute[, second[, millisecond]]]]]]) { }

    /**
    Sets this date object fields equal to date defined by milliseconds parameter.
    @method setTime
    @param milliseconds {Integer} number of milliseconds since midnight, January 1, 1970 UTC.
    */
    function setTime(milliseconds) { }

    /**
    Find out name of the month in current user's locale.
    @method monthName
    @param longFormat {Boolean} If longFormat is equal true returns full month name, otherwise - it's abbreviation.
    @return {String} String of month's name
    */
    function monthName(longFormat) { }

    /**
    Find out name of the day in current user's locale.
    @method dayOfWeekName
    @param longFormat {Boolean} If longFormat is equal true returns full week name, otherwise - it's abbreviation.
    @return {String} String of day's name
    */
    function dayOfWeekName(longFormat) { }

    /**
    Find out if current clock is using daylight saving time.
    @method isDaylight
    @return {Boolean} True if current clock is using daylight saving time.
    */
    function isDaylight() { }

    /**
    Returns shift in milliseconds of current timezone from GMT.
    @method timeZoneOffset
    @return {Integer} Shift in milliseconds of current timezone from GMT.
    */
    function timeZoneOffset() { }

    /**
    Returns name of current timezone.
    @method timeZoneName
    @return {String} Name of current timezone.
    */
    function timeZoneName() { }

}