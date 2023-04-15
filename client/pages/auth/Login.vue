<template>
  <div class="w-full flex flex-col justify-between mt-56 mb-60">
    <div class="flex justify-center items-center align-center">
      <div class="flex flex-col space-y-4 w-[15%]">
        <h1 class="text-4xl">เข้าสู่ระบบ 👋</h1>

        <form class="space-y-4" @submit.prevent="login">
          <div>
            <p class="text-sm">email</p>
            <input
              v-model="email"
              class="border rounded-md py-1 px-1 w-full"
            />
          </div>
          <div>
            <p class="text-sm">password</p>
            <input
              v-model="password"
              type="password"
              class="border rounded-md py-1 px-1 w-full"
            />
            <p class="text-sm text-[#AAAAAA]">forget password?</p>
          </div>
          <div>
            <button
              type="submit"
              class="bg-[#2B26D8] text-white rounded-full py-1 w-full"
            >
              login
            </button>
            <div class="flex justify-between text-sm">
              <p>not member?</p>
              <p class="text-[#AAAAAA]">click to register</p>
            </div>
          </div>
        </form>
      </div>
    </div>
  </div>
</template>
<script>
export default {
  name: 'LoginView',
  data() {
    return {
      email: null,
      password: null,
    }
  },
  methods: {
    async login() {
      try {
        await this.$auth.loginWith('local', {
          data: {
            email: this.email,
            password: this.password,
          },
        })
      } catch (error) {
        console.error(error)
      }
    },
  },
}
</script>