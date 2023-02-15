import Vue from 'vue'
import App from './App.vue'
import ElementUI from 'element-ui';
import 'element-ui/lib/theme-chalk/index.css';
//引入VueRouter
import VueRouter from 'vue-router'
//引入路由器
import router from './router'
//关闭Vue的生产提示
//引入store
import store from './store'
Vue.config.productionTip = false
//应用插件
Vue.use(VueRouter)
Vue.use(ElementUI);

//创建vm
new Vue({
	el:'#app',
	render: h => h(App),
	store,
	router:router
})
