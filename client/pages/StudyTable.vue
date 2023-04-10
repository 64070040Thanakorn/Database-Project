<template>
    <div class=" bg-[#AFAFFF]">
        <caption class="flex justify-center p-5 font-normal text-center text-5xl mt-8 text-gray-900 bg-white">
            ตารางเรียน
        </caption>
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg mx-24 my-24">
            <FullCalendar :options="calendarOptions" class="bg-white">
                <template v-slot:eventContent='arg'>
                    <b>{{ arg.event.title }}</b>
                </template>
            </FullCalendar>
        </div>
        <Footer></Footer>
    </div>
</template>
  
<script>
import 'flowbite';
import FullCalendar from '@fullcalendar/vue'
import dayGridPlugin from '@fullcalendar/daygrid'
import interactionPlugin from '@fullcalendar/interaction'
import bootstrap5Plugin from '@fullcalendar/bootstrap5';

import 'bootstrap/dist/css/bootstrap.css';
import 'bootstrap-icons/font/bootstrap-icons.css'; // needs additional webpack config!


export default {
    components: {
        FullCalendar
    },
    name: 'StudyTable',
    data() {
        return {
            calendarOptions: {
                plugins: [dayGridPlugin, interactionPlugin, bootstrap5Plugin],
                initialView: 'dayGridMonth',
                events: [
                    { title: 'event 1', date: '2023-04-10' },
                    { title: 'event 2', date: '2023-04-02' }
                ],
                themeSystem: 'bootstrap5',
                locale: 'th',
                buttonText: {
                    today: 'กลับไปที่วันนี้'
                }
            }
        }
    },
}
</script>

<style>
.fc .fc-header-toolbar {
    display: flex;
    padding: 2.5% 3%;
}

.fc-day-today {
    background-color: rgb(216, 233, 253) !important;
}
</style>