(()=>{
    $.get("data/information.php").then(data=>{
        // console.log(data);
        $(".data-input .photo img").attr("src",data.user.avatar);

        /**异步加载数据库头像并点击加载 */
        $(".avatar_change").on("click",function(e){
            var html="";
            html+=`<dt>修改头像：</dt>`;
            for(var i=0;i<data.avatar_all.length;i++){
                html+=`<dd><img src="${data.avatar_all[i]}" width="80" height="80" alt="头像" class="select_avatar" /></dd>
                
                `
            }
            $(".photo").html(html);
            
        });
        /**选择当前选中头像 */
        $(".photo").on("click","img.select_avatar",function(e){
                // $(this).css("border","3px solid red");
                $(this).addClass("active").parent().siblings().children().removeClass("active");
        })

        /* 修改个人信息*/ 
        $(".btn_submit").click(function(){
            var uname=$(".uname").val(),
            upwd=$(".upwd").val(),
            avatar=$(".active").attr("src"),
            birthday=$(".btn").val();
            console.log(uname+upwd+avatar+birthday)
            $.ajax({
                type:"get",
                url:"data/update_information.php",
                data:{uname:uname,upwd:upwd,avatar:avatar,birthday:birthday},
                success:function(data){alert(data.msg);location.href="index.html"},
                error:function(data){}
            })
        })
        
    })
})()