


<template>
  <div class="flex justify-center">
    <div class="flex flex-col my-10 mx-20 w-[90%]">
      <h1 class="text-4xl font-bold">Dashboard</h1>
      <div class="h-[2px] w-full bg-[#F6F6F6] rounded my-7"></div>
      <div class="flex">
        <div class="mr-20 w-[10%]">
          <ul>
            <NuxtLink to="/dashboard/username">
              <li class="px-4 py-2 rounded">รายละเอียดของฉัน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Student'" to="/dashboard/course">
              <li class="bg-gray-100 font-bold px-4 py-2 rounded">คอร์สเรียน</li>
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
            <label for="" class="text-4xl mx-4">คอร์สเรียนของฉัน</label>
            <div class="flex w-[50%]">
              <form class="w-full">
                <input id="" type="search"
                  class="block w-full px-4 py-2 text-sm text-gray-900 border border-gray-950 rounded-3xl"
                  v-model="searchInput" placeholder="ค้นหาคอร์สเรียน">
              </form>
              <div class="flex mx-2">
                <button data-dropdown-toggle="dropdown"
                  class="text-black border border-gray-950 bg-white font-medium rounded-3xl text-sm w-36 px-2 py-2 text-center inline-flex justify-center items-center"
                  type="button">
                  เรียงตาม
                  <svg class="w-4 h-4 ml-2" aria-hidden="true" fill="none" stroke="currentColor" viewBox="0 0 24 24"
                    xmlns="http://www.w3.org/2000/svg">
                    <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                  </svg>
                </button>
                <!-- Dropdown menu -->
                <div id="dropdown" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-48">
                  <ul class="py-2 text-sm text-gray-700 text-center" aria-labelledby="dropdownDefaultButton">
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100">A - Z</a>
                    </li>
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100">Z - A</a>
                    </li>
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100">วันที่ลงเรียน : (ก่อน - หลัง)</a>
                    </li>
                    <li>
                      <a href="#" class="block px-4 py-2 hover:bg-gray-100">วันที่ลงเรียน : (หลัง - ก่อน)</a>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>

          <div v-if="courses.length !== 0"
            class="grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4 gap-4 mt-4 mb-12 mx-7 justify-items-center">
            <NuxtLink v-for="(item, index) in filteredItems" :key="index"
              :to="{ path: `/course/${item.course.course_id}` }">
              <EnrollCard :item="item"></EnrollCard>
            </NuxtLink>
          </div>
          <div v-else class="flex justify-center items-center p-60 text-xl">
            <p>คุณยังไม่มีคอร์สที่เรียน <Nuxt-link to="/search"
                class="text-purple-700">ลงคอร์สเรียนที่สนใจตอนนี้!</Nuxt-link></p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>



<script>
export default {
  async asyncData({ $axios }) {
    const items = await $axios.post("http://localhost:5000/api/course/getCourseEnroll");
    return { courses: items.data }
  },

  data() {
    return {
      searchInput: ''
    }
  },

  computed: {
    filteredItems() {
      return this.courses.filter((item) =>
        item.course.title.toLocaleLowerCase().includes(this.searchInput.toLocaleLowerCase())
      )
    },
  },

}

</script>