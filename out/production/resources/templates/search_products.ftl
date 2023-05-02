<!DOCTYPE html>
<html>
<head>
  <title>Search Results</title>
</head>
<body>
  <h1>Search Results</h1>
  <form action="/products" method="get">
    <label for="name">Search by Name:</label>
    <input id="txtSearch" type="text" name="keyword"/>
    <button type="submit">Search</button>
  </form>
  <ul>
    <#list products as product>
      <li>${product.productName}</li>
    </#list>
  </ul>
</body>
</html>
