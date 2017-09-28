
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Calculator</title>
        <link rel="stylesheet" type="text/css" href="CSS_formatting.css"/>           
    </head>
    <body>
        <h1>Simple Salary Calculator</h1>
        <hr><br>
        <form name="calculator" action="result.jsp" method="post">
            <table>
                <tbody>
                    <tr>
                        <td>Hours Worked:</td>
                        <td><input type="text" name="hours" value="" size="50"></td>
                    </tr>
                    <tr>
                       <td>Hourly Pay:</td> 
                       <td><input type="text" name="pay" value="" size="50"></td>
                    </tr>
                    <tr>
                        <td>Pre-tax Deduction:</td>
                        <td><input type="text" name="pretax" value="" size="50"></td>
                    </tr>
                    <tr>
                     <td>Post-tax Deduct:</td>  
                     <td><input type="text" name="posttax" value="" size="50"></td>
                    </tr>
                 
                </tbody>

            </table>
            <input type="submit" value="Submit" id="submit"> 
                <input type="reset" value="Clear" id="clear">
                
        </form>
    </body>
</html>
