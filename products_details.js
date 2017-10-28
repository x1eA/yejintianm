(()=>{
    //详情页数据加载
    var params=location.search.slice(1);
    $.get("data/product_details.php",params).then(data=>{
        console.log(data.details);
        $(".text-container>h1").html(data.details.main_title);
        $(".pro-text").html(data.details.sub_title);
        var html="";
        html+=`
            <dl>
                <dt>促销价</dt>
                    <dd class="low-price">￥${data.details.cuxiao_price}</dd>
            </dl>
            <dl>
                <dt>原价</dt>
                <dd>￥<del>${data.details.price}</del>
                    <span>${data.details.unit_price}</span>
                </dd>
            </dl>
        `
        $(".pro-price").html(html);
        $(".freight>dd>:last-child").html("快递￥"+data.details.price_address);
        $(".count-total").html(`
            <li>月销量<span>${data.details.sales_volume}</span></li>
            <li>累计评价<span>${data.details.appraise}</span></li>
            <li>好评率<span>98%</span></li>
        `);
        $(".stock-total").html("库存"+data.details.stock+"件")
        console.log(data.details.picList)
        $("#tsImgS").html(`<a href="${data.details.picList[0]}" title="Images" class="MagicZoom" id="MagicZoom">
                            <img width="300" height="224" src="${data.details.picList[0]}"/></a>`)
        var html="";
        for(var i=0;i<data.details.picList.length;i++){
            html+=`
                <li onclick="showPic(${i})" rel="MagicZoom"><img height="42" width="42" src="${data.details.picList[i]}" tsImgS="${data.details.picList[i]}"/></li>
            `
        }
        $("#tsImgSCon ul").html(html);
        $(".goods-details").html(data.details.details_pic)
    })

    //评价页数据加载
    function loadPromise(n){
        var n = $(".page-active").text();
        if(!n) n=1;
        console.log(n)
        $.get("./data/promise.php",params+"&pno="+n).then(data=>{
            console.log(data);
            $(".tab-evaluation").html(`累计评价${data.recordCount}`);
            var html="";
            for(var i=0;i<data.data.length;i++){
                html+=`
                    <li>
                        <p class="eval-content">${data.data[i].content}</p>
                        <p class="eval-time">${data.data[i].app_time}</p>
                        <p class="eval-people">用户:  ${data.data[i].uname}</p>
                    </li> 
                `;
            }
            $(".total-evaluation>ul").html(html);
            
        })
    }
    loadPromise();


   $(".page-list").html(`<p> <span class="prev">&lt;上一页</span> <span class="page-active page">1</span> <span class="page">2</span> <span class="next">下一页&gt;</span> </p>`);

    $(".next").click(() => {
        $(".page-active").removeClass("page-active").next().addClass("page-active");
        var n = $(".page-active").html();
        console.log(n);
        loadPromise(n);
    })
    $(".prev").click(() => {
        $(".page-active").removeClass("page-active").prev().addClass("page-active");
        var n = $(".page-active").html();
        console.log(n);
        loadPromise(n);
    })
    $(".page").click((e)=>{
        $(e.target).addClass("page-active").siblings().removeClass("page-active");
        var n = $(".page-active").html();
        loadPromise(n);
    })
})()