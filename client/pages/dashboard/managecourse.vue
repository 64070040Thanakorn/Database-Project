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
              <li class="px-4 py-2 rounded">คอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Professor'" to="/dashboard/managecourse">
              <li class="bg-gray-100 font-bold px-4 py-2 rounded">จัดการคอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Student'" to="/dashboard/studytable">
              <li class="px-4 py-2 rounded">ตารางเรียน</li>
            </NuxtLink>
          </ul>
        </div>
        <div class="w-[90%]">
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
          <div
            v-if="courses.length !== 0"
            class="grid grid-cols-1 lg:grid-cols-2 xl:grid-cols-3 2xl:grid-cols-4 gap-4 mt-4 mb-20 mx-7 justify-items-center"
          >
            <ModalFewza
              :myprop="check"
              @updateProp="
                check.check = false;
                fetchData();
              "
            />
            <div
              v-for="(item, index) in courses"
              :key="index"
              :to="{ path: `/course/${item.course_id}` }"
            >
              <div>
                <div
                  class="w-[280px] h-[380px] shadow-lg shadow-black-500/50 rounded-[15px] flex flex-col"
                >
                  <img
                    :src="
                      item.thumbnail
                        ? 'http://localhost:5000/images/' + item.thumbnail
                        : 'https://media.discordapp.net/attachments/1067453596351856650/1096913733281927369/no-picture-available-placeholder-thumbnail-icon-illustration-design.png'
                    "
                    class="basis-5/12 rounded-t-[15px] w-auto h-0 object-cover"
                    alt="course_img"
                  />
                  <div class="basis-7/12 p-4 gap-y-1 flex flex-col justify-between">
                    <div>
                      <p class="text-xl">{{ item.title }}</p>
                      <div class="flex justify-between items-center">
                        <p class="text-[#4C47DE] text-sm">
                          {{ item.level }}, {{ item.received }}
                        </p>
                      </div>
                      <hr class="border-[1.2px]" />
                      <p class="font-light text-[12px]">
                        {{ item.professor.user.first_name }}
                        {{ item.professor.user.last_name }}
                      </p>
                      <p class="text-[#9F9F9F] font-light text-[10px] textOver">
                        {{ item.professor.info }}
                      </p>
                    </div>
                    <div class="flex justify-between mx-2 mt-12">
                      <button
                        @click="openmodal(item)"
                        class="inline-flex items-center justify-center w-28 px-3 py-2 text-sm font-normal text-center bg-transparent text-red-700 hover:text-red-800"
                      >
                        แก้ไขคอร์ส
                      </button>

                      <Nuxt-link :to="`/course/${item.course_id}`">
                        <a
                          href="#"
                          class="inline-flex items-center justify-center w-28 px-3 py-2 text-sm font-normal text-center bg-transparent text-green-600 hover:text-green-800"
                        >
                          ไปหน้าคอร์ส
                        </a>
                      </Nuxt-link>
                    </div>
                  </div>
                </div>
              </div>
            </div>
          </div>
          <div v-else class="flex justify-center items-center p-60 text-xl">
            <p>
              คุณยังไม่มีคอร์สที่สอน
              <span class="text-purple-700">สร้างคอร์สเรียนใหม่ได้เลย!</span>
            </p>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
<script>
import "flowbite";
export default {
  name: "ManageCourse",
  async asyncData({ $auth, redirect, $axios }) {
    await $auth.fetchUser();
    if (!$auth.loggedIn) {
      redirect("/");
    } else if ($auth.user.role !== "Professor") {
      redirect("/");
    }
    const course = await $axios.post("http://localhost:5000/api/course/getManageCourse");
    return { courses: course.data };
  },
  data() {
    return {
      emailUser: "",
      check: { check: false, data: {} },
    };
  },
  methods: {
    async fetchData() {
      const course = await this.$axios.post(
        "http://localhost:5000/api/course/getManageCourse"
      );

      this.courses = course.data;
    },

    openmodal(dataff) {
      try {
        this.check.data = dataff;
        this.check.check = true;
      } catch (error) {}
    },
  },
};
</script>

<style>
.textOver {
  overflow: hidden;
  display: -webkit-box;
  -webkit-line-clamp: 2; /* number of lines to show */
  line-clamp: 2;
  -webkit-box-orient: vertical;
}
</style>
