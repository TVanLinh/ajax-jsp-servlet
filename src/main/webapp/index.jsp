<html>
<head>
    <title>Demo ajax</title>
    <script src="/public/vendors/jquery/jquery-3.2.1.min.js"></script>
    <style>
        #content
        {
            color: aqua;
            font-size: 30px;
        }
    </style>
</head>
<body>
<h2>Hello World!</h2>
<button>
    Load
</button>

<a href="/public/vendors/jquery/jquery-3.2.1.min.js">js-query.min.js</a>
<script>
    $(document).ready(function () {
        load();
    });

    function load() {
        $("button").on("click",function () {
           $.ajax({method:"POST",url:"/json.jsp",dataType:"json",data:{"name":"linh"},
               success:function (result,status) {
                var json=result;
                var str="";
               for(var i=0;i<json.length;i++)
               {
                    str+=
                        "<p>Name: "+
                            json[i].name
                        "</p>";
               }
               $("#content").html(str);
             //  alert(result);
           },error:function () {
               alert("error");
           }});
        });
    }

</script>

<div id="content">

</div>
</body>
</html>
