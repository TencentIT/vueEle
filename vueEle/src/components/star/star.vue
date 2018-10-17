<template>
    <div class="star" :class="starType">
      <span v-for="itemClass in itemClasses" :class="itemClass" class="star-item" track-by="$index"></span>
    </div>    
</template>

<script>
  const LENGTH=5;   //总共是 5颗星
  // 方便以后维护修改  
  const CLS_ON="on"
  const CLS_OFF ="off"
  const CLS_HALF="half"
  export default{
      props:{
          size:{
            type:Number
          },
          score:{
            type:Number              
          }
      },
      computed:{
          starType(){
              return "size-"+this.size;
          },
          itemClasses(){
            let result = [];
            let score = Math.floor(this.score*2)/2;
            let hasDecimal = score%1!==0; //获取小数  即 是半星状态
            let integer = Math.floor(score) //整数  即 全星的个数
            for(let i=0;i<integer;i++){ // 
              result.push(CLS_ON) //有几个全星  就放几个on类
            }
            if(hasDecimal){ //如果有半星  最多放一个half类
              result.push(CLS_OFF)
            }
            while(integer<LENGTH){  //如果不足5颗星  就不足剩余的星 （实际是一张灰色的没有高亮的图片）
              result.push(CLS_OFF)
            }
            return  result;
          }
      }
  }
</script>
<style lang="stylus">
@import "../../common/stylus/mixin.styl"
  .star
    font-size:0
    .star-item
      display:inline-block
      background-repeat :no-repeat
    &.star-48
      .star-item
        width:20px
        height:20px;
        background-size:20px 20px;  
        margin-right:22px;
        &.last-child
          margin-right:0
        &.on
          bg-image("star48_on")
        &.half
          bg-image("star48_half")
        &.off
          bg-image("star48_off")
    &.star-24
      .star-item
      width:10px
      height:10px;
      background-size:10px 10px;  
      margin-right:0px;
      &.last-child
        margin-right:0
      &.on
        bg-image("star24_on")
      &.half
        bg-image("star24_half")
      &.off
        bg-image("star24_off")
    &.star-36
      .star-item
        width:15px
        height:15px;
        background-size:15px 15px;  
        margin-right:6px;
        &.last-child
          margin-right:0
        &.on
          bg-image("star36_on")
        &.half
          bg-image("star36_half")
        &.off
          bg-image("star36_off")

</style>
