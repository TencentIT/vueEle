<template>
  <transition name="move">
    <div class="food" v-show="showFlag">
    <div class="food-content">
      <div class="image-header">
        <img src="http://fuss10.elemecdn.com/c/cd/c12745ed8a5171e13b427dbc39401jpeg.jpeg?imageView2/1/w/750/h/750">
        <div class="black" @click="hide"></div>
          <i class="i-arrow_lift"></i>
      </div>
    </div>
  </div>
  </transition>
</template>
<script>
export default {
  // props: {
  //   food: {
  //     type: Object
  //   }
  // },
  data() {
    return {
      showFlag: false
    };
  },
  methods: {
    hide() {
      console.log(1);
    },
    show() {
      this.showFlag = true;
    }
  },
  created() {
    console.log(2, this.food);
  }
};
</script>
<style lang="stylus">
.food
  position fixed
  top 0
  left 0
  bottom 48px
  z-index 30
  width 100%
  background #fff
  transform translate3d(0,0,0)
  &.move-enter-active,&.move-leave-active
    transition all 0.2s linear
  &.move-enter,&.move-leave-active
    transform translate3d(100%,0,0)
  .image-header
    position relative
    width 100% 
    height 0 
    img
      position absolute
      top  0
      left 0
      width 100% 
      height 100%
    // .black
</style>
