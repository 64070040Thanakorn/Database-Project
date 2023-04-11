<template>
  <div>
    <nav class="w-full h-20 bg-white items-center flex justify-between px-12">
        <div class="flex items-center p-3 ml-10">
            <img src="https://www.coliseugeek.com.br/wp-content/uploads/2023/01/3e3d2-clickwallpapers-madara-uchiha-img3-scaled.jpg" class="h-14 w-14 rounded-full" >
            <div class="px-2">
                <h1>MadaraCourse</h1>
            </div>
            <div class="space-x-4 px-4">
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
            
            <img src="https://i.redd.it/zqen16lvei651.jpg" class="h-14 w-14 rounded-full">
        </div>
    </nav>

  </div>
</template>

<script>
export default {
    name:"NavBar",
}
</script>

<style>

</style>