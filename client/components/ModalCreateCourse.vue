<template>
  <div>
    <!-- ปุ่ม -->
    <button
      data-modal-target="createCourse"
      data-modal-toggle="createCourse"
      class="block text-white bg-[#2B26D8] hover:hover:bg-[#130ec7] focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-3xl text-sm w-28 mx-2 py-2.5 px-5 text-center"
      type="button"
    >
      สร้างคอร์ส
    </button>

    <!-- modal  -->
    <div
      id="createCourse"
      tabindex="-1"
      aria-hidden="true"
      class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full drop-shadow-xl"
    >
      <div class="relative w-full h-full max-w-5xl md:h-auto">
        <div class="relative bg-[#F4F4F4] rounded-lg shadow p-5">
          <!-- container -->
          <div class="w-full h-full rounded grid grid-cols-2">
            <div class="m-2 p-5 rounded pb-20 pt-10" style="background: #fcfcfc">
              <div>
                <label for="title" class="block mb-2 text-sm font-medium text-gray-900"
                  >ชื่อคอร์ส</label
                >
                <input
                  id="title"
                  v-model="title"
                  type="text"
                  class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                  placeholder="ชื่อคอร์ส"
                  required
                />
              </div>

              <div class="grid gap-6 mb-6 md:grid-cols-2 mt-2">
                <div>
                  <label for="price" class="block mb-2 text-sm font-medium text-gray-900"
                    >ราคาคอร์ส</label
                  >
                  <input
                    id="price"
                    v-model="price"
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
                    v-model="received"
                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                  >
                    <option selected>เลือกสิ่งที่ได้รับ</option>
                    <option value="ประกาศนียบัตร">ประกาศนียบัตร</option>
                    <option value="แบบทดสอบ">แบบทดสอบ</option>
                    <option value="มีไฟล์ให้ดาวน์โหลด">มีไฟล์ให้ดาวน์โหลด</option>
                  </select>
                </div>

                <!-- dropdraw -->

                <div>
                  <label for="level" class="block mb-2 text-sm font-medium text-gray-900"
                    >ระดับความสามารถ</label
                  >
                  <select
                    id="level"
                    v-model="level"
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
                    v-model="start_date"
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
                    v-model="end_date"
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
                  v-model="description"
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
                <img :src="imageUrl" class="w-full rounded" />
                <!-- <div class="w-full rounded" style="background: #b1b1bc">
                  <div class="m-auto h-32" style="width: 70%; background: #d9d9d9"></div>
                </div> -->

                <!-- <label
                class="block mb-2 text-sm font-medium mt-10"
                for="file_input"
                >รูปคอร์ส</label
              > -->

                <input
                  id="image-upload"
                  class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none mt-8"
                  type="file"
                  accept="image/*"
                  @change="onFileSelected"
                />
              </div>

              <div class="flex items-center p-2 space-x-2 rounded-b justify-end">
                <button
                  data-modal-hide="createCourse"
                  type="button"
                  class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-blue-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10"
                >
                  ยกเลิก
                </button>
                <button
                  data-modal-hide="createCourse"
                  type="button"
                  class="text-white bg-[#2B26D8] hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
                  @click="createCourse()"
                >
                  สร้างคอร์ส
                </button>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
export default {
  data() {
    return {
      title: null,
      description: null,
      price: null,
      level: null,
      received: null,
      start_date: null,
      end_date: null,
      category: "ไม่มี",
      imageUrl: null,
      file: null,
    };
  },
  methods: {

    onFileSelected(event) {
      const selectedFile = event.target.files[0];
      this.file = selectedFile;
      this.imageUrl = URL.createObjectURL(selectedFile);


      console.log(this.file)

    },
    createCourse() {

      const formData = new FormData()
      formData.append('fileupload', this.file)
      formData.append('title', this.title)
      formData.append('description', this.description)
      formData.append('price', Number(this.price))
      formData.append('level', this.level)
      formData.append('received', this.received)
      formData.append('start_date', this.start_date)
      formData.append('end_date', this.end_date)
      formData.append('category', this.category)
      this.$axios.post('http://localhost:5000/api/course/createcourse', formData, {
        headers: {
          'Content-Type': 'multipart/form-data'
        }
      })
        .then(response => {
          console.log(response.data)
        })
        .catch(error => {
          console.log(error.response.data)
        })

      
    },
  },
};
</script>
