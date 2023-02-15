// 该文件专门用于创建整个应用的路由器
import VueRouter from 'vue-router'
//引入组件
// import Loginpage from '../page/LoginPage'
import Home from '../page/HomeVue'
import Clothes from '../page/ClothesVue'
import ReturnGoods from '../page/ReturnGoods'
import OrderList from '../page/OrderList'
import Pants from '../page/PantsVue'
import Shoes from '../page/ShoesVue'
import Loyout from '../components/LoyoutVue'
import Addclothes from '../page/AddClothes'

//创建并暴露一个路由器
export default new VueRouter({
	routes:[
        {
            path:'/',
            component:Loyout,
            children:[
                {
                    name:'yifu',
                    path:'/clothes',
                    component:Clothes
                   
                },
                {   name:'tuihuo',
                    path:'/returngoods',
                    component:ReturnGoods
                   
                },
                {   name:'ddlb',
                    path:'/orderList',
                    component:OrderList
                   
                },
                {   name:'kuzi',
                    path:'/pants',
                    component:Pants
                   
                },
                {   name:'xiezi',
                    path:'/shoes',
                    component:Shoes
                   
                },
                {   name:'jiayifu',
                    path:'/addclothes',
                    component:Addclothes
               
            }
            ]
        },
        {
            path:'/home',
            component:Home
           
        },
       
    ]
})