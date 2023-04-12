<template>
    <div class="w-screen h-screen flex flex-col justify-between">
      <NavBar></NavBar>
        <div class="flex justify-center items-center align-center">
                <div class="flex flex-col space-y-4 w-[15%]">
                    <h1 class="text-4xl mb-4  ">สมัครสมาชิก ✌️</h1>
                    <div>
                        <p class="text-sm">ชื่อ</p>
                        <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" >
                    </div>
                    <div>
                        <p class="text-sm">นามสกุล</p>
                        <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" >
                    </div>
                    <div>
                        <p class="text-sm">อีเมล</p>
                        <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" >
                    </div>
                    <div class="flex space-x-2">
                        <div>
                            <p class="text-sm">รหัสผ่าน</p>
                            <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="">
                        </div>
                        <div>
                            <p class="text-sm">ยืนยันรหัสผ่าน</p>
                            <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="">
                        </div>
                    </div>
                    <div class="space-y-3">
                      <button type="" class="bg-[#2B26D8] text-white rounded-full py-1 w-full">login</button>
                      <div class="flex justify-between text-sm">
                          <p>เป็นสมัครแล้ว?</p>
                          <p class="text-[#AAAAAA]">คลิกเพื่อเข้าสู่ระบบ</p>
                      </div>
                    </div>
                </div>
        </div>
        <Footer></Footer>
    </div>
</template>
<script>
export default {
    name: 'RegisterView'
}
</script>