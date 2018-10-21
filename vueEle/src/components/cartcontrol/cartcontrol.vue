<template>
  <div class="cartcontrol">
    <div class="cart-decrease" v-show="food.count>0" @click="decreaseCart" transition="move">
      <span class="icon-remove_circle_outline"></span>
    </div>
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
  .cart-decrease,.cart-add
    display inline-block
    font-size 24px
    line-height 24px
    padding 6px
    color rgb(0,160,220)
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
    display inline-block
</style>
