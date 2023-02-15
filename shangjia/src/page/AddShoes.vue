<template>
  <div>
<el-dialog
  :title="title"
   :visible=this.$store.state.dialogable
  width="70%"
  :before-close="handleClose">
 <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
  <el-form-item label="商品ID" prop="shoesId">
    <el-input v-model="ruleForm.shoesId"></el-input>
  </el-form-item>
  <el-form-item label="商品名称" prop="shoesName">
    <el-input v-model="ruleForm.shoesName"></el-input>
  </el-form-item>
  <el-form-item label="商品价格" prop="shoesPrice">
    <el-input v-model="ruleForm.shoesPrice"></el-input>
  </el-form-item>
  <el-form-item label="商品数量" prop="shoesNum">
    <el-input v-model="ruleForm.shoesNum"></el-input>
  </el-form-item>
  <el-form-item label="商品图片" prop="shoesPicture">
    <el-input v-model="ruleForm.shoesPicture"></el-input>
  </el-form-item>
  
  
  <el-form-item>
    <el-button type="primary" @click="submitForm(ruleForm)">{{addqd}}</el-button>
    <el-button @click="resetForm('ruleForm')">重置</el-button>
  </el-form-item>
</el-form>

  <span slot="footer" class="dialog-footer">
    <el-button @click="closeDialog">关 闭</el-button>
  </span>
</el-dialog>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  props:['title','addqd'],
    data() {
      return {
        ruleForm: {
          shoesId: '',
          shoesName: '',
           shoesPrice: '',
          shoesNum: '', 
          shoesPicture: '',
          // n:1
        },
        rules: {//校验规则
          shoesId: [
            { required: true, message: '请输入商品ID', trigger: 'blur' },
            { min: 1, max: 5, message: '长度在 1 到 5 个字符', trigger: 'blur' }
          ],
           shoesName: [
            { required: true, message: '请输入商品名称或描述', trigger: 'blur' },
            { min: 3, max: 20, message: '长度在 3 到 20 个字符', trigger: 'blur' }
          ],
           shoesPrice: [
            { required: true, message: '请输入商品', trigger: 'blur' },
            { min: 1, max: 7, message: '长度在 1 到 7 个字符', trigger: 'blur' }
          ],
           shoesNum: [
            { required: true, message: '请输入商品数量', trigger: 'blur' },
            { min: 1, max: 5, message: '长度在 1 到 5 个字符', trigger: 'blur' }
          ],
           shoesPicture: [
            { required: true, message: '请输入商品图片地址', trigger: 'blur' },
            { min: 7, max: 100, message: '长度在 7 到 100个字符', trigger: 'blur' }
          ],
        }
      };
    },
    methods: {
      // 关闭页面
      handleClose(){
       this.$store.commit('GUANBI')
       this.ruleForm={}
      },
        closeDialog(){
       this.$store.commit('GUANBI')
       this.$emit('CloseDialog')
       this.ruleForm={}
      //  this.$parent.CloseDialog();

    },
    // 添加记录发请求
      submitForm(formName) {
        if(this.$store.state.a==1){
    axios.get('http://127.0.0.1:5002/api/addshoes',{
        params:{shoesId:formName.shoesId,
        shoesName:formName.shoesName,
        shoesPrice:formName.shoesPrice,
        shoesNum:formName.shoesNum,
        shoesPicture:formName.shoesPicture
        }
      })
      .then(response => {
        if(response.status==200){
         
        console.log(response)
        }
      },
      error=>{console.log('失败了',error)}
      )
        }
        if(this.$store.state.a==2){
          axios.get('http://127.0.0.1:5002/api/updatashoes',{
        params:{
        shoesName:formName.shoesName,
        shoesPrice:formName.shoesPrice,
        shoesNum:formName.shoesNum,
        shoesPicture:formName.shoesPicture,
        shoesId:formName.shoesId
        }
      })
      .then(response => {
        if(response.status==200){
         
        console.log(response)
        }
      },
      error=>{console.log('失败了',error)}
      ) 
        }
      
      },
      // 重置函数
      resetForm(formName) {
        this.$refs[formName].resetFields();
      }
    }

}
</script>

<style>

</style>