


    function loadShoppingCart(){
        $.ajax({
            type: "get",
            // async:false,
            url: "data/shopping_cart.php",
            success: function (data) {
                console.log(data)
                var html = "";
                var totalPrices=0;
                var totalCount=0;
                for (var i = 0; i < data.productLists.length; i++) {
                    html += `
                    <ul class="shopping-message">
                        <li class="checked"><span><input type="checkbox" class="checkallbox" data-checkbox="${data.all[i].sc_id}"/></span><img src="${data.productLists[i].picture}" width="80" height="80" alt="xx" /></li>
                        <li class="name"><a href="details.html?pid=${data.productLists[i].pid}">${data.productLists[i].main_title}</a></li>
                        <li class="message">${data.productLists[i].sub_title}</li>
                        <li class="price">${data.productLists[i].cuxiao_price}</li>
                        <li class="count">
                            <span data-sub="${data.productLists[i].pid}">-</span>
                            <span class="count-number"><input type="text" data-i="inp" data-input="${data.productLists[i].pid}" value="${data.productLists[i].sc_count}" /></span>
                            <span data-add="${data.productLists[i].pid}">+</span>
                        </li>
                        <li class="operation"><a href="#" class="del-operation" data-title="删除" data-sc_id="${data.all[i].sc_id}">删除</a></li>
                    </ul>
                    `;
                    totalPrices+=data.productLists[i].cuxiao_price*data.productLists[i].sc_count;
                    totalCount+=parseInt(data.productLists[i].sc_count);
                }
                
                $(".cart-total span:first-child>span").html(totalCount);
                $(".cart-nav").next().html(html);
                var Prices=totalPrices.toFixed(2);
                $(".cart-total span:nth-child(2)").html("总计：￥"+Prices+"元");
                $(".cash-total").html("￥"+Prices+"元")
            },
            error: function () {}   
        })
    }
    loadShoppingCart();


/**删除商品 异步加载购物车 */
$(".cart-message").on("click", "[data-title]", function (e) {
        e.preventDefault();
        var a = $(e.target).attr("data-sc_id");
        if (!confirm("是否删除这一行商品！")) {
            return;
        }
        $.ajax({
            type: "post",
            url: "data/shopping_delete.php",
            data: {
                pid: a
            },
            success: function (data) {
                console.log(data);
                loadShoppingCart();
            },
            error: function () {}
        })
        // $(e.target).parent().parent().remove();
    })

/**add+ 商品数量 */
$(".cart-message").on("click","[data-add]",function(e){
    var m=$(e.target).prev("span").children();
    var n=parseInt(m.val());
    n+=1;
    m.val(n);
    var pid=$(e.target).attr("data-add");
    $.ajax({
        type:"post",
        url:"data/shopping_update.php",
        data:{count:n,pid:pid},
        success:function(data){
            console.log(data)
            loadShoppingCart()    
        },
        error:function(data){}
    })
})

/**sub- 商品数量 */
$(".cart-message").on("click","[data-sub]",function(e){
    var m=$(e.target).next("span").children();
    var n=parseInt(m.val());
    if(n<=1) {return}
    n-=1;
    m.val(n);
    var pid=$(e.target).attr("data-sub");
    $.ajax({
        type:"post",
        url:"data/shopping_update.php",
        data:{count:n,pid:pid},
        success:function(data){
            console.log(data)
            loadShoppingCart()    
        },
        error:function(data){}
    })
})

/**input里面的值失去焦点 改变数量 */
$(".cart-message").on("blur","[data-input]",function(e){
    var is=parseInt($(e.target).val());
    if(is<=0) {return}
    var pid=$(e.target).attr("data-input");
    $.ajax({
        type:"post",
        url:"data/shopping_update.php",
        data:{count:is,pid:pid},
        success:function(data){
            console.log(data)
            loadShoppingCart()    
        },
        error:function(data){}
    })
})


/**全选，并且添加checked属性 */
var chball=$("#checkall");
// 绑定事件
chball.on("click",function(e){
    // e.preventDefault();
    //查找要修改的元素
    var th=$(e.target);
    if(th.attr("checked")==false) th.attr("checked",true);
    else if(th.attr("checked")==true) th.attr("checked",false)
    var chbs=document.querySelectorAll(".cart-message .shopping-message .checked>span>input");
    //修改元素
    for(var chb of chbs){
        chb.checked=this.checked;
        // console.log(chb.checked)
    }
    // console.log(chball.prop("checked"))   //检查子代input是否被选中
    
})

// var chbs=document.querySelectorAll("table>tbody td:first-child>input");
    // for(var chb of chbs){
    //     chb.onclick=function(){
    //         if(this.checked==false){
    //             chball.checked=false;
    //         }else{
    //             var unchb=document.querySelector("table>tbody td:first-child>input:not(:checked)");
    //             if(unchb){
    //                 chball.checked=false;
    //             }else chball.checked=true;
    //         }
    //     }
// }

$(".cart-message").on("click",".delete,.clear",function () {
    if (!confirm("是否删除???!!!")) {
            return;
        }
    $.get("data/shopping_delete.php",function(data){
        alert(data);
        loadShoppingCart();
    })
})
        
