<template>
  <div>
    <!-- ปุ่ม -->
    <button
      data-modal-target="createCourse"
      data-modal-toggle="createCourse"
      class="block text-white bg-[#2B26D8] hover:hover:bg-[#130ec7] focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
      type="button"
    >
      สร้างคอร์ส
    </button>

    <!-- modal  -->
    <div
      id="createCourse"
      tabindex="-1"
      aria-hidden="true"
      class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full"
    >
      <div class="relative w-full h-full max-w-5xl md:h-auto">
        <div
          class="relative bg-[#7E82E6] rounded-lg shadow p-5"
          style="background: #7e82e6"
        >
          <!-- container -->
          <div class="w-full h-full rounded grid grid-cols-2">
            <div class="m-2 p-5 rounded pb-20 pt-10" style="background: #fcfcfc">
              <div>
                <label
                  for="title"
                  class="block mb-2 text-sm font-medium text-gray-900"
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
                  <label
                    for="price"
                    class="block mb-2 text-sm font-medium text-gray-900"
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
                    for="last_name"
                    class="block mb-2 text-sm font-medium text-gray-900"
                    >เวลาเรียน(ชัวโมง)</label
                  >
                  <input
                    type="text"
                    id="last_name"
                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                    placeholder="เวลาเรียน"
                    required
                  />
                </div>

                <!-- dropdraw -->

                <div>
                  <label
                    for="countries"
                    class="block mb-2 text-sm font-medium text-gray-900"
                    >ระดับความสามารถ</label
                  >
                  <select
                    id="countries"
                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                  >
                    <option selected>เลือกระดับความสามารถ</option>
                    <option value="US">เริ่มต้น</option>
                    <option value="CA">ง่าย</option>
                    <option value="FR">ปานกลาง</option>
                    <option value="DE">ยาก</option>
                  </select>
                </div>

                <div>
                  <label
                    for="last_name"
                    class="block mb-2 text-sm font-medium text-gray-900"
                    >ระยะเวลาคอร์ส</label
                  >
                  <input
                    type="date"
                    id="last_name"
                    class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"
                    required
                  />
                </div>
              </div>

              <div>
                <span>รายละเอียดคอร์ส</span>
                <textarea
                  id="message"
                  rows="4"
                  class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500"
                  placeholder="รายละเอียด..."
                ></textarea>
              </div>
            </div>

            <!-- ส่วนสอง -->
            <div class="p-3">
              <!-- รูปจำลอง -->
              <img
                src="https://qph.cf2.quoracdn.net/main-qimg-0963a38f29d15f03dd0be9e9391e2a8f-lq"
                class="w-full rounded"
              />
              <div class="w-full rounded" style="background: #b1b1bc">
                <div class="m-auto h-32" style="width: 70%; background: #d9d9d9"></div>
              </div>

              <label
                class="block mb-2 text-sm font-medium text-gray-100 mt-10"
                for="file_input"
                >รูปคอร์ส</label
              >
              <input
                class="block w-full text-sm text-gray-900 border border-gray-300 rounded-lg cursor-pointer bg-gray-50 dark:text-gray-400 focus:outline-none"
                id="file_input"
                type="file"
              />
            </div>
          </div>

          <!-- Modal footer -->
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
              class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center"
              style="background: #293128"
              @click="createCourse()"
            >
              สร้างคอร์ส
            </button>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>

<script>
import axios from "axios";

export default {
  data() {
    return {
      title: null,
      thumbnail: null,
      price: null,
      description: null,
      create_date: null,
      start_date: null,
      end_date: null,
      status: null,
    };
  },
  methods: {
    createCourse() {
      axios.post("http://localhost:5000/api/course/createCourse");
    },
  },
};
</script>

<style></style>
