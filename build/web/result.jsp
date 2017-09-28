<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Salary Information</title>
                <link rel="stylesheet" type="text/css" href="CSS_formatting.css"/>  
    </head>
  <% int hoursWorked = Integer.parseInt(request.getParameter("hours"));
    int hourlyPay = Integer.parseInt(request.getParameter("pay"));
    double preTax = Double.parseDouble(request.getParameter("pretax"));
    double postTax = Double.parseDouble(request.getParameter("posttax"));
   
    int otHours;
    int regularHour;
    double otPay;
    double regularPay;
    double grossPay;
    double taxablePay;
    double taxAmount;
    double postTaxPay;
    double netPay;
    double otPayRate;
    
if (hoursWorked>40)
{regularHour=40;
otHours=hoursWorked-40;
 otPayRate= hourlyPay*1.5;
otPay =otHours*otPayRate;
regularPay = regularHour*hourlyPay;
grossPay=regularPay+otPay;}
else 
{grossPay=hoursWorked*hourlyPay;
otHours=0;
otPay=0;}

taxablePay=grossPay-preTax;

if (grossPay<500) {taxAmount=taxablePay*0.18;}
else {taxAmount = taxablePay*0.22;}

postTaxPay=taxablePay-taxAmount;
netPay=postTaxPay-postTax;
    
    %>
    <body>
        <h1>Salary Information</h1>
        <hr> <br>
        <table border="1">
            <tbody>
                <tr>
                    <td>Total Hours Worked:</td>
                    <td><%=hoursWorked%></td>
                </tr>
                <tr><td>Hourly Rate:</td>
                    <td>$<%=hourlyPay%></td>
                </tr>
            <tr>
                <td>#Hours Overtime:</td>
                    <td><%= otHours%></td>
            </tr>
            <tr>
                <td>Overtime Hourly Rate:</td>
                <td>$<%= otPay%></td>
            </tr>
            <tr>
                <td>Gross Pay:</td>
                <td>$<%=grossPay%></td>
            </tr>
            <tr>
                <td>Pre-tax Deduct:</td>
                <td>$<%=preTax%></td>
            </tr>
            <tr>
                <td>Pre-tax pay:</td>
                <td><%=taxablePay%></td>
            </tr>
            <tr>
                <td>Tax Amount:</td>
                <td>$<%=taxAmount%></td>
            </tr>
            <tr>
                <td>Post-tax pay:</td>
                <td><%=postTaxPay%></td>
            </tr>
            <tr>
                <td>Post-tax Deduct:</td>
                <td>$<%=postTax%></td>
            </tr>
            <tr>
                <td>Net Pay:</td>
                <td>$<%= netPay%></td>
            </tr>
            </tbody>
        </table>
             
    </body>

