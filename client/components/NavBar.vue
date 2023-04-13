<template>
  <div>
    <nav
      class="w-full h-20 bg-white items-center flex justify-between md:px-[10rem]"
    >
      <div class="flex items-center p-3 ml-10 py-8">
        <img
          src="https://media.discordapp.net/attachments/1067453596351856650/1095639187895635968/image.png"
          class="h-[40px] w-[150px]"
        />
        <div class="space-x-4 ml-9 px-4 font-semibold">
          <NuxtLink to="/">คอร์สการเรียน</NuxtLink>
          <NuxtLink to="">อาจารย์ทั้งหมด</NuxtLink>
          <NuxtLink to="">วิธีการสมัครเรียน</NuxtLink>
        </div>
      </div>

      <div v-if="$auth.loggedIn">
        <div class="flex items-center space-x-4 pr-10">
          <div>
            <h1>{{ $auth.user.username }}</h1>
            <h1>{{ $auth.user.first_name + ' ' + $auth.user.last_name }}</h1>
          </div>

          <img :src="$auth.user.image" class="h-14 w-14 rounded-full" />
          <button
            @click="logout"
            class="px-5 text-white rounded-md py-2 text-[13px] bg-[#2b26d8]"
          >
            Logout
          </button>
        </div>
      </div>

      <div v-else>
        <NuxtLink to="/auth/login">
          <button
            class="px-5 text-white rounded-md py-2 text-[13px] bg-[#2b26d8]"
          >
            Login
          </button>
        </NuxtLink>
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
  methods: {
    async logout() {
      try {
        await this.$auth.logout()
        this.$router.push('/auth/login')
      } catch (error) {
        console.error(error)
      }
    },
  },
}
</script>

<style>
</style>