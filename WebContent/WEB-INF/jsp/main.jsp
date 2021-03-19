<!-- コード10-9 メイン画面を出力するビュー -->
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="model.User,model.Mutter,java.util.List" %>
<!-- セッションスコープに保存されたユーザー情報を取得 -->
<% User loginUser = (User) session.getAttribute("loginUser"); %>
<!--  アプリケーションスコープに保存されたつぶやきをリストを取得 -->
<% List<Mutter> mutterList = (List<Mutter>) application.getAttribute("mutterList"); %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>どこつぶ</title>
</head>
<body>
  <p><%= loginUser.getName() %>さん、ログイン中</p>
  <a href="/docoTsubu/Logout">ログアウト</a>
  <p><a href="/docoTsubu/Main">更新</a></p>
  <form action="/docoTsubu/Main" method="post">
    <input type="text" name="text">
    <input type="submit" value="つぶやく">
  </form>
  <% for(Mutter mutter : mutterList) { %>
    <p><%= mutter.getUserName() %>:<%= mutter.getText() %></p>
  <% } %>
</body>
</html>