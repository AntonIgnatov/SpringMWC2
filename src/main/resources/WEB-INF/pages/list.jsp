<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<head>
    <title>Prog.kiev.ua</title>
</head>
<body>

<div align="center">
    <form action="/removeselected" enctype="multipart/form-data" method="POST">
        <table border="1">

            <tbody>
            <c:forEach items="${keys}" var="photo_id">
                <tr>
                    <td><input type="checkbox" name="toremove[]" value="${photo_id}"></td>
                    <td><img src="/photo/${photo_id}" width="50"></td>
                    <td><a href="/photo/${photo_id}">${photo_id}</a></td>

                </tr>
            </c:forEach>
            </tbody>

        </table>
        <input type="submit" value="Remove selected">
    </form>
</div>

</body>
</html>