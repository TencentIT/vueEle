import Vue from "vue"
import Router from "vue-router"
import Goods from "../components/goods/Goods.vue"
import seller from "../components/seller/seller.vue"
import ratings from "../components/ratings/ratings.vue"

import VueResource from "vue-resource"


Vue.use(VueResource)
Vue.use(Router);
export default new Router ({
    mode:"history",
    linkExactActiveClass:"active",
    linkActiveClass:"active",
    routes:[
      {path:"/goods",component:Goods},
      {path:"/ratings",component:ratings},
      {path:"/seller",component:seller},
    ]
   
})

// Router.go("/goods")