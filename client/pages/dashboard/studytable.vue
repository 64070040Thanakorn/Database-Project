<template>
  <div class="flex justify-center">
    <div class="flex flex-col my-10 mx-20 w-[90%]">
      <h1 class="text-4xl font-bold">Dashboard</h1>
      <div class="h-[2px] w-full bg-[#F6F6F6] rounded my-7"></div>
      <div class="flex">
        <div class="mr-20 w-[10%]">
          <ul>
            <NuxtLink to="/dashboard/username">
              <li class="px-4 py-2 rounded">รายละเอียดของฉัน</li>
            </NuxtLink>
            <NuxtLink to="/dashboard/course">
              <li class="px-4 py-2 rounded">คอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink to="/dashboard/managecourse">
              <li class="px-4 py-2 rounded">จัดการคอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink to="/dashboard/studytable">
              <li class="bg-gray-100 font-bold px-4 py-2 rounded">ตารางเรียน</li>
            </NuxtLink>
          </ul>
        </div>
        <div class="w-[90%]">
          <div>
              <div class=" bg-[#AFAFFF]">
                  <caption class="flex p-5 font-normal text-center text-4xl text-gray-900 bg-white">
                      📅 ตารางเรียนของฉัน
                  </caption>
                  <div>
                    <FullCalendar :options="calendarOptions" class="bg-white">
                      
                    </FullCalendar>
                  </div>
              </div>
          </div>
        </div>
      </div>
    </div>
  </div>
</template>
  
<script>
import dayGridPlugin from '@fullcalendar/daygrid';
import interactionPlugin from '@fullcalendar/interaction';
import FullCalendar from '@fullcalendar/vue';

export default {
    name: 'StudyTable',
    components: {
        FullCalendar,
    },
    data() {
        return {
            calendarOptions: {
                plugins: [dayGridPlugin, interactionPlugin],
                initialView: 'dayGridMonth',
                events: [
                    { title: 'PAT1', start: '2023-04-10', end: '2023-04-15' },
                    { title: 'PAT2', date: '2023-04-02' }
                ],
                locale: 'th',
                buttonText: {
                    today: 'กลับไปที่วันนี้'
                }
            }
        }
    },
}
// ไปขี้เด้อ
</script>

<style>
.fc .fc-header-toolbar {
    display: flex;
    padding: 2.5% 3%;
}

.fc-day-today {
    background-color: rgb(232, 232, 232) !important;
}
</style>