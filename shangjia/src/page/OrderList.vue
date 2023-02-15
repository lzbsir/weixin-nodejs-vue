<template>
   <div class='clothes'>
    <!-- 搜索 -->
    <div style="margin-left:100px ;">
    <div class="clothes-top">
<el-input class="clothes-input"  @change='search' v-model="input" placeholder="请输入内容"/>
<el-button type="primary">订单搜索</el-button>


  </div>
  <!-- 表格 -->
  <div class="clothes-table">
  <el-table :data="tableData" border style="width:1250px">  
    <el-table-column type="selection" width="55">
    </el-table-column>
      <el-table-column prop="id" label="订单编号" width="120"></el-table-column>
      <el-table-column prop="spName" label="商品名称"  width="200" show-overflow-tooltip></el-table-column>
      <el-table-column prop="spPrice" label="商品价格"  width="120"></el-table-column>
      <el-table-column prop="num" label="商品数量"  width="120"></el-table-column>
      <el-table-column prop="name" label="收货人"  width="120"></el-table-column>    
       <el-table-column prop="phone" label="手机号"  width="120"></el-table-column>    
        <el-table-column prop="address" label="地址"  width="200" show-overflow-tooltip></el-table-column>    
      <el-table-column prop="operation" label="操作">
        <template slot-scope="scope"> 
        <el-button size="mini" @click="handleEdit(scope.$index, scope.row)">发货</el-button>
      </template>
      </el-table-column>
    </el-table>
    </div>
  </div>

  <!-- 弹框      :dialogable='dialogable' @closeDialog='closeDialog' -->
  <!-- <AddClothes @CloseDialog='CloseDialog' :title='title' :addqd='addqd' ref="dialog"/> -->

</div>
</template>

<script>
import axios from 'axios'
export default {
    data() {
    return {
      input: '',
      tableData:[]
    }
  },

mounted(){
    axios.get('http://127.0.0.1:5002/api/getfahuodata')
      .then(response => {
        if(response.status==200){
        this.tableData=response.data
        console.log('挂载',response)
       
        }
      },
      error=>{console.log('失败了',error)}
      )
  },
  methods:{
    //搜索
    search(vall){
      axios.get('http://127.0.0.1:5002/api/listsearch',{
        params:{neirong:vall}
      })
      .then(response => {
          this.tableData=''
        this.tableData=response.data
        
      },
      error=>{console.log('失败了',error)}
      )
    },
    //发货
    handleEdit(index,row){
      console.log(row.id);
       axios.get('http://127.0.0.1:5002/api/qdfahuo',{
        params:{id:row.id}
      })
      .then(response => {
        console.log(response.data)
        
        
      },
      error=>{console.log('失败了',error)}
      )
       axios.get('http://127.0.0.1:5002/api/getfahuodata')
      .then(response => {
        if(response.status==200){
        this.tableData=response.data
        console.log('挂载',response)
       
        }
      },
      error=>{console.log('失败了',error)}
      )
    }
  }

}
</script>

<style>
.clothes{
  position:absolute;
  width: 1520px;
  height: 1000px;
  background-color: antiquewhite;
}
.clothes-input{
  width: 600px;
  height: 32px;
  margin-right: 10px;
  
}
.clothes-top{
  margin-left: 100px;
  margin-top: 20px;
}
.clothes-table{
  margin: 20px 0;
  text-align: center;
} 
</style>