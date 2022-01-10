<template>
    <div>
        Get
    </div>
</template>

<script>
export default {
    name: "Get",

    mounted() {
      this.getData()
    },

    methods: {
        getData() {
            axios.get('/test')
            .then( res => {
                console.log(res.data);
            })
        }
    }
}
</script>

<style scoped>

</style>
