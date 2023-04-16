<template>
    <div>
        <div class=" bg-[#AFAFFF]">
            <caption class="flex justify-center p-5 font-normal text-center text-5xl mt-8 text-gray-900 bg-white">
                ตารางเรียน
            </caption>
            <div class="relative overflow-x-auto shadow-md sm:rounded-lg mx-24 my-24">
                <FullCalendar :options="calendarOptions" class="bg-white">
                </FullCalendar>
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
    background-color: rgb(216, 233, 253) !important;
}
</style>