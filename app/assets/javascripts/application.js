import Vue from 'vue';
import app from './components/app.vue';

new Vue({
    el: document.getElementById('app'),
    render: (createElement) => {
        return createElement(app, {
            props: {
                name: 'Vue App'
            }
        });
    }
});
