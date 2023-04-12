<template>
  <div>
    <nav
      class="w-full h-20 bg-white items-center flex justify-between md:px-[10rem]"
    >
      <div class="flex items-center p-3 ml-10  py-8">
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

      <div class="flex items-center space-x-4 pr-10">
        <div>
          <h1>มาดาระ อุจิวะ</h1>
          <h1>Madara Uchiha</h1>
        </div>

        <img
          src="https://i.redd.it/zqen16lvei651.jpg"
          class="h-14 w-14 rounded-full"
        />
      </div>
    </nav>
  </div>
</template>

<script>
export default {
  name: 'NavBar',
}
</script>

<style>
</style>