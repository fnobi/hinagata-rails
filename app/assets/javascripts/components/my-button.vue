<template lang="pug">
.my-button(v-on:click="onclick") {{label}}
</template>

<style>
  .my-button {
      display: inline-block;
      border: solid 2px #ccc;
      margin-left: 0.5em;
      padding: 0.5em;
      cursor: pointer;
      user-select: none;
  }
  .my-button:first-child {
      margin-left: 0em;
  }
</style>

<script>
  export default {
      props: [ 'label' ],
      data () {
          return {
              label: 'button'
          }
      },
      methods: {
          onclick: function () {
              this.$emit('click-button');
          }
      }
  };
</script>
