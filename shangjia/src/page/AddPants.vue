<template>
  <div>
<el-dialog
  :title="title"
   :visible=this.$store.state.dialogable
  width="70%"
  :before-close="handleClose">
 <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
  <el-form-item label="商品ID" prop="pantsId">
    <el-input v-model="ruleForm.pantsId"></el-input>
  </el-form-item>
  <el-form-item label="商品名称" prop="pantsName">
    <el-input v-model="ruleForm.pantsName"></el-input>
  </el-form-item>
  <el-form-item label="商品价格" prop="pantsPrice">
    <el-input v-model="ruleForm.pantsPrice"></el-input>
  </el-form-item>
  <el-form-item label="商品数量" prop="pantsNum">
    <el-input v-model="ruleForm.pantsNum"></el-input>
  </el-form-item>
  <el-form-item label="商品图片" prop="pantsPicture">
    <el-input v-model="ruleForm.pantsPicture"></el-input>
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
          pantsId: '',
          pantsName: '',
           pantsPrice: '',
          pantsNum: '', 
          pantsPicture: '',
          // n:1
        },
        rules: {//校验规则
          pantsId: [
            { required: true, message: '请输入商品ID', trigger: 'blur' },
            { min: 1, max: 5, message: '长度在 1 到 5 个字符', trigger: 'blur' }
          ],
           pantsName: [
            { required: true, message: '请输入商品名称或描述', trigger: 'blur' },
            { min: 3, max: 20, message: '长度在 3 到 20 个字符', trigger: 'blur' }
          ],
           pantsPrice: [
            { required: true, message: '请输入商品', trigger: 'blur' },
            { min: 1, max: 7, message: '长度在 1 到 7 个字符', trigger: 'blur' }
          ],
           pantsNum: [
            { required: true, message: '请输入商品数量', trigger: 'blur' },
            { min: 1, max: 5, message: '长度在 1 到 5 个字符', trigger: 'blur' }
          ],
           pantsPicture: [
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
    axios.get('http://127.0.0.1:5002/api/addpants',{
        params:{pantsId:formName.pantsId,
        pantsName:formName.pantsName,
        pantsPrice:formName.pantsPrice,
        pantsNum:formName.pantsNum,
        pantsPicture:formName.pantsPicture
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
          axios.get('http://127.0.0.1:5002/api/updatapants',{
        params:{
        pantsName:formName.pantsName,
        pantsPrice:formName.pantsPrice,
        pantsNum:formName.pantsNum,
        pantsPicture:formName.pantsPicture,
        pantsId:formName.pantsId
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