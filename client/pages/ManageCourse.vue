<template>
    <div>
        <div class="flex justify-center items-center w-full pt-8 mt-8">
            <label for="" class="text-4xl mx-8">จัดการคอร์สเรียน</label>

            <form class="w-7/12">
                <label for="default-search"
                    class="mb-2 text-sm font-medium text-gray-900 sr-only dark:text-white">Search</label>
                <div class="relative">
                    <input id="default-search" type="search"
                        class="block w-full p-4 text-sm text-gray-900 border border-gray-300 rounded-3xl bg-gray-50 focus:ring-blue-500 focus:border-blue-500"
                        placeholder="Search Mockups, Logos..." required>
                    <button type="submit"
                        class="text-white absolute right-2.5 bottom-2.5 bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-3xl text-sm px-4 py-2">Search</button>
                </div>
            </form>
            <label for="" class="mx-4">จัดเรียง</label>
            <div class="flex mx-4">
                <button id="dropdownDefaultButton" data-dropdown-toggle="dropdown"
                    class="text-black border border-gray-950 bg-white hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-3xl text-sm w-48 px-4 py-2.5 text-center inline-flex justify-center items-center"
                    type="button">เรียงตาม <svg class="w-4 h-4 ml-2" aria-hidden="true" fill="none" stroke="currentColor"
                        viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
                        <path stroke-linecap="round" stroke-linejoin="round" stroke-width="2" d="M19 9l-7 7-7-7"></path>
                    </svg></button>
                <!-- Dropdown menu -->
                <div id="dropdown" class="z-10 hidden bg-white divide-y divide-gray-100 rounded-lg shadow w-48">
                    <ul class="py-2 text-sm text-gray-700 dark:text-gray-200" aria-labelledby="dropdownDefaultButton">
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100">วันที่ลงเรียน : (ก่อน - หลัง)</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100">วันที่ลงเรียน : (หลัง - ก่อน)</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100">วันที่สร้าง(ก่อน - หลัง)</a>
                        </li>
                        <li>
                            <a href="#" class="block px-4 py-2 hover:bg-gray-100">วันที่สร้าง(ก่อน - หลัง)</a>
                        </li>
                    </ul>
                </div>
            </div>
            <button type="button"
                class="text-white bg-[#2B26D8] hover:bg-[#130ec7] focus:ring-4 focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 focus:outline-none">เพิ่มคอร์ส</button>

        </div>
        <hr class="h-[2px] my-8 bg-gray-200">
        <div class="grid grid-cols-5 gap-10 mx-8 my-8">
            <div v-for="value, index in 10" :key="index">
                <CardItem></CardItem>
            </div>
        </div>
    </div>
</template>
  
<script>
import 'flowbite';
export default {
    name: 'ManageCourse',
}
</script>