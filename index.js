(()=>{
    
    $.ajax("./data/products.php").then(data=>{

        /*热卖商品数据库导出数据*/ 
            $(".hot-sale").html(`
                <h1 class="hot-tit">热卖商品</h1>
                <div class="hot-cont">
                    <ul class="hot-list">
                        <li>
                            <p><a target="_blank" href="details.html?pid=${data["data"][0].pid}"><img src="${data["data"][0].picture}" width="136" height="112" alt="安岳柠檬" /></a></p>
                            <p class="hot-name"><a href="details.html?pid=${data["data"][0].pid}">${data["data"][0].main_title}</a></p>
                            <p class="hot-name"><span>￥${data["data"][0].cuxiao_price}</span></p>
                        </li>
                        <li>
                            <p><a target="_blank" href="details.html?pid=${data["data"][1].pid}"><img src="${data["data"][1].picture}" width="136" height="112" alt="安岳柠檬" /></a></p>
                            <p class="hot-name"><a href="details.html?pid=${data["data"][1].pid}">${data["data"][1].main_title}</a></p>
                            <p class="hot-name"><span>￥${data["data"][1].cuxiao_price}</span></p>
                        </li>
                        <li>
                            <p><a target="_blank" href="details.html?pid=${data["data"][2].pid}"><img src="${data["data"][2].picture}" width="136" height="112" alt="安岳柠檬" /></a></p>
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
                <li><a href="details.html?pid=${data["data"][0].pid}" target="_blank"><img src="${data["data"][0].picture}" alt="手办" width="215" height="199" /></a></li>
                <li><a href="details.html?pid=${data["data"][1].pid}" target="_blank"><img src="${data["data"][1].picture}" alt="手办" width="215" height="199" /></a></li>
                <li><a href="details.html?pid=${data["data"][2].pid}" target="_blank"><img src="${data["data"][2].picture}" alt="手办" width="215" height="199" /></a></li>
            </ul>
        `);
          
          $(".promotion-area img").hover(
              function () {
                  $(this).addClass("animated jackInTheBox");
              },
          );
        //   $(".promotion-area img").mouseleave(
        //       function () {
        //           $(this).removeClass("animated jackInTheBox");
        //       }
        //   )
    
    
    /*百步飞剑专区*/
        $("#content>div:nth-child(3)").html(`
            <h1>
                <span>百步飞剑</span>
                <span class="show-arrow"></span>
                <a href="product.html?kw=百步飞剑">更多</a>
            </h1>
            <ul class="show-list">
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][0].pid}"><img src="${data["data"][0].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][0].main_title}</p>
                <p class="show-price">￥${data["data"][0].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][1].pid}"><img src="${data["data"][1].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][1].main_title}</p>
                <p class="show-price">￥${data["data"][1].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][2].pid}"><img src="${data["data"][2].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][2].main_title}</p>
                <p class="show-price">￥${data["data"][2].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][3].pid}"><img src="${data["data"][3].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][3].main_title}</p>
                <p class="show-price">￥${data["data"][3].cuxiao_price}</p>
            </li>
            </ul>
        `)
    /*百步飞剑专区*/

    /*夜尽天明专区*/
        $("#content>div:nth-child(4)").html(`
            <h1>
                <span>夜尽天明</span>
                <span class="show-arrow"></span>
                <a href="product.html?kw=夜尽天明">更多</a>
            </h1>
            <ul class="show-list">
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][4].pid}"><img src="${data["data"][4].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][4].main_title}</p>
                <p class="show-price">￥${data["data"][4].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][5].pid}"><img src="${data["data"][5].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][5].main_title}</p>
                <p class="show-price">￥${data["data"][5].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][6].pid}"><img src="${data["data"][6].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][6].main_title}</p>
                <p class="show-price">￥${data["data"][6].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][7].pid}"><img src="${data["data"][7].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][7].main_title}</p>
                <p class="show-price">￥${data["data"][7].cuxiao_price}</p>
            </li>
            </ul>
        `)
    /*夜尽天明专区*/

    
    /*诸子百家专区*/
        $("#content>div:nth-child(5)").html(`
            <h1>
                <span>百步飞剑</span>
                <span class="show-arrow"></span>
                <a href="product.html?kw=百步飞剑">更多</a>
            </h1>
            <ul class="show-list">
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][8].pid}"><img src="${data["data"][8].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][8].main_title}</p>
                <p class="show-price">￥${data["data"][8].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][9].pid}"><img src="${data["data"][9].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][9].main_title}</p>
                <p class="show-price">￥${data["data"][9].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][10].pid}"><img src="${data["data"][10].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][10].main_title}</p>
                <p class="show-price">￥${data["data"][10].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][11].pid}"><img src="${data["data"][11].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][11].main_title}</p>
                <p class="show-price">￥${data["data"][11].cuxiao_price}</p>
            </li>
            </ul>
        `)
    /*百步飞剑专区*/

    /*万里长城专区*/
        $("#content>div:nth-child(6)").html(`
            <h1>
                <span>万里长城</span>
                <span class="show-arrow"></span>
                <a href="product.html?kw=万里长城">更多</a>
            </h1>
            <ul class="show-list">
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][12].pid}"><img src="${data["data"][12].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name" style="font-size:14px">${data["data"][12].main_title}</p>
                <p class="show-price">￥${data["data"][12].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][13].pid}"><img src="${data["data"][13].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][13].main_title}</p>
                <p class="show-price">￥${data["data"][13].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][14].pid}"><img src="${data["data"][14].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][14].main_title}</p>
                <p class="show-price">￥${data["data"][14].cuxiao_price}</p>
            </li>
            <li>
                <p><a target="_blank" href="details.html?pid=${data["data"][15].pid}"><img src="${data["data"][15].picture}" alt="百货" width="136" height="137"></a></p>
                <p class="show-name">${data["data"][15].main_title}</p>
                <p class="show-price">￥${data["data"][15].cuxiao_price}</p>
            </li>
            </ul>
        `)
    /*夜尽天明专区*/
     

    })

})()