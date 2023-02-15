<template>
  <div>
<el-dialog
  :title="title"
   :visible=this.$store.state.dialogable
  width="70%"
  :before-close="handleClose">
 <el-form :model="ruleForm" :rules="rules" ref="ruleForm" label-width="100px" class="demo-ruleForm">
  <el-form-item label="商品ID" prop="clothesId">
    <el-input v-model="ruleForm.clothesId"></el-input>
  </el-form-item>
  <el-form-item label="商品名称" prop="clothesName">
    <el-input v-model="ruleForm.clothesName"></el-input>
  </el-form-item>
  <el-form-item label="商品价格" prop="clothesPrice">
    <el-input v-model="ruleForm.clothesPrice"></el-input>
  </el-form-item>
  <el-form-item label="商品数量" prop="clothesNum">
    <el-input v-model="ruleForm.clothesNum"></el-input>
  </el-form-item>
  <el-form-item label="商品图片" prop="clothesPicture">
    <el-input v-model="ruleForm.clothesPicture"></el-input>
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
          clothesId: '',
          clothesName: '',
           clothesPrice: '',
          clothesNum: '', 
          clothesPicture: '',
          // n:1
        },
        rules: {//校验规则
          clothesId: [
            { required: true, message: '请输入商品ID', trigger: 'blur' },
            { min: 1, max: 5, message: '长度在 1 到 5 个字符', trigger: 'blur' }
          ],
           clothesName: [
            { required: true, message: '请输入商品名称或描述', trigger: 'blur' },
            { min: 3, max: 20, message: '长度在 3 到 20 个字符', trigger: 'blur' }
          ],
           clothesPrice: [
            { required: true, message: '请输入商品', trigger: 'blur' },
            { min: 1, max: 7, message: '长度在 1 到 7 个字符', trigger: 'blur' }
          ],
           clothesNum: [
            { required: true, message: '请输入商品数量', trigger: 'blur' },
            { min: 1, max: 5, message: '长度在 1 到 5 个字符', trigger: 'blur' }
          ],
           clothesPicture: [
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
    axios.get('http://127.0.0.1:5002/api/addclothes',{
        params:{clothesId:formName.clothesId,
        clothesName:formName.clothesName,
        clothesPrice:formName.clothesPrice,
        clothesNum:formName.clothesNum,
        clothesPicture:formName.clothesPicture
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
        clothesName:formName.clothesName,
        clothesPrice:formName.clothesPrice,
        clothesNum:formName.clothesNum,
        clothesPicture:formName.clothesPicture,
        clothesId:formName.clothesId
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