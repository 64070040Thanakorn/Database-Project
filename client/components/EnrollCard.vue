<template>
  <div
    class="w-[280px] h-[380px] shadow-lg shadow-black-500/50 rounded-[15px] flex flex-col"
  >
    <img
      :src="item.course.thumbnail"
      class="basis-5/12 rounded-t-[15px] w-auto h-0 object-cover"
      alt="course_img"
    />
    <div class="basis-7/12 p-4 gap-y-1 flex flex-col justify-between">
      <div>
        <p class="text-xl">{{ item.course.title }}</p>
        <div class="flex justify-between item.courses-center">
          <p class="text-[#4C47DE] text-sm">
            {{ item.course.level }}, {{ item.course.received }}
          </p>
        </div>
        <hr class="border-[1.2px]" />
        <p class="font-light text-[12px]">
          {{ item.course.professor.user.first_name }}
          {{ item.course.professor.user.last_name }}
        </p>
        <p class="text-[#9F9F9F] font-light text-[10px] textOver">
          {{ item.course.professor.info }}
        </p>
      </div>

      <div class="flex justify-between items-center">
        <p class="text-[#9F9F9F] font-light text-[10px]">เมื่อ {{ item.enroll_date }}</p>
        <p class="text-[#467A55]">{{ item.course.price }} บาท</p>
      </div>
    </div>
    <!-- <div class="flex justify-between mx-2 mt-12">
        <a
          href="#"
          class="inline-flex items-center justify-center w-28 px-3 py-2 text-sm font-normal text-center text-green-600 bg-transparent hover:text-green-800"
        >
          แก้ไขคอร์ส
        </a>
        <a
          href="#"
          class="inline-flex items-center justify-center w-28 px-3 py-2 text-sm font-normal text-center text-red-700 bg-transparent hover:text-red-800"
        >
          ลบคอร์ส
        </a>
      </div> -->
  </div>
</template>
<script>
export default {
  props: {
    item: {
      type: Object,
      required: true,
    },
  },
  data() {
    return {};
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
