<%-- 
    Document   : Calc
    Created on : 30/11/2017, 09:53:46
    Author     : andrevieira
--%> 
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Status</title>
    </head>
    <body>
        
        <h1>Status</h1>
        <%
            String nota1 =  request.getParameter("nota1");
            String nota2 = request.getParameter("nota2");
            String nota3 = request.getParameter("nota3");
            double nt1 = Double.parseDouble(nota1);
            double nt2 = Double.parseDouble(nota2);
            double nt3 = Double.parseDouble(nota3);
            double aux;
            if (nt1 < nt2 ) {
                aux = nt1;
                nt1 = nt2;
                nt2 = aux;
            }
             if (nt1 < nt3 ) {
                aux = nt1;
                nt1 = nt3;
                nt3 = aux;
            }
              if (nt2 < nt3 ) {
                aux = nt2;
                nt2 = nt3;
                nt3 = aux;
            }
              
            double media = (nt1 + nt2) / 2;
            String status;
            if (media < 4){
                status = "REPROVADO";
            }else if (media < 6) {
                status = "RECUPERAÇÃO";
            }else {
                status = "APROVADO";
            }
        %>
        
        <p>NOTA: <%out.print(media);%></p>
        <P>STATUS DO ALUNO: <%out.print(status);%></p>
        
    </body>
</html>
