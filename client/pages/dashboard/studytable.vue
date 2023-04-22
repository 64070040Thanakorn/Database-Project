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
            <NuxtLink v-if="$auth.user.role === 'Student'" to="/dashboard/course">
              <li class="px-4 py-2 rounded">คอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Professor'" to="/dashboard/managecourse">
              <li class="px-4 py-2 rounded">จัดการคอร์สเรียน</li>
            </NuxtLink>
            <NuxtLink v-if="$auth.user.role === 'Student'" to="/dashboard/studytable">
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
                    <FullCalendar :options="calendarOptions" class="bg-white" />
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
    async asyncData({$axios}){
      const items = await $axios.post("http://localhost:5000/api/course/getCourseEnroll");
    return { courses: items.data }
    },
    data() {
        return {
            calendarOptions: {
                plugins: [dayGridPlugin, interactionPlugin],
                initialView: 'dayGridMonth',
                events: [],
                // events: [
                //     { title: 'PAT1', start: '2023-04-10', end: '2023-04-15' },
                // ],
                locale: 'th',
                buttonText: {
                    today: 'กลับไปที่วันนี้'
                }
            },
        }
    },
    mounted(){
      this.courses.forEach(index => {
        const course = {
          title: index.course.title,
          start: index.course.start_date.split('T')[0],
          end: index.course.end_date.split('T')[0]
        }

        this.calendarOptions.events.push(course)
      });
    }
}
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