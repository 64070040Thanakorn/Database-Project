<script>
export default {
  name: "Course",
  async asyncData({ $axios, params }) {
    const random = await $axios.get("http://localhost:5000/api/course/randomCourse/3");
    const course = await $axios.get(`http://localhost:5000/api/course/${params.id}`);
    const comment = await $axios.get(`http://localhost:5000/api/comment/${params.id}`);
    return { randoms: random.data, comments: comment.data, courses: course.data };
  },
  data() {
    return {
      showComponent: true,
    };
  },
  methods: {
    toggleComponent() {
      this.showComponent = !this.showComponent;
    },
    enroll() {
      this.$axios
      .post(`http://localhost:5000/api/course/courseEnroll/${this.$route.params.id}`)
      .then(this.$nuxt.$router.push("/dashboard/course"))
    },
    localData(v){
      localStorage.setItem("eiei", JSON.stringify(v))
    }
  },
};
</script>

<template>
  <section>
    <div class="absolute z-[-1] w-full h-[510px] flex">
      <img
      :src="courses.thumbnail ? 'http://localhost:5000/images/' + courses.thumbnail : 'https://media.discordapp.net/attachments/1067453596351856650/1096913733281927369/no-picture-available-placeholder-thumbnail-icon-illustration-design.png'"
        class="w-full h-auto relative object-cover"
        alt="course_image"
      />
    </div>

    <div class="px-72 pt-20 pb-20">
      <div class="mx-12 space-y-10">
        <div class="bg-white px-12 py-12 h-[328px] space-y-3 rounded-[5px] flex">
          <div class="basis-3/4 flex flex-col justify-between">
            <div>
              <div class="flex space-x-2 text-[#717171]">
                <div v-for="(item, index) in parseInt(courses.avg_course_rating)" :key="index">
                  <img
                    src="../../assets/icon/star-full.png"
                    class="w-[20px] h-[20px]"
                    alt=""
                  />
                </div>
                <div v-for="(item, index) in 5 - parseInt(courses.avg_course_rating)" :key="index">
                  <img
                    src="../../assets/icon/star-tran.png"
                    class="w-[20px] h-[20px]"
                    alt=""
                  />
                </div>
              
              <p>{{ courses.avg_course_rating }}</p>
              <p>({{ comments.length }} คอมเมนต์)</p>
            </div>
            <h1 class="text-[36px]">{{ courses.title }}</h1>
            <p class="text-[14px] font-light text-gray-01 textOver3">
                {{ courses.description }}
            </p>
            </div>
            <div>
              <div class="flex">
                  <a href="" class="rounded bg-[#2B26D8] text-white px-12 py-2" @click="enroll()">ลงคอร์สเรียน</a>
              </div>
            </div>
            

            
          </div>
          <div class="basis-1/4">
          </div>
        </div>
        <div class="bg-white py-8 border-2 border-black flex justify-around">
          <div class="flex items-center space-x-2">
            <div>
              <img src="../../assets/icon/level.png" alt="" />
            </div>
            <div>
              <p class="text-sm font-light">ระดับความสามารถ</p>
              <p class="text-2xl">{{ courses.level }}</p>
            </div>
          </div>
          <div class="flex items-center space-x-2">
            <div>
              <img src="../../assets/icon/certificate.png" alt="" />
            </div>
            <div>
              <p class="text-sm font-light">ระยะเวลาคงเหลือ</p>
              <p class="text-2xl">10 ชั่วโมง</p>
            </div>
          </div>
          <div class="flex items-center space-x-2">
            <div>
              <img src="../../assets/icon/recieve.png" alt="" />
            </div>
            <div>
              <p class="text-sm font-light">สิ่งที่ได้รับ</p>
              <p class="text-2xl">{{ courses.received }}</p>
            </div>
          </div>
          <div class="flex items-center space-x-2">
            <div>
              <img src="../../assets/icon/price.png" alt="" />
            </div>
            <div>
              <p class="text-sm font-light">ราคา</p>
              <p class="text-2xl text-[#467A55]">{{ courses.price }} บาท</p>
            </div>
          </div>
        </div>
      </div>
      <div class="mt-20">
        <div class="flex">
          <div class="basis-[70%]">
            <div class="flex space-x-4 border-b-2 border-black mr-16">
              <div
                class="text-xl px-2"
                :class="{ 'text-[#726FE5] border-b-4 border-[#2B26D8]': showComponent }"
              >
                <button @click="showComponent = true">เกี่ยวกับคอร์ส</button>
              </div>
              <div
                class="text-xl px-2"
                :class="{ 'text-[#726FE5] border-b-4 border-[#2B26D8]': !showComponent }"
              >
                <button @click="showComponent = false">รีวิว</button>
              </div>
            </div>
            <div class="py-4 mr-16">
              <div v-if="showComponent">
                <CourseDescription :description="courses.description" />
              </div>
              <div v-else><CourseReview :comments="comments" :courses="courses" :stars="courses.stars" /></div>
            </div>
          </div>

          <div class="basis-[30%]">
            <p class="text-[#2B26D8] text-xl border-b-2 border-black px-2 pb-1">ผู้สอน</p>
            <div class="flex py-4">
              <div class="basis-2/6">
                <img
                  :src="courses.professor.user.image ? 'http://localhost:5000/images/' + courses.professor.user.image : 'https://media.discordapp.net/attachments/1067453596351856650/1096914677780451378/Portrait_Placeholder.png'"
                  class="w-[110px] h-[115px] object-cover"
                  alt=""
                />
              </div>
              <div class="basis-4/6 pr-2 space-y-1">
                <p class="">
                  {{ courses.professor.user.first_name }}
                  {{ courses.professor.user.last_name }}
                </p>
                <div class="flex items-center space-x-2">
                  <img src="../../assets/icon/star.png" alt="" />
                  <p class="text-sm">{{ courses.avg_professor_rating }} คะแนนเฉลี่ย</p>
                </div>
                <div class="flex items-center space-x-3">
                  <img
                    src="../../assets/icon/verified.png"
                    class="ml-[0.125rem]"
                    alt=""
                  />
                  <p class="text-sm">Verified</p>
                </div>
              </div>
            </div>
            <div class="pl-8">
              <ul
                v-for="(item, index) in courses.professor.info
                  ? courses.professor.info.split(', ')
                  : 0"
                :key="index"
                class="list-disc"
              >
                <li>{{ item }}</li>
              </ul>
            </div>
            <div v-if="$auth.user.role === 'Student' && courses.status" class="mt-7 space-y-2">
              <p class="text-[20px]" >ให้คะแนน </p>
                <Nuxt-link to="/review/course">
                  <p class="flex bg-[#44ABD4] justify-center rounded-[5px] text-white p-1" @click="localData({course_id: courses.course_id, course_name: courses.title,professor_id: courses.professor.professor_id, professor_name : `${courses.professor.user.first_name} ${courses.professor.user.last_name}`})" >คอร์ส</p>
                </Nuxt-link>
                <Nuxt-link to="/review/professor" >
                  <p class="flex bg-[#7E82E6] justify-center rounded-[5px] text-white p-1 mt-2" @click="localData({course_id: courses.course_id, professor_id: courses.professor.professor_id, professor_name: `${courses.professor.user.first_name} ${courses.professor.user.last_name}`})">อาจารย์</p>
                </Nuxt-link>
            </div>
          </div>
        </div>
        <!-- <div v-if="showComponent">
          <CourseTable />
        </div> -->

        <!-- <div class="border-2 border-black p-72 mt-16"></div> -->
      </div>
    </div>
    <div class="py-20 bg-[#FAFAFA] mb-8">
      <p class="flex justify-center text-[48px]">ต้องการอะไรอย่างอื่นอีกไหม?</p>
      <div class="flex gap-x-7 justify-center mt-8">
        <Nuxt-link
          v-for="(item, index) in randoms"
          :key="index"
          :to="{ path: `/course/${item.course_id}` }"
        >
          <MainCard :item="item" />
        </Nuxt-link>
      </div>
    </div>
  </section>
</template>

