module.exports = {
    includeAsLib: function(item) {
    	var prefixNatives = "input/native/";
    	var prefixFramework = "../moscrif-framework/";
    	if (item.length >= prefixNatives.length && item.substring(0, prefixNatives.length) == prefixNatives)
			return "";
        return "include \"lib://" + item.substring(prefixFramework.length) + "\";";
    }
};
