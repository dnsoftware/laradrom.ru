import Vue from 'vue';
import Index from './components/Index'
import router from "./router";

require('./bootstrap');

import Alpine from 'alpinejs';
window.Alpine = Alpine;
Alpine.start();

/*
new Vue({
    el: '#app',

    components: {
        Index
    },

    router
});
*/
