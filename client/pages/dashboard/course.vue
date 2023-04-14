<template>
  <div class="flex justify-center">
    <div class="flex flex-col my-10 mx-20 w-[90%]">
      <h1 class="text-4xl font-bold">Dashboard</h1>
      <div class="h-[2px] w-full bg-[#F6F6F6] rounded my-7"></div>
      <div class="flex">
        <div class="mr-20 w-[10%]">
          <ul>
            <NuxtLink  to="/dashboard/username">
              <li class="px-4 py-2 rounded">รายละเอียดของฉัน</li>
            </NuxtLink>
            <NuxtLink to="/dashboard/course">
              <li class="bg-gray-100 font-bold px-4 py-2 rounded">คอร์สเรียน</li>
            </NuxtLink>
          </ul>
        </div>
        <div class="w-[90%]">
          <div class="flex justify-between">
            <label for="" class="text-4xl mx-4">คอร์สเรียนของฉัน</label>
            <div class="flex w-[50%]">
              <form class="w-full">
                <input id="" type="search" class="block w-full px-4 py-2 text-sm text-gray-900 border border-gray-950 rounded-3xl" placeholder="ค้นหาคอร์สเรียน">
              </form>
              <div class="flex mx-2">
                <button data-dropdown-toggle="dropdown" class="text-black border border-gray-950 bg-white font-medium rounded-3xl text-sm w-36 px-2 py-2 text-center inline-flex justify-center items-center" type="button">
                  เรียงตาม 
                  <svg class="w-4 h-4 ml-2" aria-hidden="true" fill="none" stroke="currentColor" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
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
          <div class="grid grid-cols-5 gap-4 mt-4">
            <div v-for="n in 6" :key="n">
              <MainCard></MainCard>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>