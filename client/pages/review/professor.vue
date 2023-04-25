<template>
    <div>
        <div class="mx-auto pb-20" style="width: 75%;">
            <div>
                <div class="text-xl mt-5">
                    <h1>ชื่อผู้สอน: &nbsp;&nbsp;{{professorName}}</h1>
                </div>


                <div class="relative overflow-x-auto rounded mt-16">
                    <table class="w-full text-sm text-left text-gray-500 rounded">
                        <thead class="text-xs text-white uppercase bg-gray-50 rounded" style="background: #2B26D8;">
                            <tr>
                                <th colspan="5" rowspan="2" class="px-6 py-3 text-center text-xl">
                                   รายการ {{ content01 }}
                                </th>
                                <th colspan="5" class="px-6 py-3 border border-white text-center text-xl">
                                    ระดับความคิดเห็น
                                </th>
                            </tr>
                            <tr>
                                <th colspan="1" class="px-6 py-3 border border-white">
                                   1
                                </th>
                                <th colspan="1" class="px-6 py-3 border border-white">
                                    2
                                </th>
                                <th colspan="1" class="px-6 py-3 border border-white">
                                    3
                                </th>
                                <th colspan="1" class="px-6 py-3 border border-white">
                                    4
                                </th>
                                <th colspan="1" class="px-6 py-3 border border-white">
                                    5
                                </th>
                            </tr>
                        </thead>
                        <tbody>

                            <!-- ด้านเนื้อหา -->
                            <tr class="border-b text-white" style="background: #726FE5;">

                                <th colspan="10" class="px-6 py-4 font-medium text-white whitespace-nowrap">
                                    ด้านเนื้อหา
                                </th>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>คู่มือในการเรียนอ่านเข้าใจง่ายและสามารถนำไปใช้ได้จริง</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="content01" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>เนื้อหาวิชามีความสอดคล้องกับวัตถุประสงค์</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="content02" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>เนื้อหาวิชามีความน่าสนใจ</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="content03" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>ได้รับความรู้เพิ่มหลังจากการเรียน</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="content04" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <!-- ทักษะผู้สอน -->
                            <tr class="border-b" style="background: #726FE5;">

                                <th colspan="10" class="px-6 py-4 font-medium text-white whitespace-nowrap">
                                    ด้านทักษะในการสอนของผู้สอน
                                </th>

                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>ผู้สอนมีความตั้งใจสอน</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="professor01" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>มีการใช้สื่อและอุปกรณ์การสอนเหมาะสมกับเนื้อหาวิชา</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="professor02" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>การบรรยายใช้เสียงชัดเจน ถูกต้องและใช้ภาษาที่เหมาะสมเข้าใจง่าย</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="professor03" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>บุคลิกภาพและการแต่งกายของผู้สอน</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="professor04" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>มีวิธีการสอนที่ทำให้นักเรียนเข้าใจบทเรียนได้ง่าย</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="professor05" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>มีการสรุปและวิเคราะห์ผลให้นักศึกษาเกิดการเรียนรู้มากขึ้น</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="professor06" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>มีการแนะนำหนังสือและแหล่งค้นคว้าเพิ่มเติมนอกเหนือจากตำรา หรือเอกสารประกอบการสอนที่ใช้อยู่</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="professor07" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <!-- งานที่ได้รับมอบหมายและการวัดผล -->
                            <tr class="border-b" style="background: #726FE5;">

                                <th colspan="10" class="px-6 py-4 font-medium text-white whitespace-nowrap">
                                    งานที่ได้รับมอบหมายและการวัดผล
                                </th>

                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>มีการกระตุ้นให้นักเรียนค้นคว้าด้วยตนเองพร้อมแนวทางและแหล่งค้นคว้า</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="homework01" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>มีการกระตุ้นให้เกิดกระบวนการคิด การตั้งปัญหา และการวิเคราะห์</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="homework02" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>

                            <tr class="bg-white border-b-4" style="background: #F5F4F8;">
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <p>การวัดผลครอบคลุมเนื้อหาที่เรียน</p>
                                </td>
                                <td colspan="5" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                                    <input id="steps-range"  v-model="homework03" type="range" min="1" max="5" value="1" step="1" class="w-full h-2 bg-gray-200 rounded-lg appearance-none cursor-pointe">
                                </td>
                            </tr>


                        </tbody>
                    </table>
                </div>

                <!-- <div class="mt-5">
                    <textarea id="message" rows="4" class="block p-2.5 w-full text-sm text-gray-900 bg-gray-50 rounded-lg border border-gray-300 focus:ring-blue-500 focus:border-blue-500" placeholder="ข้อเสนอแนะ..."></textarea>
                </div> -->

                <div class="mt-5 flex justify-end">
                    <button type="button" class="text-white bg-gray-800 hover:bg-gray-900 focus:outline-none focus:ring-4 focus:ring-gray-300 font-medium rounded-lg text-sm px-10 py-2.5 mr-2 mb-2" @click="submit()">Submit</button>
                </div>
                
            </div>
        </div>

    </div>
</template>

<script>
export default {
  data(){
    return{
      courseName: "",
      professorName: "",
      data: null,
      course_rating: 0,
      content01: 1,
      content02: 1,
      content03: 1,
      content04: 1,
      professor01: 1,
      professor02: 1,
      professor03: 1,
      professor04: 1,
      professor05: 1,
      professor06: 1,
      professor07: 1,
      homework01: 1,
      homework02: 1,
      homework03: 1,
    }
  },
  mounted(){
    this.data = this.storage()
  },
  methods: {
    submit() {
      const arr = [this.content01, this.content02, this.content03, this.content04, this.professor01, this.professor02, this.professor03, this.professor04, this.professor05, this.professor06, this.professor07, this.homework01, this.homework02, this.homework03];
      const intArr = [];
      for (let i = 0; i < arr.length; i++) {
        intArr.push(parseInt(arr[i]));
      }
      const total = intArr.reduce((sum, index) => sum + index, 0)
      const count = intArr.length
      const x = Math.round((total / count) * 10) / 10
      this.$axios.post("http://localhost:5000/api/user/professorRating", {
        professor_id: this.data.course_id,
        professor_rating: x
      })
      // .then(this.$nuxt.$router.push("/"))
    },
    storage(){
      const data = JSON.parse(localStorage.getItem('eiei'))
      console.log(data);
      if(typeof data === "object"){
        this.courseName = data.course_name
        this.professorName = data.professor_name
      } else{
        this.professorName = data.professor_name
      }
      return data
    }
  },
}
</script>

<style>

</style>