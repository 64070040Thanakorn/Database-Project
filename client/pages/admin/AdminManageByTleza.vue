<template>
  <div class="flex justify-center">
    <div class="flex flex-col my-10 mx-20 w-[90%]">
      <h1 class="text-4xl font-bold">Admin Management</h1>
      <div class="h-[2px] w-full bg-[#F6F6F6] rounded my-7"></div>
      <div class="flex">
        <div class="mr-20 w-[15%]">
          <ul>
            <NuxtLink to="">
              <li class="bg-gray-100 font-semibold px-4 py-2 rounded">จัดการผู้ใช้</li>
            </NuxtLink>
            <NuxtLink to="">
              <li class="px-4 py-2 rounded">จัดการคอร์สเรียน</li>
            </NuxtLink>
          </ul>
        </div>
        <div class="w-[85%] space-y-10">
          <div class="flex justify-between">
            <label for="" class="text-4xl mx-4">จัดการผู้ใช้</label>
            <div class="flex w-[50%]">
              <form class="w-full">
                <input
                  id=""
                  type="search"
                  class="block w-full px-4 py-2 text-sm text-gray-900 border border-gray-950 rounded-3xl"
                  placeholder="ค้นหาคอร์สเรียน"
                />
              </form>
              <div class="flex mx-2">
                <button
                  data-dropdown-toggle="dropdown"
                  class="text-black border border-gray-950 bg-white font-medium rounded-3xl text-sm w-36 px-2 py-2 text-center inline-flex justify-center items-center"
                  type="button"
                >
                  เรียงตาม
                  <svg
                    class="w-4 h-4 ml-2"
                    aria-hidden="true"
                    fill="none"
                    stroke="currentColor"
                    viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg"
                  >
                    <path
                      stroke-linecap="round"
                      stroke-linejoin="round"
                      stroke-width="2"
                      d="M19 9l-7 7-7-7"
                    ></path>
                  </svg>
                </button>
                <!-- Dropdown menu -->
                <div
                  id="dropdown"
                  class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-48"
                >
                  <ul
                    class="py-2 text-sm text-gray-700 text-center"
                    aria-labelledby="dropdownDefaultButton"
                  >
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100">A - Z</a>
                    </li>
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100">Z - A</a>
                    </li>
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100"
                        >วันที่ลงเรียน : (ก่อน - หลัง)</a
                      >
                    </li>
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100"
                        >วันที่ลงเรียน : (หลัง - ก่อน)</a
                      >
                    </li>
                  </ul>
                </div>
                <ModalCreateCourse />
              </div>
            </div>
          </div>
          <div>
            <table>
              <thead class="bg-[#F8F8F8] rounded-lg">
                <tr>
                  <td class="px-4 py-3 font-semibold">ID</td>
                  <td class="px-4 py-3 font-semibold">First_name</td>
                  <td class="px-4 py-3 font-semibold">Last_name</td>
                  <td class="px-4 py-3 font-semibold">Username</td>
                  <td class="px-4 py-3 font-semibold">Email</td>
                  <td class="px-4 py-3 font-semibold">Image</td>
                  <td class="px-4 py-3 font-semibold">Role</td>
                  <td class="px-4 py-3 font-semibold">Action</td>
                </tr>
              </thead>
              <tbody>
                <tr v-for="(user, index) in data" :key="index">
                  <td class="border-b border-[#F4F4F4] px-4 py-3">{{ user.user_id }}</td>
                  <td class="border-b border-[#F4F4F4] px-4 py-3">{{ user.first_name }}</td>
                  <td class="border-b border-[#F4F4F4] px-4 py-3">{{ user.last_name }}</td>
                  <td class="border-b border-[#F4F4F4] px-4 py-3">{{ user.username }}</td>
                  <td class="border-b border-[#F4F4F4] px-4 py-3">{{ user.email }}</td>
                  <td class="border-b border-[#F4F4F4] px-4 py-3"><img class="h-[30px] w-[30px] rounded-full" :src="user.image" alt=""></td>
                  <td class="border-b border-[#F4F4F4] px-4 py-3">{{ user.role }}</td>
                  <td class="border-b border-[#F4F4F4] px-4 py-3">
                    <button class="bg-[#F8F8F8] py-2 px-5 rounded-lg text-[#FF0000] font-semibold">Edit</button>
                  </td>
                </tr>
              </tbody>
            </table>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'AdminMangement',

  async asyncData({ $auth, $axios }) {
    try {
      await $auth.fetchUser()
      const result = await $axios.get('http://localhost:5000/api/user/users')
      return { data: result.data }
    } catch (error) {}
  },
  data() {
    return {
      data: this.asyncData,
      emailUser: '',
    }
  },
  methods: {
    async fetchData() {
      try {
        const result = await axios.get('http://localhost:5000/api/user/users')
        this.data = result.data
      } catch (error) {}
    },
  },
}
</script>
