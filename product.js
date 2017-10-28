(() => {
    
    function loadProduct(n){
        // var n = 1;
        var n = $(".page-active").html();
        var params = location.search.slice(1) + "&pno=" + n;
        $.get("./data/products.php", params).then(data => {
            console.log(data);
            var html = "";
            if (data.data.length < 0) {
                html += `<h1 class="title">无此商品</h1>
                        <ul class="show-list">`;
                $(".product-show").html(html);
            } else if (data.data.length > 0 && data.data.length <= 4) html += `<h1 class="title">所有手办</h1>
            <ul class="show-list">`;
            else if (data.data.length > 4)
                html += `<h1 class="title">所有手办</h1>
            <ul class="show-list">`;
            for (var o of data["data"]) {
                html +=
                    `
                        <li>
                            <p><a href="details.html?pid=${o.pid}"><img src="${o.picture}" alt="百货" width="151" height="151" /></a></p>
                            <p class="show-name">${o.main_title}</p>
                            <p class="show-price">￥${o.cuxiao_price}</p>
                        </li>
                    `;
            }
            $(".product-show").html(html);
            $(".product-show").attr("data-pno",data.pageCount);
            /*product页面异步查询数据*/


            /*热卖商品数据库导出数据*/
            $(".hot-sale").html(`
                    <h1 class="hot-tit">热卖商品</h1>
                    <div class="hot-cont">
                        <ul class="hot-list">
                            <li>
                                <p><a href="details.html?pid=${data["data"][0].pid}"><img src="${data["data"][0].picture}" width="136" height="112" alt="安岳柠檬" /></a></p>
                                <p class="hot-name"><a href="details.html?pid=${data["data"][0].pid}">${data["data"][0].main_title}</a></p>
                                <p class="hot-name"><span>￥${data["data"][0].cuxiao_price}</span></p>
                            </li>
                            <li>
                                <p><a href="details.html?pid=${data["data"][1].pid}"><img src="${data["data"][1].picture}" width="136" height="112" alt="安岳柠檬" /></a></p>
                                <p class="hot-name"><a href="details.html?pid=${data["data"][1].pid}">${data["data"][1].main_title}</a></p>
                                <p class="hot-name"><span>￥${data["data"][1].cuxiao_price}</span></p>
                            </li>
                            <li>
                                <p><a href="details.html?pid=${data["data"][2].pid}"><img src="${data["data"][2].picture}" width="136" height="112" alt="安岳柠檬" /></a></p>
                                <p class="hot-name"><a href="details.html?pid=${data["data"][2].pid}">${data["data"][2].main_title}</a></p>
                                <p class="hot-name"><span>￥${data["data"][2].cuxiao_price}</span></p>
                            </li>
                        </ul>
                    </div>
                `);
            /*热卖商品数据库导出数据*/


            $(".promotion-area").html(`
                <h1 class="title">促销专区</h1>
                <ul class="promotion-list">
                    <li><a href="details.html?pid=${data["data"][0].pid}"><img src="${data["data"][0].picture}" alt="手办" width="215" height="199" /></a></li>
                    <li><a href="details.html?pid=${data["data"][1].pid}"><img src="${data["data"][1].picture}" alt="手办" width="215" height="199" /></a></li>
                    <li><a href="details.html?pid=${data["data"][2].pid}"><img src="${data["data"][2].picture}" alt="手办" width="215" height="199" /></a></li>
                </ul>
            `);
        }).then(data=>{
            console.log($(".product-show").attr("data-pno"));  
        })
    }
    loadProduct()
    $(".page-list").html(`<p> <span class="prev">&lt;上一页</span> <span class="page-active page">1</span> <span class="page">2</span> <span class="next">下一页&gt;</span> </p>`);

    $(".next").click(() => {
        $(".page-active").removeClass("page-active").next().addClass("page-active");
        var n = $(".page-active").html();
        console.log(n);
        loadProduct(n);
    })
    $(".prev").click(() => {
        $(".page-active").removeClass("page-active").prev().addClass("page-active");
        var n = $(".page-active").html();
        console.log(n);
        loadProduct(n);
    })
    $(".page").click((e)=>{
        $(e.target).addClass("page-active").siblings().removeClass("page-active");
        var n = $(".page-active").html();
        console.log(n);
        loadProduct(n);
    })
})()