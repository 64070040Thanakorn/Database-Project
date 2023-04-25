<template>
  <div class="flex justify-center">
    <ModalFewza
      :myprop="check"
      @updateProp="
        check.check = false
        fetchData()
      "
    />
    <div class="flex flex-col my-10 mx-20 w-[90%]">
      <h1 class="text-4xl font-bold">Admin Management</h1>
      <div class="h-[2px] w-full bg-[#F6F6F6] rounded my-7"></div>
      <div class="flex">
        <div class="mr-20 w-[15%]">
          <ul>
            <NuxtLink to="/admin/ManageUser">
              <li class="px-4 py-2 rounded">จัดการผู้ใช้</li>
            </NuxtLink>
            <NuxtLink to="/admin/ManageCourse">
              <li class="bg-gray-100 font-semibold px-4 py-2 rounded">
                จัดการคอร์สเรียน
              </li>
            </NuxtLink>
          </ul>
        </div>
        <div class="w-[85%] space-y-10">
          <div class="flex justify-between">
            <label for="" class="text-4xl mx-4">จัดการคอร์สเรียน</label>
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
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100"
                        >A - Z</a
                      >
                    </li>
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100"
                        >Z - A</a
                      >
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
              </div>
            </div>
          </div>
          <div class="w-full">
            <div class="overflow-auto">
              <table class="w-full">
                <thead class="bg-[#F8F8F8] rounded-lg">
                  <tr class="">
                    <td class="px-4 py-3 font-semibold">course_id</td>
                    <td class="px-4 py-3 font-semibold">title</td>
                    <td class="px-4 py-3 font-semibold">description</td>
                    <td class="px-4 py-3 font-semibold">price</td>
                    <td class="px-4 py-3 font-semibold">level</td>
                    <td class="px-4 py-3 font-semibold">received</td>
                    <td class="px-4 py-3 font-semibold">create_date</td>
                    <td class="px-4 py-3 font-semibold">end_date</td>
                    <td class="px-4 py-3 font-semibold">professor_id</td>
                    <td class="px-4 py-3 font-semibold">start_date</td>
                    <td class="px-4 py-3 font-semibold">status</td>
                    <td class="px-4 py-3 font-semibold">thumbnail</td>
                    <td class="px-4 py-3 font-semibold">action</td>
                  </tr>
                </thead>
                <tbody>
                  <tr
                    v-for="(user, index) in data"
                    :key="index"
                    class="text-sm"
                  >
                    <td
                      v-for="(user1, index1) in user"
                      :key="index1"
                      class="border-b border-[#F4F4F4] px-4 py-3"
                    >
                      {{ user1 }}
                    </td>
                    <td class="border-b border-[#F4F4F4] px-4 py-3">
                      <button
                        class="bg-[#F8F8F8] py-2 px-5 rounded-lg text-[#FF0000] font-semibold"
                        @click="openmodal(user)"
                      >
                        Edit
                      </button>
                    </td>
                  </tr>
                </tbody>
              </table>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'AdminMangement',

  async asyncData({ $auth, $axios, redirect }) {
    try {
      await $auth.fetchUser()
      if ($auth.user.role === 'Admin') {
        const result = await $axios.get(
          'http://localhost:5000/api/course/admin/course'
        )
        return { data: result.data }
      } else {
        redirect('/')
      }
    } catch (error) {}
  },
  data() {
    return {
      emailUser: '',
      check: { check: false, data: {} },
    }
  },
  methods: {
    async fetchData() {
      try {
        const result = await this.$axios.get(
          'http://localhost:5000/api/course/admin/course'
        )
        this.data = result.data
      } catch (error) {}
    },

    openmodal(dataff) {
      try {
        this.check.data = dataff
        this.check.check = true
      } catch (error) {}
    },
  },
}
</script>
