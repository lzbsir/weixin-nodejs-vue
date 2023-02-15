<template>
 
  <div class="loginPage">
<div class="lg-big">
  <div class="lg">
  <div class="lg-one">
  <label>账号：</label>
  <input class="lg-input" type="text" v-model="input" placeholder="请输入账号">
  </div>
  <div class="lg-one">
  <label>密码：</label>
  <input class="lg-input" type="password" v-model="pass" placeholder="请输入密码">
  </div>
  
<button @click="dl" class="lg-button">登录</button>
</div>

  </div>
 
  </div>
  
</template>

<script>
import axios from 'axios'
export default {

data(){
   return {
      input: '',
      pass:''
    }
},
methods:{
   dl(){
     this.$router.push(
    {
      name:'yifu'
    }
      
     )
     console.log(this.pass)
     axios.get('http://127.0.0.1:5002/user', {
    params: {
      ID: this.input
    }
  }).then(
       response => {
          console.log('请求成功',response.data)
       },
       erroe => {
         console.log(erroe.message)
       }
      
     )
}
}

}
</script>

<style>
.loginPage{
    background-color: cadetblue;
  height: 700px;

}
.lg-big{
  background-color: aliceblue;
  width: 450px;
  height: 350px;
  margin-left: 500px;
  margin-top: 200px; 
   position: absolute;
}
.lg-input{
  width: 200px;
  height: 30px;
}
.lg-one{
  margin-bottom: 13px;
}
.lg{
  margin-top: 50px;
  margin-left: 100px;
}
.lg-button{
  margin-top: 20px;
  margin-left: 15spx;
  background-color: cadetblue;
  width: 255px;
  height: 40px;
}

</style>