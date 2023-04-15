<template>
  <div>
    <nav class="w-full h-20 bg-white items-center flex justify-between md:px-[10rem]">
      <div class="flex items-center p-3 ml-10 py-8">
        <div class="flex shadowfew items-center">
          <img src="../assets/icon/web_icon.png" class="w-[50px] h-auto" />
          <p class="text-[#2B26D8] font-bold ml-2 text-3xl">
            DEAD<span class="text-black">Line</span>
          </p>
        </div>

        <div class="space-x-4 ml-9 px-4 font-semibold">
          <NuxtLink to="/">คอร์สการเรียน</NuxtLink>
          <NuxtLink to="">อาจารย์ทั้งหมด</NuxtLink>
          <NuxtLink to="">วิธีการสมัครเรียน</NuxtLink>
        </div>
      </div>

      <div class="flex items-center" v-if="$auth.loggedIn">
        <NuxtLink to="/search"><img src="../assets/icon/search-icon.png" class="w-[25px] mx-5" alt=""></NuxtLink>
        <div class="flex items-center space-x-4 pr-10">
          <div>
            <h1>{{ $auth.user.username }}</h1>
            <h1>{{ $auth.user.first_name + " " + $auth.user.last_name }}</h1>
          </div>

          <img :src="$auth.user.image" class="h-14 w-14 rounded-full" />
          <button
            class="px-5 text-white rounded-xl font-semibold py-2 text-[13px] bg-[#2b26d8] shadow-xl"
            @click="logout"
          >
            ลงชื่อออก
          </button>
        </div>
      </div>

      <div class="flex items-center" v-else>
        <NuxtLink to="/search"><img src="../assets/icon/search-icon.png" class="w-[25px] mx-5" alt=""></NuxtLink>
        <NuxtLink to="/auth/login">
          <button class="px-5 text-black py-2 text-[13px] font-semibold bg-transparent">
            เข้าสู่ระบบ
          </button>
        </NuxtLink>
        <NuxtLink to="/auth/register">
          <button
            class="px-3 text-white rounded-xl py-2 text-[13px] font-semibold bg-[#2b26d8] shadow-xl"
          >
            สมัครสมาชิก
          </button>
        </NuxtLink>
      </div>

    </nav>
  </div>
</template>

<script>
export default {
  name: "NavBar",
  methods: {
    async logout() {
      try {
        await this.$auth.logout();
        this.$router.push("/auth/login");
      } catch (error) {
        console.error(error);
      }
    },
  },
};
</script>

<style></style>
