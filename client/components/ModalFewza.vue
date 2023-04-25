<template>
  <div
    v-if="myprop.check"
    id="defaultModal"
    tabindex="-1"
    aria-hidden="true"
    :class="`${
      myprop.check ? 'fixed' : 'hidden'
    }  top-1/2 flex items-center justify-center left-1/2 z-50 p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] w-full`"
  >
    <div class="relative w-full max-w-2xl max-h-full">
      <!-- Modal content -->
      <div class="relative bg-white rounded-lg shadow-xl">
        <!-- Modal header -->
        <div
          class="flex items-start justify-between p-4 border-b rounded-t dark:border-gray-600"
        >
          <h3 class="text-xl font-semibold text-gray-900">"แก้ไขซ่าๆ"</h3>
          <button
            @click="close()"
            type="button"
            class="text-gray-400 bg-transparent hover:bg-gray-200 hover:text-gray-900 rounded-lg text-sm p-1.5 ml-auto inline-flex items-center dark:hover:bg-gray-600 dark:hover:text-white"
            data-modal-hide="defaultModal"
          >
            <svg
              aria-hidden="true"
              class="w-5 h-5"
              fill="currentColor"
              viewBox="0 0 20 20"
              xmlns="http://www.w3.org/2000/svg"
            >
              <path
                fill-rule="evenodd"
                d="M4.293 4.293a1 1 0 011.414 0L10 8.586l4.293-4.293a1 1 0 111.414 1.414L11.414 10l4.293 4.293a1 1 0 01-1.414 1.414L10 11.414l-4.293 4.293a1 1 0 01-1.414-1.414L8.586 10 4.293 5.707a1 1 0 010-1.414z"
                clip-rule="evenodd"
              ></path>
            </svg>
            <span class="sr-only">Close modal</span>
          </button>
        </div>
        <!-- Modal body -->
        <div class="p-6 space-y-6">
          <div class="m-2 p-5 rounded pb-20 pt-10" style="background: #fcfcfc">
            <div>
              <label
                for="title"
                class="block mb-2 text-sm font-medium text-gray-900"
                >ชื่อคอร์ส</label
              >
              <input
                id="title"
                v-model="childData.data.title"
                type="text"
                class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                placeholder="ชื่อคอร์ส"
                required
              />
            </div>

            <div class="grid gap-6 mb-6 md:grid-cols-2 mt-2">
              <div>
                <label
                  for="price"
                  class="block mb-2 text-sm font-medium text-gray-900"
                  >ราคาคอร์ส</label
                >
                <input
                  id="price"
                  v-model="childData.data.price"
                  type="number"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                  placeholder="ราคาคอร์ส"
                  required
                />
              </div>
              <div>
                <label
                  for="received"
                  class="block mb-2 text-sm font-medium text-gray-900"
                  >สิ่งที่ได้รับ</label
                >
                <select
                  id="received"
                  v-model="childData.data.received"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                >
                  <option selected>เลือกสิ่งที่ได้รับ</option>
                  <option value="ใบรับรอง">ใบรับรอง</option>
                  <option value="ประกาศนียบัตร">ประกาศนียบัตร</option>
                  <option value="แบบทดสอบ">แบบทดสอบ</option>
                  <option value="มีไฟล์ให้ดาวน์โหลด">มีไฟล์ให้ดาวน์โหลด</option>
                </select>
              </div>

              <!-- dropdraw -->

              <div>
                <label
                  for="level"
                  class="block mb-2 text-sm font-medium text-gray-900"
                  >ระดับความสามารถ</label
                >
                <select
                  id="level"
                  v-model="childData.data.level"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                >
                  <option selected>เลือกระดับความสามารถ</option>
                  <option value="ระดับเริ่มต้น">ระดับเริ่มต้น</option>
                  <option value="ระดับปานกลาง">ระดับปานกลาง</option>
                  <option value="ระดับสูง">ระดับสูง</option>
                </select>
              </div>

              <div>
                <label
                  for="start_date"
                  class="block mb-2 text-sm font-medium text-gray-900"
                  >เวลาเริ่มคอร์ส</label
                >
                <input
                  id="start_date"
                  v-model="childData.data.start_date"
                  type="datetime-local"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                  required
                />
              </div>
              <div>
                <label
                  for="end_date"
                  class="block mb-2 text-sm font-medium text-gray-900"
                  >เวลาจบคอร์ส</label
                >
                <input
                  id="end_date"
                  v-model="childData.data.end_date"
                  type="datetime-local"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                  required
                />
              </div>
            </div>

            <div>
              <span>รายละเอียดคอร์ส</span>
              <textarea
                id="description"
                v-model="childData.data.description"
                rows="4"
                class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500"
                placeholder="รายละเอียด..."
              ></textarea>
            </div>
          </div>

          <!-- ส่วนสอง -->
          <div class="p-3 flex flex-col justify-between">
            <!-- รูปจำลอง -->
            <div>
              <img :src="childData.data.thumbnail" class="w-full rounded" />
              <div class="w-full rounded" style="background: #b1b1bc">
                <div
                  class="m-auto h-32"
                  style="width: 70%; background: #d9d9d9"
                ></div>
              </div>

              <!-- <label
                class="block mb-2 text-sm font-medium mt-10"
                for="file_input"
                >รูปคอร์ส</label
              > -->
              <input
                id="file_input"
                class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none mt-8"
                type="file"
                @change="handleFileUpload()"
              />
            </div>
          </div>
        </div>
        <!-- Modal footer -->
        <div
          class="flex items-center p-6 space-x-2 border-t border-gray-200 rounded-b dark:border-gray-600"
        >
          <button
            @click="updateData()"
            data-modal-hide="defaultModal"
            type="button"
            class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center dark:bg-blue-600 dark:hover:bg-blue-700 dark:focus:ring-blue-800"
          >
            แก้ไขคอร์ส
          </button>
          <button
            @click="deleteData()"
            data-modal-hide="defaultModal"
            type="button"
            class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-blue-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10 dark:bg-gray-700 dark:text-gray-300 dark:border-gray-500 dark:hover:text-white dark:hover:bg-gray-600 dark:focus:ring-gray-600"
          >
            ลบคอร์ส
          </button>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  name: 'Modalfew',
  props: {
    myprop: {
      type: Object,
      required: true,
    },
  },

  data() {
    return {
      title: null,
      description: null,
      price: null,
      level: null,
      received: null,
      start_date: null,
      end_date: null,
      thumbnail:
        'https://media.discordapp.net/attachments/1067453596351856650/1096913733281927369/no-picture-available-placeholder-thumbnail-icon-illustration-design.png',
    }
  },
  computed: {
    childData: {
      get() {
        const fewza = this.myprop
        fewza.data.start_date = fewza.data.start_date.replace('Z', '')
        fewza.data.end_date = fewza.data.end_date.replace('Z', '')
        return fewza
      },
      set(newValue) {
        this.$emit('input', newValue)
      },
    },
  },
  methods: {
    close() {
      console.log('few')
      this.$emit('updateProp', false)
    },
    updateData() {
      this.$axios
        .put('/course/admin/course', this.childData.data, {
          headers: {
            'Content-Type': 'application/json',
          },
        })
        .then((respones) => {
          console.log(respones)
        })
        .catch((err) => {
          console.log(err)
        })
    },

    deleteData() {
      this.$axios
        .delete(`/course/admin/course/${this.myprop.data.course_id}`, {
          headers: {
            'Content-Type': 'application/json',
          },
        })
        .then((respones) => {
          this.$emit('updateProp', false)
          console.log(respones)
        })
        .catch((err) => {
          console.log(err)
        })
    },
  },
}
</script>

<style>
</style>