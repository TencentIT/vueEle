<template>
  <div class="cartcontrol">
    <transition  name="move">
      <div class="cart-decrease" v-show="food.count>0" @click="decreaseCart" transition="move">
        <!--vue +-按钮动画需要 两个层 一个负责滚动 一个负责平移 -->
        <span class="inner icon-remove_circle_outline"></span>
      </div>
    </transition>
    <div class="cart-count" v-show="food.count>0">{{food.count}}</div>
    <div class="cart-add icon-add_circle" @click="addCart"></div>
  </div>
</template>
<script>
import Vue from 'vue';
export default {
  props: {
    food: {
      type: Object
    }
  },
  created() {
    // console.log(this.food);
  },
  methods: {
    addCart(event) {
      if (!event._constructed) {
        return;
      }
      // console.log(1);
      if (!this.food.count) {
        Vue.set(this.food, 'count', 1); // 添加新的属性并检测到 需要通过vue的set方法
        // this.food.count = 1; 这样不行 没效果
      } else {
        this.food.count++;
      }
      this.$emit("add", event.target);  // 子组件给父组件传递数据 $emit()
    },
    decreaseCart(event) {
      if (!event._constructed) {
        return;
      }
      // console.log(1);
      if (this.food.count) {
        this.food.count--;
      }
    }
  }
};
</script>
<style lang="stylus" scoped>
.cartcontrol
  font-size 0
  .cart-decrease
      display: inline-block
      padding: 6px
      opacity: 1
      transform: translate3d(0, 0, 0)
      .inner
        display: inline-block 
        line-height: 24px
        font-size: 24px
        color: rgb(0, 160, 220)
        transition: all 0.4s linear
        transform: rotate(0)
      &.move-enter-active, &.move-leave-active
        transition: all 0.4s linear
      &.move-enter, &.move-leave-active
        opacity: 0
        transform: translate3d(24px, 0, 0)
        .inner
          transform: rotate(180deg)
  .cart-count
    display inline-block
    vertical-align top
    width 12px
    padding-top 6px
    line-height 24px
    text-align center
    font-size 12px
    color rgb(147,153,159)
  .cart-add
    display: inline-block
    padding: 6px
    line-height: 24px
    font-size: 24px
    color: rgb(0, 160, 220)
</style>
