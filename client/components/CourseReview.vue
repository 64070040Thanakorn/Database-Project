<script>
export default {
  name: 'CourseReview',
  props: {
    comments: {
      type: Array,
      required: true,
    },
    courses: {
      type: Object,
      required: true,
    },
    stars: {
      type: Array,
      required: true,
    },
  },
  data() {
    return {
      test: 'test',
      comment: '',
    }
  },
  methods: {
    submit() {
      this.$axios
        .post(
          'http://localhost:5000/api/comment',
          {
            content: this.comment,
            user_id: this.$auth.user.user_id,
            course_id: this.$route.params.id,
          },
          {
            headers: {
              'Content-Type': 'application/json',
            },
          }
        )
        .then((res) => {
          // console.log(res);
          window.location.reload()
        })
        .catch((err) => {
          console.log(err)
        })
    },
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
            <label for="" class="flex text-[36px] mt-8 text-[#2B26D8]">{{
              courses.avg_course_rating
            }}</label>
          </div>
        </div>
      </div>
      <!-- <div v-for="(item, index) in courses.course_rating" :key="index">
              {{ item.course_rating }} {{ index }}
            </div> -->
      <!-- {{ courses.course_rating }} -->
      <div class="flex flex-col basis-3/4">
        <div class="flex flex-col justify-center items-center">
          <label for="" class="flex flex-column text-lg">รายละเอียด</label>
        </div>
        <div class="flex flex-col">
          <div
            v-for="(item, i) in stars"
            :key="i"
            class="flex justify-center items-center mt-4"
          >
            <span class="text-sm font-medium text-[#717171]">{{ 5 - i }} คะแนน</span>
            <div class="w-2/3 h-5 mx-4 bg-[#F5F4F8] rounded drop-shadow-md">
              <div class="h-5 bg-[#4C47DE] rounded" :style="`width: ${item ? item : 0}%`"></div>
            </div>
            <span class="text-sm font-medium text-[#717171]">{{ item ? item : 0 }} %</span>
          </div>
         
        </div>
      </div>
    </div>
    <div class="flex mt-8">
      <div
        class="rounded-full bg-[#D9D9D9] mr-4 p-3 h-[2.5rem] w-[2.5rem] flex justify-center items-center"
      >
        <p>{{ $auth.user.first_name.charAt(0).toUpperCase() }}</p>
      </div>
      <div class="flex flex-col grow">
        <textarea
          id=""
          v-model="comment"
          name=""
          class="flex justify-center border rounded-[10px] border-[#9F9F9F] mb-4 w-full h-40 px-6 py-3 grow"
          placeholder="เพิ่มคอมเมนต์..."
        ></textarea>
        <button
          class="w-full bg-[#7E82E6] hover:bg-[#6065E1] text-white text-lg p-1 rounded-[5px]"
          @click="submit"
        >
          โพสต์
        </button>
      </div>
    </div>
    <div v-for="(item, index) in comments" :key="index">
      <CourseComment :comment="item" />
    </div>
  </div>
</template>