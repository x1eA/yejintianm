 /*   引入登录框代码片段
  **  和登录之后变化的ajax
  */ 
 
// (()=>{
//   $.get("login_in.html",function(html){
//     $("#nav-side").prepend(html);
//   }).then(()=>{
//       $(".login-btn>a:first-child")
//         .click(function (e) {
//           e.preventDefault();
//           var u = $("#uname").val();
//           var p = $("#upwd").val();
//           $.ajax({
//             type: "get",
//             url: "data/login.php",
//             data: {
//               uname: u,
//               upwd: p
//             },
//           }).then(()=>{
//             return $.get("data/hello.php")
//           }).then(data => {
//             console.log(data);
//             $(".user-name").html(data.uname).next().html("欢迎回来!");
//             if (data.uname != undefined) {
//               $(".login-suc>dt>img").attr("src", data.avatar);
//               $(".login_con").hide();
//           }
//         })
//       })
//   })
// })()



(()=>{
  $.get("login_in.html",function(html){
    $("#nav-side").prepend(html);
  }).then(()=>{
    $(".login-btn").on("click","a.login_in",function(e){
      e.preventDefault();
      var uname = $("#uname").val();
      var upwd = $("#upwd").val();
      $.get("data/login.php",{uname:uname,upwd:upwd})
      .then();
      loadUser();
    });
    function loadUser(){
      $.get("data/hello.php")
          .then(data=>{
            console.log(data.uid)
            if (data.uname != undefined) {
              $(".user-name").html(data.uname).next().html("欢迎回来!");
              $(".login-suc>dt>img").attr("src", data.avatar);
              $(".login_con").hide();
            }
        });
    }
    $(".login-suc").on("click","a",(e)=>{
      $.get("data/exit.php");
    })
    loadUser();
  })


  /*加载左侧产品栏*/ 
      // html=`
      //           <h1 class="kinds-tit">产品分类</h1>
      //       <div class="kinds-cont">
      //         <div class="kinds-det">
      //           <h2 class="det-tit">百步飞剑</h2>
      //           <div class="det-content">
      //             <a href="details.html">荆天明</a>
      //             <a href="details.html">高月</a>
      //             <a href="details.html">赤练</a>
      //             <a href="details.html">雪女</a>
      //             <div style="clear: both;"></div>
      //           </div>
      //         </div>
      //         <div class="kinds-det">
      //           <h2 class="det-tit">夜尽天明</h2>
      //           <div class="det-content">
      //             <a href="details.html">项少羽</a>
      //             <a href="details.html">盖聂</a>
      //             <a href="details.html">端木蓉</a>
      //             <a href="details.html">高渐离</a>
      //             <div style="clear: both;"></div>
      //           </div>
      //         </div>
      //         <div class="kinds-det">
      //           <h2 class="det-tit">诸子百家</h2>
      //           <div class="det-content">
      //             <a href="details.html">石兰</a>
      //             <a href="details.html">卫庄</a>
      //             <a href="details.html">荆轲</a>
      //             <a href="details.html">张良</a>
      //             <div style="clear: both;"></div>
      //           </div>
      //         </div>
      //         <div class="kinds-det">
      //           <h2 class="det-tit">万里长城</h2>
      //           <div class="det-content">
      //             <a href="details.html">姬如千泷</a>
      //             <a href="details.html">紫女</a>
      //             <a href="details.html">月神</a>
      //             <a href="details.html">大铁锤</a>
      //             <div style="clear: both;"></div>
      //           </div>
      //         </div>
      //       </div>
        
      // `;
  $.get("load_aside.html",function(html){
    $(".pro-kinds").prepend(html);
  })
})()



