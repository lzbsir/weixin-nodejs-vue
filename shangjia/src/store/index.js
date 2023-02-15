//该文件用于创建Vuex中最为核心的store
import Vue from 'vue'
//引入Vuex
import Vuex from 'vuex'
//应用Vuex插件
Vue.use(Vuex)
//准备actions——用于响应组件中的动作
const actions = {}
//准备mutations——用于操作数据（state）
const mutations = {
    TIANJIA(state){
		state.dialogable=true
	},
    GUANBI(state){
		state.dialogable=false
	},
    JIA(state){
		state.sum+=1
	},
	ISTIANJIA(state){
		state.a=1
	},
	ISBIANJI(state){
		state.a=2
	}

}
//准备state——用于存储数据
const state = {
    dialogable:false,
    sum:0,
	a:0
}

//创建并暴露store
export default new Vuex.Store({
	actions,
	mutations,
	state,
})