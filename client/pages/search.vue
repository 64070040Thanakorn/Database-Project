<script>
export default {
  name: 'Search',
  async asyncData({ $axios }) {
    const course = await $axios.get(`http://localhost:5000/api/course/`)
    return { courses: course.data }
  },
  data() {
    return {
      searchInput: '',
      isActiveCate: true,
      isActiveLevel: true,
      isActivePrice: true,
      isActiveAmount: true,
      isActiveCer: true,
      isActiveLesson: true,
      searchValue: null,
      beginner: null,
      intermediate: null,
      advanced: null,
      priceFree: null,
      price1To1000: null,
      price1001To3000: null,
      price3000: null,
      amountFull: null,
      amountNotFull: null,
      recCer: null,
      recTest: null,
      recFile: null,
      test: null,
    }
  },

  computed: {
    filteredItems() {
      return this.courses.filter((item) => item.title.toLocaleLowerCase().includes(this.searchInput.toLocaleLowerCase()))
    },
  },
  methods: {
    clearFilter() {
      this.beginner = null
      this.intermediate = null
      this.advanced = null
      this.priceFree = null
      this.price1To1000 = null
      this.price1001To3000 = null
      this.price3000 = null
      this.amountFull = null
      this.amountNotFull = null
      this.recCer = null
      this.recTest = null
      this.recFile = null
    },
    // showHide(header, content, bottom, bool, value) {
    //     if (bool) {
    //         gsap.to(header, {
    //             rotate: 180
    //         })
    //         TweenMax.to(content, 0.1, {
    //             y: -20,
    //             autoAlpha: 0,
    //             display: 'none',
    //         })
    //         if (bottom) {
    //             TweenMax.to(bottom, 0.1, {
    //                 y: value
    //             })

    //             gsap.to(bottom, {
    //                 delay: 0.1,
    //                 duration: 0,
    //                 y: 0,
    //             })
    //         }

    //     }
    //     else {

    //         gsap.to(header, {
    //             rotate: 0,
    //         })

    //         TweenMax.to(content, 0.1, {
    //             y: 0,
    //             autoAlpha: 1,
    //             display: 'block',
    //         })

    //         if (bottom) {
    //             TweenMax.to(bottom, 0.1, {
    //                 y: 0
    //             })
    //         }

    //     }
    // },
  },
}
</script>

