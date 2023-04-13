<template>
  <section>
    <div class="absolute z-[-1] w-full h-[510px] flex">
      <img src="../../assets/example_img.png" class="w-full h-auto relative object-cover" alt="" />
    </div>

    <div class="px-72 pt-20 pb-20">
      <div class="mx-12 space-y-10">
        <div class="bg-white px-12 py-5 h-[328px] space-y-5 rounded-[5px]">
          <div class="flex space-x-4 text-white">
            <p class="px-6 py-2 bg-[#FFB7B7] rounded-full text-sm">คณิตศาสตร์</p>
          </div>
          <h1 class="text-[36px]">คณิตศาสตร์ PAT 1 ง่ายๆ</h1>
          <p class="text-[14px] font-light text-gray-01 limit2Line">
            Lorem ipsum dolor sit amet, consectetur adipiscing elit. Nulla tristique
            gravida erat ac accumsan. Orci varius natoque penatibus et magnis dis
            parturient montes, nascetur ridiculus mus. Donec eget venenatis dui, non
            facilisis turpis. lorem
          </p>
          <div class="flex">
            <div class="flex space-x-3">
              <svg
                width="23"
                height="23"
                viewBox="0 0 23 23"
                fill="none"
                xmlns="http://www.w3.org/2000/svg"
              >
                <g clip-path="url(#clip0_173_469)">
                  <path
                    d="M17.9238 17.2587C16.9311 15.5337 15.0668 14.3748 12.9375 14.3748H10.0625C7.9332 14.3748 6.06895 15.5337 5.07617 17.2587C6.65742 19.0197 8.94844 20.1248 11.5 20.1248C14.0516 20.1248 16.3426 19.0152 17.9238 17.2587ZM0 11.4998C0 8.44977 1.2116 5.5247 3.36827 3.36803C5.52494 1.21136 8.45001 -0.000244141 11.5 -0.000244141C14.55 -0.000244141 17.4751 1.21136 19.6317 3.36803C21.7884 5.5247 23 8.44977 23 11.4998C23 14.5497 21.7884 17.4748 19.6317 19.6315C17.4751 21.7882 14.55 22.9998 11.5 22.9998C8.45001 22.9998 5.52494 21.7882 3.36827 19.6315C1.2116 17.4748 0 14.5497 0 11.4998ZM11.5 12.2185C12.3578 12.2185 13.1805 11.8777 13.787 11.2712C14.3936 10.6646 14.7344 9.84194 14.7344 8.98413C14.7344 8.12632 14.3936 7.30365 13.787 6.69708C13.1805 6.09052 12.3578 5.74976 11.5 5.74976C10.6422 5.74976 9.81951 6.09052 9.21295 6.69708C8.60639 7.30365 8.26562 8.12632 8.26562 8.98413C8.26562 9.84194 8.60639 10.6646 9.21295 11.2712C9.81951 11.8777 10.6422 12.2185 11.5 12.2185Z"
                    fill="black"
                  />
                </g>
                <defs>
                  <clipPath id="clip0_173_469">
                    <rect
                      width="23"
                      height="23"
                      fill="white"
                      transform="translate(0 -0.000244141)"
                    />
                  </clipPath>
                </defs>
              </svg>
              <p>2/12</p>
            </div>
            <div class="flex ml-32">
              <p class="border-r-[0.12rem] border-black px-3">ประกาศนียบัตร</p>
              <p class="border-r-[0.12rem] border-black px-3">ระดับกลาง</p>
              <p class="border-black px-3 text-[#467A55]">1200 บาท</p>
            </div>
          </div>
          <div class="flex">
            <RouterLink to="">
              <div class="rounded bg-[#2B26D8] text-white px-12 py-2">ลงคอร์สเรียน</div>
            </RouterLink>
          </div>
        </div>
        <div class="bg-white py-8 border-2 border-black flex justify-around">
            <div class="flex items-center space-x-2">
                <div>
                    <img src="../../assets/icon/level.png" alt="">
                </div>
                <div>
                    <p class="text-sm font-light">ระดับความสามารถ</p>
                    <p class="text-2xl">เริ่มต้น</p>
                </div>
            </div>
            <div class="flex items-center space-x-2">
                <div>
                    <img src="../../assets/icon/certificate.png" alt="">
                </div>
                <div>
                    <p class="text-sm font-light">ระยะเวลา</p>
                    <p class="text-2xl">10 ชั่วโมง</p>
                </div>
            </div>
            <div class="flex items-center space-x-2">
                <div>
                    <img src="../../assets/icon/recieve.png" alt="">
                </div>
                <div>
                    <p class="text-sm font-light">สิ่งที่ได้รับ</p>
                    <p class="text-2xl">ประกาศนียบัตร</p>
                </div>
            </div>
            <div class="flex items-center space-x-2">
                <div>
                    <img src="../../assets/icon/rule.png" alt="">
                </div>
                <div>
                    <p class="text-sm font-light">ข้อกำหนดเบื้องต้น</p>
                    <p class="text-2xl">ไม่มี</p>
                </div>
            </div>
        </div>
      </div>
      <div class="mt-20">
        <div class="flex">
          <div class="basis-[70%]">
            <div class="flex space-x-8 border-b-2 border-black mr-16">
              <div class="text-[#726FE5] text-xl border-b-4 px-2 border-[#2B26D8]">
                <p>เกี่ยวกับคอร์ส</p>
              </div>
              <div class="text-xl">
                <p>ข้อกำหนดเบื้องต้น</p>
              </div>
              <div class="text-xl">
                <p>เอกสารประกอบ</p>
              </div>
            </div>
            <p class="py-4">
              คำอธิบายคอร์สออนไลน์<br />
              เพราะ PAT 1 ยาก เราจึงต้องเตรียมตัวก่อนสอบจริง คะแนน PAT 1 100 คะแนน
              ก็ทำให้คะแนนรวมของเราเลือกคณะได้มากมาย <br />
              แค่เรารู้เนื้อหาที่จะออกสอบ ก็สามารถกำหนดคะแนนตัวเองได้แล้ว
              คอร์สนี้แบ่งเนื้อหาออกเป็น 4 กลุ่ม เรียงตามความน่าจะเก็บ ดังนี้ <br />
              1. ง่าย/ออกเยอะ<br />
              2. ง่าย/ออกน้อย<br />
              3. ยาก/ออกเยอะ<br />
              4. ยาก/ออกน้อย<br />
              <br />
              ประโยชน์ที่ผู้เรียนจะได้รับ<br />
              1. สรุปเนื้อหาคณิตศาสตร์ระดับ ม.4 ม.5 ม.6 ที่ออกข้อสอบ PAT 1<br />
              2. วิเคราะห์ข้อสอบและแนะนำวิธีทำข้อสอบ PAT 1<br />
              3. สอนเทคนิคการทำข้อสอบ PAT 1 เพื่อให้ได้คะแนนสูงสุด<br />
              <br />
              ใครควรเรียนคอร์สออนไลน์นี้<br />
              1. นักเรียนที่กำลังศึกษาอยู่ในระดับชั้น ม.4 ม.5 ม.6<br />
              2. นักเรียนที่เตรียมสอบเข้ามหาวิทยาลัย<br />
              3. นิสิต นักศึกษา ที่ต้องการสอบเข้ามหาวิทยาลัยใหม่<br />
              <br />
              ผู้เรียนต้องมีความรู้อะไรมาก่อน<br />
              ไม่จำเป็นต้องมีความรู้พื้นฐานมาก่อน เพราะคอร์สนี้จะสอนเทคนิคพิชิตคะแนน PAT 1
              อ่อนแค่ไหนก็เรียนได้
            </p>
            <div>
            eafacfascasdqwas
            </div>
          </div>

          <div class="basis-[30%]">
            <p class="text-[#2B26D8] text-xl border-b-2 border-black px-2 pb-1">
                ผู้สอน
            </p>
            <div class="flex py-4">
                <div class="basis-2/6 ">
                    <img src="../../assets/person.png" alt="">
                </div>
                <div class="basis-4/6 pr-2 space-y-1">
                    <p class="">ศาสตราจารย์ ธนกร ศรีวรรณวิทย์</p>
                    <div class="flex items-center space-x-2">
                        <img src="../../assets/icon/star.png" alt="">
                        <p class="text-sm">4.8 คะแนนเฉลี่ย</p>
                    </div>
                    <div class="flex items-center space-x-3">
                        <img src="../../assets/icon/verified.png" class="ml-[0.125rem]" alt="">
                        <p class="text-sm"> Verified</p>
                    </div>
                </div>
            </div>
            <div class="pl-8">
                <ul class="list-disc">
                    <li>ผู้เชี่ยวชาญด้านประดิษฐ์ระเบิดขวด</li>
                    <li>ได้รับดีกรีจากสถาบัน Hogwarts ในด้านเวทมนต์ศาสตร์ 2077</li>
                </ul>
            </div>
          </div>
        </div>
        <div>
            <p class="text-[#2B26D8] text-xl my-8">เนื้อหาของคอร์สนี้</p>
            <table class="border-collapse border border-black flex flex-col">
                <thead class="border-collapse border bg-[#7E82E6] text-white text-lg px-4 py-1">
                    <tr>
                        บทที่ 1: จำนวนจริง
                    </tr>
                </thead>
                <tbody class="px-4 py-2 text-[#717171]">
                    <tr>1.1  จำนวนจริง ตอนที่ 1</tr>
                    <tr>1.2  จำนวนจริง ตอนที่ 2</tr>
                    <tr>1.3  จำนวนไม่จริง</tr>
                    <tr>1.4  จำนวนปลอม</tr>
                </tbody>
                <thead class="border-collapse border bg-[#7E82E6] text-white text-lg px-4 py-1">
                    <tr>
                        บทที่ 2: จำนวนจริง
                    </tr>
                </thead>
                <tbody class="px-4 py-2 text-[#717171]">
                    <tr>2.1  จำนวนจริง ตอนที่ 1</tr>
                    <tr>2.2  จำนวนจริง ตอนที่ 2</tr>
                    <tr>2.3  จำนวนไม่จริง</tr>
                    <tr>2.4  จำนวนปลอม</tr>
                </tbody>
                <thead class="border-collapse border bg-[#7E82E6] text-white text-lg px-4 py-1">
                    <tr>
                        บทที่ 3: จำนวนจริง
                    </tr>
                </thead>
                <tbody class="px-4 py-2 text-[#717171]">
                    <tr>3.1  จำนวนจริง ตอนที่ 1</tr>
                    <tr>3.2  จำนวนจริง ตอนที่ 2</tr>
                    <tr>3.3  จำนวนไม่จริง</tr>
                    <tr>3.4  จำนวนปลอม</tr>
                </tbody>
                <thead class="border-collapse border bg-[#7E82E6] text-white text-lg px-4 py-1">
                    <tr>
                        บทที่ 4: จำนวนจริง
                    </tr>
                </thead>
                <tbody class="px-4 py-2 text-[#717171]">
                    <tr>4.1  จำนวนจริง ตอนที่ 1</tr>
                    <tr>4.2  จำนวนจริง ตอนที่ 2</tr>
                    <tr>4.3  จำนวนไม่จริง</tr>
                    <tr>4.4  จำนวนปลอม</tr>
                </tbody>
                <thead class="border-collapse border bg-[#7E82E6] text-white text-lg px-4 py-1">
                    <tr>
                        บทที่ 5: จำนวนจริง
                    </tr>
                </thead>
                <tbody class="px-4 py-2 text-[#717171]">
                    <tr>5.1  จำนวนจริง ตอนที่ 1</tr>
                    <tr>5.2  จำนวนจริง ตอนที่ 2</tr>
                    <tr>5.3  จำนวนไม่จริง</tr>
                    <tr>5.4  จำนวนปลอม</tr>
                </tbody>
            </table>
        </div>
        <!-- <div class="border-2 border-black p-72 mt-16"></div> -->
      </div>
    </div>
    <div class="py-20 bg-[#FAFAFA] mb-8">
      <p class="flex justify-center text-[48px]">ต้องการอะไรอย่างอื่นอีกไหม?</p>
      <div class="flex gap-x-7 justify-center mt-8">
        <div v-for="(item, index) in 3" :key="index">
          <MainCard />
        </div>
      </div>
    </div>
  </section>
</template>
