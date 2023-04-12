<template>
  <div>
    <div class="bg-[#F5F4F8] rounded-br-[500px] py-[6rem]">
      <div class="container mx-auto px-[3rem]">
        <div class="grid grid-cols-12 gap-4">
          <div class="col-span-8">
            <p class="font-medium text-[20px]">
              คอร์สเรียนพิเศษออนไลน์ที่ดีที่สุด
            </p>
            <p class="font-semibold text-[42px] mt-3">เก่งขึ้นได้ทุกที่</p>
            <p class="font-semibold text-[#2B26D8] text-[42px] mb-2">
              ดีขึ้นได้ทุกวัน
            </p>
            <p class="font-semibold mt-7 w-7/12 text-[18px]">
              แพลตฟอร์มเรียนพิเศษออนไลน์ครบวงจร ติวเข้ม เตรียมสอบ ประเมินผล
              แนะแนว เพื่อนักเรียนทุกระดับชั้น
            </p>

            <button
              class="bg-[#2B26D8] font-medium text-white rounded-lg px-4 py-2 mt-9 shadowfew"
            >
              เริ่มต้นใช้งาน
            </button>
          </div>
          <div class="col-span-4">
            <img
              src="https://media.discordapp.net/attachments/1067453596351856650/1095643579608748062/image.png"
              class="h-[508px] w-[372px] absolute"
            />
          </div>
        </div>
      </div>
    </div>

    <div class="container mx-auto mt-16 px-[9rem]">
      <p class="text-center font-semibold text-[28px]">ทำไมต้องเรียนกับเรา ?</p>

      <div class="grid grid-cols-12 mt-9 gap-4">
        <div class="col-span-5">
          <img
            src="https://media.discordapp.net/attachments/1067453596351856650/1095649190157226054/image.png"
            alt=""
          />
        </div>

        <div class="col-span-7">
          <div class="font-semibold py-16 ml-4">
            <p class="text-[25px]">
              <span class="text-[#2B26D8]">On</span>Demand คอร์สติวเข้ม
              เรียนพิเศษออนไลน์
            </p>
            <p class="mt-2 text-[18px] text-[#7C7C7C] ml-5 w-8/12">
              เพราะเรามีอาจารย์และเทคนิคการสอนที่เฉพาะตัวไม่ซ้ำใคร ในทุกรายวิชา
              ทำให้การเรียนไม่น่าเบื่อ และยากอีกต่อไป
              การันตีเด็กสอบติดทุกสนามสอบ
            </p>
          </div>
        </div>
      </div>
    </div>

    <div class="container mx-auto mt-[8rem] mb-16 px-[5rem]">
      <div class="bg-[#4C47DE] py-[5rem] mb-4 rounded-[100px]">
        <p class="text-center font-bold text-[28px] text-white">
          วิชาสอนที่แนะนำ
        </p>

        <div class="grid grid-cols-12 gap-4 px-14 mt-[5rem]">
          <div
            v-for="(item, i) in subjectrecommend"
            :key="i"
            class="col-span-3"
          >
            <div class="text-center mx-auto">
              <img :src="item.link" alt="" class="h-[80px] w-[80px] mx-auto" />

              <p class="text-white text-[23px] mt-9">
                วิชา {{ item.name }}
                <br />
                <span class="text-[16px] w-8/12 text-[#D6D6D6]">
                  {{ item.detail }}
                </span>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>

    <div class="container mx-auto mt-[8rem] mb-16 px-[5rem]">
      <div class="">
        <p class="text-center font-bold text-[28px] text-black">
          จัดตารางเรียนออนไลน์ ยังไงดีเอ่ย ?
        </p>

        <div class="grid grid-cols-12 gap-16 px-14 mt-[5rem]">
          <div
            v-for="(item, i) in timetable"
            :key="i"
            class="col-span-4 px-[2rem]  "
          >
            <div class="text-center mx-auto bg-white px-[4rem] rounded-2xl shadow-md py-[5rem]">
              <img :src="item.link" alt="" class="h-[100px] w-[100px] mx-auto" />

              <p class="text-[#000000] font-semibold text-[23px] mt-9 ">
                {{ item.name }}
                <br />
                <span class="text-[16px]  font-semibold text-[#453F3F]">
                  {{ item.detail }}
                </span>
              </p>
            </div>
          </div>
        </div>
      </div>
    </div>



    <img src="https://media.discordapp.net/attachments/1067453596351856650/1095656295408877640/image.png"  class="mx-auto h-[45px] mb-16 mt-[8rem] w-[337px] " alt="">
  </div>
</template>

<script>
export default {
  name: 'IndexPage',
  data() {
    return {
      timetable: [
        {
          name: 'เลือกเวลาเรียนได้',
          detail: 'จัดตารางเวลาเรียนในทุกสัปดาห์ได้ตามต้องการ',
          link: 'https://media.discordapp.net/attachments/1067453596351856650/1095656015086759976/image.png',
        },

        {
          name: 'มีชีทให้ทุกวิชา',
          detail: 'มีชีท / เอกสารการเรียนเตรียมพร้อมให้ทุกวิชา',
          link: 'https://media.discordapp.net/attachments/1067453596351856650/1095656179067277363/image.png',
        },

        {
          name: 'หาติวเตอร์ที่ถูกใจ',
          detail: 'สามารถเลือกติวเตอร์ที่ถูกใจหรือพูดคุยได้ด้วยตัวเอง',
          link: 'https://media.discordapp.net/attachments/1067453596351856650/1095656208758751292/image.png',
        },
      ],
      subjectrecommend: [
        {
          name: 'ฟิสิกส์',
          detail:
            'เทคนิค SUPER MAP เปลี่ยนโจทย์เป็นภาพ เข้าใจไม่ใช่จำ แก้โจทย์ได้ทุกรูปแบบ',
          link: 'https://media.discordapp.net/attachments/1067453596351856650/1095653060904239114/image.png',
        },

        {
          name: 'คณิตศาสตร์',
          detail:
            'เทคนิค A Point เทคนิคทำให้เลขเข้าใจง่าย พลิกแพลงได้ทุกแนวโจทย์',
          link: 'https://media.discordapp.net/attachments/1067453596351856650/1095653087164772412/image.png',
        },

        {
          name: 'ภาษาอังกฤษ',
          detail:
            'เนื้อหาแน่นกับอาจารย์ English ตัว Tops ช่วยน้องพิชิตทุกสนามสอบ',
          link: 'https://media.discordapp.net/attachments/1067453596351856650/1095653100846596166/image.png',
        },

        {
          name: 'เคมี',
          detail:
            'เทคนิค K TIPS จับหลักความเข้าใจ เห็นภาพ เชื่อมโยงความจำ ประมวลความคิด ทำโจทย์ได้',
          link: 'https://media.discordapp.net/attachments/1067453596351856650/1095653131636965376/image.png',
        },
      ],
    }
  },
}
</script>
