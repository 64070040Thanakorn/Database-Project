<template>
    <div>
        <div class="flex w-full">

            <div class="flex basis-1/4 justify-center">
    
                <div class="flex flex-col ml-12 items-center">
                  <div class="flex">
                    <label for="" class="flex text-lg">คะแนนเฉลี่ย</label>
                  </div>
                  <div class="flex">
                    <label for="" class="flex text-lg mt-8">4.4</label>
                  </div>
                </div>
    
            </div>

            <div class="flex flex-col basis-3/4">
                <div class="flex flex-col justify-center items-center">
                  <label for="" class="flex flex-column text-lg">รายละเอียด</label>
                </div>
                <div class="flex flex-col">
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">5 ดาว</span>
                    <div class="w-2/4 h-5 mx-4 bg-gray-200 rounded dark:bg-gray-700">
                        <div class="h-5 bg-yellow-400 rounded" style="width: 70%"></div>
                    </div>
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">70%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">4 ดาว</span>
                    <div class="w-2/4 h-5 mx-4 bg-gray-200 rounded dark:bg-gray-700">
                        <div class="h-5 bg-yellow-400 rounded" style="width: 17%"></div>
                    </div>
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">17%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">3 ดาว</span>
                    <div class="w-2/4 h-5 mx-4 bg-gray-200 rounded dark:bg-gray-700">
                        <div class="h-5 bg-yellow-400 rounded" style="width: 8%"></div>
                    </div>
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">8%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">2 ดาว</span>
                    <div class="w-2/4 h-5 mx-4 bg-gray-200 rounded dark:bg-gray-700">
                        <div class="h-5 bg-yellow-400 rounded" style="width: 4%"></div>
                    </div>
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">4%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">1 ดาว</span>
                    <div class="w-2/4 h-5 mx-4 bg-gray-200 rounded dark:bg-gray-700">
                        <div class="h-5 bg-yellow-400 rounded" style="width: 1%"></div>
                    </div>
                    <span class="text-sm font-medium text-blue-600 dark:text-blue-500">1%</span>
                  </div>   
                </div>
            </div>
        </div>
        <div>
          <textarea name="" id="" class="flex justify-center border rounded-2xl border-black mt-8 mb-4 w-full h-40"></textarea>
          <button class="w-full bg-[#7E82E6] hover:bg-[#6065E1] text-white text-lg p-2 rounded-xl">โพสต์</button>
        </div>
      </div>
</template>
<script>
export default {
    
}
</script>