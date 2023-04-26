<%@ page contentType="text/html;charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<header>
   <nav class="navbar navbar-expand-lg bg-body-tertiary">
     <div class="container-fluid">
       <a class="navbar-brand" href="#">Navbar</a>
       <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
         <span class="navbar-toggler-icon"></span>
       </button>
       <div class="collapse navbar-collapse" id="navbarNav">
         <ul class="navbar-nav">
           <li class="nav-item">
             <a class="nav-link active" aria-current="page" href="/index">Home</a>
           </li>
         </ul>
       </div>
     </div>
   </nav>
    <nav>
        <ul class = "dropdown-menu">
        <c:choose>
            <c:when test="${sessionScope.username!= null}">
                <li><a href="logout" class="dropdown-item">로그아웃</a></li>
            </c:when>
            <c:otherwise>
                <li><a href="index.jsp" class="dropdown-item">로그인</a></li>
                <li><a href="register.jsp" class="dropdown-item">회원가입</a></li>
            </c:otherwise>
        </c:choose>
        </ul>
    </nav>
</header>
