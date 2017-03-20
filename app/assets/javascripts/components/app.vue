<template>
  <div>Hello, {{name}}.</div>
</template>

<script>
export default {
    props: [ 'name' ],
    data () {
        return {
            name: 'World'
        }
    }
};
</script>
