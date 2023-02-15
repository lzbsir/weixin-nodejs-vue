<template><div>
 <el-menu
  :default-active="activeIndex2"
  class="el-menu-demo"
  mode="horizontal"
  @select="handleSelect"
  background-color="#545c64"
  text-color="#fff"
  active-text-color="#ffd04b">
  <el-menu-item index="1">商品管理</el-menu-item>
  <el-submenu index="2">
    <template slot="title">商品管理</template>
    <el-menu-item index="2-1" @click="yifu">衣服</el-menu-item>
    <el-menu-item index="2-2" @click="kuzi">裤子</el-menu-item>
    <el-menu-item index="2-3" @click="xiezi">鞋子</el-menu-item>
  </el-submenu>
  <el-menu-item index="3">广告宣传</el-menu-item>
  <el-submenu index="4">
    <template slot="title">订单管理</template>
    <el-menu-item index="4-1" @click="ddlb">订单列表</el-menu-item>
    <el-menu-item index="4-2" @click="tuihuo">退货管理</el-menu-item>
  </el-submenu>
  <el-menu-item index="5">用户列表</el-menu-item>
</el-menu>
<div><router-view>
  </router-view></div></div>
</template>

<script>
export default {
   data() {
      return {
        activeIndex: '1',
        activeIndex2: '1'
      };
    },
    methods: {
      yifu(){
        this.$router.push({
          name:'yifu'
        })
      },
      kuzi(){
        this.$router.push({
          name:'kuzi'
        })
      },
      xiezi(){
        this.$router.push({
          name:'xiezi'
        })
      },
      ddlb(){
        this.$router.push({
          name:'ddlb'
        })
      },
      tuihuo(){
        this.$router.push({
          name:'tuihuo'
        })
      },
      handleSelect(key, keyPath) {
        console.log(key, keyPath);
      }
    }
  

}
</script>

<style>

</style>