<template>
  <section>
    <div class="px-52 bg-[#F5F4F8] py-20 space-y-10 rounded-br-[300px]">
      <div class="flex justify-between">
        <div class="space-y-4 justify-center flex flex-col xl:basis-3/5">
          <p class="font-medium text-7xl">หาคอร์สเรียนที่เหมาะกับคุณ</p>
          <p class="text-4xl text-[#2B26D8]">
            เว็บไซด์จัดหาคอร์สเรียนที่ดีที่สุด
          </p>
          <p class="text-[#9F9F9F] text-lg">
            Lorem Ipsum is simply dummy text of the printing and typesetting
            industry. Lorem Ipsum has been the industry's standard dummy text
            ever since the 1500s
          </p>
        </div>
        <div class="hidden xl:flex justify-center xl:basis-2/5">
          <img
            class="w-[300px] h-auto"
            src="../assets/search/search_01.png"
            alt=""
          />
        </div>
      </div>
      <div class="relative flex items-center">
        <input
          class="flex w-full px-6 py-3 rounded-[30px] absolute"
          type=""
          name=""
          value=""
          v-model="searchInput"
          placeholder="ค้นหาเรื่องที่คุณสนใจ..."
        />
        <button
          class="absolute bg-[#2B26D8] px-10 py-1 rounded-[15px] text-white right-0 mr-6"
        >
          ค้นหา
        </button>
      </div>
    </div>
    <div class="container mx-auto flex">
      <div class="w-[30%]">
        <div class="flex flex-col p-8 overflow-y-auto h-full w-full">
          <!-- <div class="flex flex-col">
            <div class="flex items-center">
              <h3 class="text-2xl font-medium text-[#2B26D8]">คณิตศาสตร์</h3>
            </div>
          </div> -->
          <div class="flex flex-col gap-4">
            <div class="flex justify-between items-center">
              <div class="flex gap-2 items-center">
                <!-- icon filter -->
                <!-- <i class="pi pi-sliders-h text-xl"></i> -->
                <p class="text-xl font-light">กรอง</p>
              </div>
              <button
                type="button"
                class="texl-lg font-light text-[#676767] underline"
                @click="clearFilter()"
              >
                ล้างกรอง
              </button>
            </div>
            <div class="flex flex-col gap-2 dropdown">
              <button
                type="button"
                class="flex justify-between items-center"
                @click="
                  showHide(
                    '.level-icon',
                    '.level-content',
                    '.level-bottom',
                    isActiveLevel,
                    -90
                  ),
                    (isActiveLevel = !isActiveLevel)
                "
              >
                <p class="text-lg font-normal">ระดับ</p>
                <i class="pi pi-chevron-up level-icon"></i>
              </button>
              <div class="level-content">
                <div class="ml-3 gap-2 flex flex-col">
                  <div class="flex items-center gap-2">
                    <input
                      id="beginner"
                      v-model="beginner"
                      type="checkbox"
                      name="level"
                      value="beginner"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="beginner" class="font-light"
                      >ระดับเริ่มต้น</label
                    >
                  </div>
                  <div class="flex items-center gap-2">
                    <input
                      id="intermediate"
                      v-model="intermediate"
                      type="checkbox"
                      name="level"
                      value="intermediate"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="intermediate" class="font-light"
                      >ระดับกลาง</label
                    >
                  </div>
                  <div class="flex items-center gap-2">
                    <input
                      id="advanced"
                      v-model="advanced"
                      type="checkbox"
                      name="level"
                      value="advanced"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="advanced" class="font-light">ระดับสูง</label>
                  </div>
                </div>
              </div>
            </div>

            <div class="flex flex-col gap-2 dropdown level-bottom">
              <hr class="border-[1.2px]" />
              <button
                type="button"
                class="flex justify-between items-center"
                @click="
                  showHide(
                    '.price-icon',
                    '.price-content',
                    '.price-bottom',
                    isActivePrice,
                    -120
                  ),
                    (isActivePrice = !isActivePrice)
                "
              >
                <p class="text-lg font-normal">ราคา</p>
                <i class="pi pi-chevron-up price-icon"></i>
              </button>
              <div class="price-content">
                <div class="ml-3 gap-2 flex flex-col">
                  <div class="flex items-center gap-2">
                    <input
                      id="priceFree"
                      v-model="priceFree"
                      type="checkbox"
                      name="priceFree"
                      value="priceFree"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="priceFree" class="font-light">ฟรี</label>
                  </div>
                  <div class="flex items-center gap-2">
                    <input
                      id="price1To1000"
                      v-model="price1To1000"
                      type="checkbox"
                      name="price1To1000"
                      value="price1To1000"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="price1To1000" class="font-light"
                      >1-1000 บาท</label
                    >
                  </div>
                  <div class="flex items-center gap-2">
                    <input
                      id="price1001To3000"
                      v-model="price1001To3000"
                      type="checkbox"
                      name="price1001To3000"
                      value="price1001To3000"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="price1001To3000" class="font-light"
                      >1001-3000 บาท</label
                    >
                  </div>
                  <div class="flex items-center gap-2">
                    <input
                      id="price3000"
                      v-model="price3000"
                      type="checkbox"
                      name="price3000"
                      value="price3000"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="price3000" class="font-light"
                      >มากกว่า 3000 บาท</label
                    >
                  </div>
                </div>
              </div>
            </div>

            <div
              class="flex flex-col gap-2 dropdown amount-bottom price-bottom level-bottom"
            >
              <hr class="border-[1.2px]" />
              <button
                type="button"
                class="flex justify-between items-center"
                @click="
                  showHide(
                    '.cer-icon',
                    '.cer-content',
                    '.cer-bottom',
                    isActiveCer,
                    -60
                  ),
                    (isActiveCer = !isActiveCer)
                "
              >
                <p class="text-lg font-normal">สิ่งที่ได้รับ</p>
                <i class="pi pi-chevron-up cer-icon"></i>
              </button>
              <div class="cer-content">
                <div class="ml-3 gap-2 flex flex-col">
                  <div class="flex items-center gap-2">
                    <input
                      id="recCer"
                      v-model="recCer"
                      type="checkbox"
                      name="recCer"
                      value="recCer"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="recCer" class="font-light">ประกาศนียบัตร</label>
                  </div>
                  <div class="flex items-center gap-2">
                    <input
                      id="recTest"
                      v-model="recTest"
                      type="checkbox"
                      name="recTest"
                      value="recTest"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="recTest" class="font-light">แบบทดสอบ</label>
                  </div>
                  <div class="flex items-center gap-2">
                    <input
                      id="recFile"
                      v-model="recFile"
                      type="checkbox"
                      name="recFile"
                      value="recFile"
                      class="p-2 border-2 border-black inline-block"
                    />
                    <label for="recFile" class="font-light"
                      >มีไฟล์ให้ดาวน์โหลด</label
                    >
                  </div>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="w-full py-8 px-28">
        <p class="font-light">จำนวน {{ filteredItems.length }} ผลลัพธ์</p>
        <hr class="border-[1.2px] mt-1 mb-4" />
        <div
          class="grid grid-cols-1 xl:grid-cols-2 2xl:grid-cols-3 gap-4 justify-items-center px-5"
        >
          <Nuxt-link
            v-for="(item, index) in filteredItems"
            :key="index"
            :to="{ path: `course/${item.course_id}` }"
            class="inline-block"
          >
            <MainCard :item="item" />
          </Nuxt-link>
        </div>
        <div class="flex justify-center gap-4 my-12">
          <!-- <div v-for="(value, index) in pageAmount" :key="index">
            <span class="font-light hover:font-normal">{{ value }}</span>
          </div> -->
        </div>
      </div>
    </div>
  </section>
</template>
<style>
.searchContainer {
  padding-left: 12.5rem;
  padding-right: 12.5rem;
}
</style>
