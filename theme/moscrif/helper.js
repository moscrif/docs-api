module.exports = {
    includeAsLib: function(item) {
		var res = item.substring(21);
		if (res.length < 4)
			return "";
        return "include \"lib://" + item.substring(21) + "\";";
    }
};
