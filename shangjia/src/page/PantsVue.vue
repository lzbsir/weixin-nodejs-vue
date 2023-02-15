<template>
  <div class='pants'>
    <!-- 搜索 -->
    <div style="margin-left:250px ;">
    <div class="pants-top">
<el-input class="pants-input"  @change='searchpants' v-model="input" placeholder="请输入内容"/>
<el-button type="primary">搜索</el-button>
<el-button type="primary" @click="add">添加</el-button>
  </div>
  <!-- 表格 -->
  <div class="pants-table">
  <el-table :data="tableData" border style="width:970px">  
    <el-table-column type="selection" width="55">
    </el-table-column>
      <el-table-column prop="pantsId" label="商品ID" width="120"></el-table-column>
      <el-table-column prop="pantsName" label="商品名称"  width="200" show-overflow-tooltip></el-table-column>
      <el-table-column prop="pantsPrice" label="商品价格"  width="120"></el-table-column>
      <el-table-column prop="pantsNum" label="商品数量"  width="120"></el-table-column>
      <el-table-column prop="pantsPicture" label="商品图片"  width="200" show-overflow-tooltip></el-table-column>    
      <el-table-column prop="address" label="操作">
        <template slot-scope="scope">
        <el-button size="mini" @click="handleEdit(scope.$index, scope.row)">编辑</el-button> 
        <el-button size="mini" type="danger" @click="handleDelete(scope.$index, scope.row)">删除</el-button>
      </template>
      </el-table-column>
    </el-table>
    </div>
  </div>

  <!-- 弹框      :dialogable='dialogable' @closeDialog='closeDialog' -->
  <AddPants @CloseDialog='CloseDialog' :title='title' :addqd='addqd' ref="dialog"/>

</div>
</template>

<script>
import axios from 'axios'
import AddPants from './AddPants.vue'
export default {
  mounted(){
    axios.get('http://127.0.0.1:5002/api/getpants')
      .then(response => {
        if(response.status==200){
        this.tableData=response.data
        console.log('挂载',response)
       
        }
      },
      error=>{console.log('失败了',error)}
      )
  },

  components:{
    AddPants
  },

   data() {
    return {
      input: '',
      tableData:[],
      title:'添加商品',
      addqd:'立即创建'
      
 
    }
  },
 
 
  
   methods: {
Requestagain(){
 axios.get('http://127.0.0.1:5002/api/getpants')
      .then(response => {
        if(response.status==200){
        this.tableData=response.data
        console.log('挂载',response)
       
        }
      },
      error=>{console.log('失败了',error)}
      )
},
    //  搜索
    searchpants(val){
      axios.get('http://127.0.0.1:5002/api/searcpants',{
        params:{neirong:val}
      })
      .then(response => {
          this.tableData=''
        this.tableData=response.data
        
      },
      error=>{console.log('失败了',error)}
      )
    },

      // 编辑
      handleEdit(index, row) {
        console.log(index, row);
        this.$store.commit('TIANJIA')
        this.title="编辑商品"
        this.addqd='确定修改'
        this.$refs.dialog.ruleForm=row
        this.$store.commit('ISBIANJI')

      },
      // 删除
      handleDelete(index, row) {
       this.$confirm('此操作将永久删除该商品, 是否继续?', '提示', {
          confirmButtonText: '确定',
          cancelButtonText: '取消',
          type: 'warning'
        }).then(() => {
          axios.get('http://127.0.0.1:5002/api/deletepants',{
        params:{id:row.pantsId}
      })
      .then(response => {
        console.log(response)
        if(response.data.status==200){
      
        this.$message({
            type: 'success',
            message: '删除成功!'
          });
          this.Requestagain();
        }
      },
      error=>{alert('失败了',error)}
      )

          
        }).catch(() => {
          this.$message({
            type: 'info',
            message: '已取消删除'
          });          
        });
      },
      //添加商品
    add(){
      // this.dialogable=true
      this.$store.commit('TIANJIA')
      this.$store.commit('ISTIANJIA')
      this.addqd='立即创建'
    },
    // 重新发请求更新数据
    CloseDialog(){
      this.dialogable=false
       axios.get('http://127.0.0.1:5002/api/getpants')
      .then(response => {
        if(response.status==200){
        this.tableData=response.data
       
       
        }
      },
      error=>{console.log('失败了',error)}
      )
    }
    }
    
    

    
}
</script>

<style>
.pants{
  position:absolute;
  width: 1520px;
  height: 1000px;
  background-color: antiquewhite;
}
.pants-input{
  width: 600px;
  height: 32px;
  margin-right: 10px;
  
}
.pants-top{
  margin-left: 100px;
  margin-top: 20px;
}
.pants-table{
  margin: 20px 0;
  text-align: center;
}
</style>