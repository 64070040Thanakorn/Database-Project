<template>
  <div class="flex justify-center mb-52">
    <div class="flex flex-col my-10 mx-20 w-[90%]">
      <h1 class="text-4xl font-bold">Dashboard</h1>
      <div class="h-[2px] w-full bg-[#F6F6F6] rounded my-7"></div>
      <div class="flex">
        <div class="mr-20 w-[10%]">
          <ul>
            <NuxtLink  to="/dashboard/username">
              <li class="bg-gray-100 font-bold px-4 py-2 rounded">รายละเอียดของฉัน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Student'" to="/dashboard/course">
              <li class="px-4 py-2 rounded">คอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Professor'" to="/dashboard/managecourse">
              <li class="px-4 py-2 rounded">จัดการคอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Student'" to="/dashboard/studytable">
              <li class="px-4 py-2 rounded">ตารางเรียน</li>
            </NuxtLink>
          </ul>
        </div>
        <div class="w-[90%]">
          <div class="flex justify-between">
            <div class="flex justify-center items-center space-x-10">
              <div class="w-[200px] h-[200px] border-white border-[5px] rounded-full overflow-hidden drop-shadow-md">
                <img :src="$auth.user.image" alt="">
              </div>
              <div class="flex flex-col">
                <h5 class="text-2xl font-bold">จัดการแก้ไขโปรไฟล์</h5>
                <p>อัพเดทแก้ไขข้อมูลส่วนตัว</p>
              </div>
            </div>
            <div class="space-x-1">
              <button class="border rounded px-4 py-2">ยกเลิก</button>
              <button class="bg-[#2B26D8] rounded text-white px-4 py-2" @click="updateData()">บันทึกโปรไฟล์</button>
            </div>
          </div>
          <div class="space-y-5 mt-16">
            <div class="flex">
              <label class="w-[20%] font-bold" for="">ชื่อ</label>
              <input v-model="user.first_name"  class="border rounded px-3 py-1 w-[30%]" type="text">
            </div>
            <div class="h-[2px] w-full bg-[#F6F6F6] rounded"></div>
            <div class="flex">
              <label class="w-[20%] font-bold" for="">นามสกุล</label>
              <input v-model="user.last_name"  class="border rounded px-3 py-1 w-[30%]" type="text">
            </div>
            <div class="h-[2px] w-full bg-[#F6F6F6] rounded"></div>
            <div class="flex">
              <label class="w-[20%] font-bold" for="">ชื่อผู้ใช้</label>
              <input v-model="user.username"  class="border rounded px-3 py-1 w-[30%]" type="text">
            </div>
            <div class="h-[2px] w-full bg-[#F6F6F6] rounded"></div>
            <div class="flex">
              <label class="w-[20%] font-bold" for="">อีเมล</label>
              <input v-model="user.email"  class="border rounded px-3 py-1 w-[30%]" type="email">
            </div>
            <div class="h-[2px] w-full bg-[#F6F6F6] rounded"></div>
            <div class="flex">
              <label class="w-[20%] font-bold" for="">อาชีพ</label>
              <input v-model="user.role"  class="border rounded px-3 py-1 w-[30%]" type="text">
            </div>
            <div class="h-[2px] w-full bg-[#F6F6F6] rounded"></div>
            <div v-if="$auth.user.role === 'Professor'">
              <div class="flex">
                <label class="w-[20%] font-bold" for="">ข้อมูลเพิ่มเติม</label>
                <textarea id="" v-model="user.professors.info" name="" cols="30" rows="10" class="border p-2 w-[30%]"></textarea>
              </div>
              <div class="h-[2px] w-full bg-[#F6F6F6] rounded"></div>
            </div>
            <div class="flex">
              <label class="w-[20%] font-bold" for="">โปรไฟล์
                <p class="font-medium">แก้ไขรูปภาพของคุณ</p>
              </label>
              <div class="flex justify-between w-[30%]">
                <div class="w-[100px] h-[100px] overflow-hidden rounded-full">
                  <img :src="$auth.user.image" alt="">
                </div>
                <div class="space-x-3">
                  <button class="">ลบรูปภาพ</button>
                  <button class="">อัพเดท</button>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default{
  async asyncData({$axios, $auth}){
    await  $auth.fetchUser();
    const user = await $axios.get(`http://localhost:5000/api/user/users/${$auth.user.user_id}`);
    console.log(user);
    return { user: user.data }
  },

  methods: {
    updateData() {
      this.$axios.put(`http://localhost:5000/api/user/users/${this.$auth.user.user_id}`, this.user, {
          headers: {
            'Content-Type': 'application/json',
          },
        })
        .then((respones) => {
          console.log(respones)
        })
        .catch((err) => {
          console.log(err)
        })
    },
  }
 
}
</script>