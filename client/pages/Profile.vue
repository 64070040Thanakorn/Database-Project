<template>
  <div>
   

    <div class="grid grid-cols-3 container mx-20 gap-5 mt-14">
        
        <!-- ส่วนที่1 -->
        <div>

            <div class="mt-2">
                <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">ชื่อ*</label>
                <input type="text" class="bg-gray-50 border border-black text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="ชื่อ" required>
            </div>

            <div class="mt-2">
                <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">วันเกิด*</label>
                <input type="date" class="bg-gray-50 border border-black text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="ชื่อ" required>
            </div>

            <div class="mt-2">
                <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">อีเมล*</label>
                <input type="email" class="bg-gray-50 border border-black text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="อีเมล" required>
            </div>

        </div>

        <!-- ส่วนสอง -->
        <div>

            <div class="mt-2">
                <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">นามสกุล*</label>
                <input type="text" class="bg-gray-50 border border-black text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5" placeholder="นามสกุล" required>
            </div>

            <!-- dropdraw -->
            <div class="mt-2">
                <label for="countries" class="block mb-2 text-sm font-medium text-gray-900">เพศ*</label>
                <select id="countries" class="bg-gray-50 border border-black text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5">
                    <option selected>กรุณาใส่เพศ...</option>
                    <option value="US">ชาย</option>
                    <option value="CA">หญิง</option>
                    <option value="FR">อื่นๆ</option>
                </select>
            </div>



        </div>

        <!-- ส่วนที่สาม -->
        <div class="mx-20">
            <img src="https://i.pinimg.com/736x/dc/02/00/dc02000e854fd9d4f88b4320ebf71094.jpg" alt="" class="rounded h-40 w-52">
            <button type="button" class="mt-10 text-white bg-gray-800 hover:bg-gray-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-10 py-2.5 mr-2 mb-2">แก้ไขข้อมูลส่วนตัว</button>
        </div>

    </div>

    <hr class="my-8 bg-gray-200 border-0 container m-auto"  style="height: 2px;">


  </div>
</template>

<script>
export default {

}
</script>

<style>

</style>