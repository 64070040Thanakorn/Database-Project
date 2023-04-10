<template>
    <div>

        <!-- ปุ่ม -->
        <button data-modal-target="enrollCourse" data-modal-toggle="enrollCourse" class="block text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" type="button">
            Enroll
        </button>
            
            <!-- modal  -->
            <div id="enrollCourse" tabindex="-1" aria-hidden="true" class="fixed top-0 left-0 right-0 z-50 hidden w-full p-4 overflow-x-hidden overflow-y-auto md:inset-0 h-[calc(100%-1rem)] md:h-full">
                <div class="relative w-full h-full max-w-5xl md:h-auto">
                    
                    <div class="relative rounded-lg shadow p-5" style="background: #7E82E6;">
                        <!-- container -->
                        <div class="w-full h-full rounded grid grid-cols-2">

                            <!-- ส่วนหนึ่ง -->
                            <div class="m-2 rounded pb-20 rounded" style="background: #9799C1;">
                                <img src="https://www.coliseugeek.com.br/wp-content/uploads/2023/01/3e3d2-clickwallpapers-madara-uchiha-img3-scaled.jpg" class="h-52 w-full rounded" >

                                <div class="">
                                    <h1 class="p-2 text-center rounded mx-20 mt-10" style="background: #DEE0FD;border-radius: 20px;">หมวดหมู่คณิตศาตร์</h1>

                                    <div class="px-32 mt-10 text-white text-l">
                                        <h1>ระยะเวลา: 14 กุมภาพันธ์ 2566</h1>
                                        <h1>ถึง: 15 กุมภาพันธ์ 2566</h1>
                                        <h1>ระดับความสามารถ: ง่าย</h1>
                                        <h1>จำนวนผู้เรียน: 10000/14000</h1>
                                        <h1>สถานะ: เปิดคอร์สเรียน</h1>
                                    </div>

                                </div>

                            </div>

                            <!-- ส่วนสอง -->
                            <div class="p-3">
                                
                                <div class="w-full bg-white p-5 rounded overflow-y-scroll" style="height: 90%;">
                                    <p>Lorem ipsum dolor sit amet consectetur adipisicing elit. Deleniti quaerat ea deserunt! Fuga in atque molestiae amet est perspiciatis nobis fugiat nihil quas natus voluptates id recusandae nulla repudiandae, debitis ad ducimus eius aut. Fugit odit sapiente repellendus expedita deserunt aspernatur dignissimos quis totam quae! Maxime deleniti veritatis eum vero corrupti veniam? Illum a sunt praesentium saepe, et provident voluptatibus laudantium aliquid placeat impedit obcaecati non possimus exercitationem. Quia maxime provident a eos voluptates nostrum commodi quos possimus, rem autem perspiciatis quasi non doloremque dignissimos in corporis cupiditate itaque inventore expedita eveniet cum? Quo autem maxime dolor sit dolore eos?</p>
                                </div>

                            </div>

                        </div>

                        
                        <!-- Modal footer -->
                        <div class="flex items-center p-2 space-x-2 rounded-b justify-end">
                            <button data-modal-hide="enrollCourse" type="button" class="text-gray-500 bg-white hover:bg-gray-100 focus:ring-4 focus:outline-none focus:ring-blue-300 rounded-lg border border-gray-200 text-sm font-medium px-5 py-2.5 hover:text-gray-900 focus:z-10">ยกเลิก</button>
                            <button data-modal-hide="enrollCourse" type="button" class="text-white bg-blue-700 hover:bg-blue-800 focus:ring-4 focus:outline-none focus:ring-blue-300 font-medium rounded-lg text-sm px-5 py-2.5 text-center" style="background: #293128;">สร้างคอร์ส</button>
                        </div>

                        
                    </div>
                </div>
            </div>


    </div>
</template>

<script>
export default {

}
</script>

<style>

</style>