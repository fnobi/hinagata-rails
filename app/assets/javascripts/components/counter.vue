<template lang="pug">
.counter {{count}}
</template>

<style>
  .counter {
      margin: 1em 0em;
      font-size: 200%;
  }
</style>

<script>
  export default {
      props: [ 'count' ],
      data () {
          return {
              count: 0
          }
      }
  }
</script>
