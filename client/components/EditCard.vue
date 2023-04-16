<template>
  <div
    class="w-[280px] h-[380px] shadow-lg shadow-black-500/50 rounded-[15px] flex flex-col"
  >
    <img
      src="te"
      class="basis-5/12 rounded-t-[15px] w-auto h-0 object-cover"
      alt="course_img"
    />
    <div class="basis-7/12 p-4 gap-y-1 flex flex-col justify-between">
      <div>
        <p class="text-xl"></p>
        <div class="flex justify-between items-center">
          <p class="text-[#4C47DE] text-sm"></p>
        </div>
        <hr class="border-[1.2px]" />
        <p class="font-light text-[12px]"></p>
        <p class="text-[#9F9F9F] font-light text-[10px] textOver">
          
        </p>
      </div>
      
      <div class="flex justify-between mx-2 mt-12">
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
      </div>
    </div>
  </div>
</template>
<script>

export default {
  // props: {
  //   item: {
  //     type: Object,
  //     required: true,
  //   },
  // },
  // async asyncData({isDev, route, store, env, params, query, req, res, redirect, error}) {
    
  // },
  data() {
    return {
    }
  },
};
</script>
