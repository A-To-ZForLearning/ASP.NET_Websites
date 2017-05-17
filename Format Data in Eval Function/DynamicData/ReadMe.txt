Changes happened on the file Titles.aspx
1-  The Changes on the column format with the funtion Eval
    where the format could be in this format Eval("ColName","data format")
    which must be within the curly braces as well as indicate the index of the element 
    inside the array that will be returned, which the index 0 -->

	format design is =  " + { + index + : + format + } + " = "{i:format}"

	for the date format d for small date and D for long date format
	 Text='<%# Eval("pubdate","{0:D}") %>' />

	 f2 for the float format to display 2 numbers after the colon
     Text='<%# Eval("price","${0:f2}") %>' />

