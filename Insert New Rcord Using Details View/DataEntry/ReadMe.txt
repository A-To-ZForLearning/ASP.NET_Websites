Changes on the AuthorInsert.aspx page
1- Add SqlDataSource to the authors table
2- Create a DataViewList server control, which display only one record at a time
3- To solev the folding data for the header like
Author First Name 
will be displaied like this 
Author
First
Name
in the header, to solve this issue we go to the properities from Edit Fields and then go to the 
header Style property and make the value = false.
4- Same problem for the data fields we go to the properities and then go to the item style 
and make the value = false

5- To insert a new record, we add the Enable Inserting from the configuration list of the Details View
6- To make the page for Insertion only, we go to the properties to the DefaultMode and change it from Readonly to Insert.