<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<form style="text-align: center" action="ImageUploadServer2" method="POST" enctype="multipart/form-data">
            
            
           
            
                                   <br>
             <div>
                 <label>Game Image</label><input type="file" name="file">
            </div>
            
                                   <br>
             <div>
                 <label>Game Name</label><input type="text" name="name">
            </div>
            
                                   <br>
             <div>
                 <label>Game Price</label><input type="text" name="price">
            </div>
                                   <br>
               
            <div>
                <button type="submit">Submit</button>
            </div>
        </form>
</body>
</html>
