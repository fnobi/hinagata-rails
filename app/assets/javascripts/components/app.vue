<template lang="pug">
.app
  | Hello, {{appName}}.
  counter(:count="buttonNum")
  .app__button
    my-button(label="count up" v-on:click-button="increment")
    my-button(label="count down" v-on:click-button="decrement")
</template>

<style>
  .app {
      margin: 1em;
  }
</style>

<script>
  import myButton from './my-button.vue';
  import counter from './counter.vue';
  
  export default {
      components: {
          'my-button': myButton,
          'counter': counter
      },
      data () {
          return {
              appName: 'World',
              buttonNum: 0
          }
      },
      methods: {
          increment: function () {
              this.buttonNum++;
          },
          decrement: function () {
              this.buttonNum--;
          }
      }
  };
</script>
