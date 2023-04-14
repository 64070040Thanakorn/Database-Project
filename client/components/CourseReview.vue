<script>

export default {
    name: "CourseReview",
    data() {
      return {
        items: [1, 2, 3],
        test: "test",
      }
    },
}
</script>

<template>
    <div>
        <div class="flex w-full mt-1">
            <div class="flex basis-1/4 justify-center">
                <div class="flex flex-col ml-12 items-center">
                  <div class="flex">
                    <label for="" class="flex text-lg">คะแนนเฉลี่ย</label>
                  </div>
                  <div class="flex">
                    <label for="" class="flex text-[36px] mt-8 text-[#2B26D8]">4.4</label>
                  </div>
                </div>
            </div>

            <div class="flex flex-col basis-3/4">
                <div class="flex flex-col justify-center items-center">
                  <label for="" class="flex flex-column text-lg">รายละเอียด</label>
                </div>
                <div class="flex flex-col">
                  <div class="flex justify-center items-center mt-4 ">
                    <span class="text-sm font-medium text-[#717171]">5 ดาว</span>
                    <div class="w-2/3 h-5 mx-4 bg-[#F5F4F8] rounded drop-shadow-md">
                        <div class="h-5 bg-[#4C47DE] rounded" style="width: 70%"></div>
                    </div>
                    <span class="text-sm font-medium text-[#717171]">70%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-[#717171]">4 ดาว</span>
                    <div class="w-2/3 h-5 mx-4 bg-[#F5F4F8] rounded drop-shadow-md">
                        <div class="h-5 bg-[#4C47DE] rounded" style="width: 17%"></div>
                    </div>
                    <span class="text-sm font-medium text-[#717171]">17%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-[#717171]">3 ดาว</span>
                    <div class="w-2/3 h-5 mx-4 bg-[#F5F4F8] rounded drop-shadow-md">
                        <div class="h-5 bg-[#4C47DE] rounded" style="width: 8%"></div>
                    </div>
                    <span class="text-sm font-medium text-[#717171]">8%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-[#717171]">2 ดาว</span>
                    <div class="w-2/3 h-5 mx-4 bg-[#F5F4F8] rounded drop-shadow-md">
                        <div class="h-5 bg-[#4C47DE] rounded" style="width: 4%"></div>
                    </div>
                    <span class="text-sm font-medium text-[#717171]">4%</span>
                  </div>
                  <div class="flex justify-center items-center mt-4">
                    <span class="text-sm font-medium text-[#717171]">1 ดาว</span>
                    <div class="w-2/3 h-5 mx-4 bg-[#F5F4F8] rounded drop-shadow-md">
                        <div class="h-5 bg-[#4C47DE] rounded" style="width: 1%"></div>
                    </div>
                    <span class="text-sm font-medium text-[#717171]">1%</span>
                  </div>
                </div>
            </div>
        </div>
        <div class="flex mt-8">
          <div class="rounded-full bg-[#D9D9D9] mr-4 p-3 h-[2.5rem] w-[2.5rem] flex justify-center items-center">
              <p>N</p>
          </div>
          <div class="flex flex-col grow">
            <textarea id="" name="" class="flex justify-center border rounded-[10px] border-[#9F9F9F] mb-4 w-full h-40 px-6 py-3 grow" placeholder="เพิ่มคอมเมนต์..."></textarea>
            <button class="w-full bg-[#7E82E6] hover:bg-[#6065E1] text-white text-lg p-1 rounded-[5px]">โพสต์</button>
          </div>
        </div>
        <div v-for="(item, index) in items" :key="index">
          <CourseComment/>
        </div>
      </div>
</template>