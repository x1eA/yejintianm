(()=>{
    function loadUser(){
      $.get("data/hello.php").then(data=>{
        console.log(data);
        var html="";
        html+=`
            <p class="person-photo"><img src="${data.avatar}" width="87" height="87" alt="${data.uid}" /></p>
            <p class="person-name"><a href="javascript:;" style="color:red;font-size:16px">${data.uname}</a>，您好！</p>
             <p class="person-repair"><a href="data.html">[修改]</a></p>
        `;
        if(data.uid)
            $(".person-message").html(html);
      });
    }
    loadUser();
})()