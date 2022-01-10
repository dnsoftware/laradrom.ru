<template>
    <div>
        <input v-model="email" type="email" placeholder="email" class="form-control">
        <input v-model="password" type="password" placeholder="password" class="form-control">
        <input @click.prevent="login" type="submit" value="Login" class="btn btn-primary">
    </div>
</template>

<script>
export default {
    name: "Login",

    data() {
        return {
            email: null,
            password: null
        }
    },

    methods: {
        login() {
            axios.get('/sanctum/csrf-cookie').then(response => {
                axios.post(axios.defaults.webBaseURL + '/login', {email: this.email, password: this.password})
                .then( r => {
                    console.log(r);
                })
                .catch( err => {
                    console.log(err.response.data.message);
                })
            });

        }
    }
}
</script>

<style scoped>

</style>
