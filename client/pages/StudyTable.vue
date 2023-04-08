<template>
    <div class=" bg-[#AFAFFF]">
        <caption class="flex justify-center p-5 font-normal text-center text-5xl mt-8 text-gray-900 bg-white">
            ตารางเรียน
        </caption>
        <div class="relative overflow-x-auto shadow-md sm:rounded-lg mx-24 my-24 h-96">
            <table class="w-full text-sm text-left text-gray-500 h-full">
                <thead class="text-xs text-center text-gray-700 uppercase h-12 bg-gray-50">
                    <tr>
                        <th scope="col" class="px-6 py-3">
                            SUN
                        </th>
                        <th scope="col" class="px-6 py-3">
                            MON
                        </th>
                        <th scope="col" class="px-6 py-3">
                            TUE
                        </th>
                        <th scope="col" class="px-6 py-3">
                            WED
                        </th>
                        <th scope="col" class="px-6 py-3">
                            THU
                        </th>
                        <th scope="col" class="px-6 py-3">
                            FRI
                        </th>
                        <th scope="col" class="px-6 py-3">
                            SAT
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr class="bg-white border-b text-center dark:bg-gray-800 dark:border-gray-700">

                        <td class="px-6 py-4">
                            Silver
                        </td>
                        <td class="px-6 py-4">
                            Silver
                        </td>
                        <td class="px-6 py-4">
                            Laptop
                        </td>
                        <td class="px-6 py-4">
                            $2999
                        </td>
                        <td class="px-6 py-4">
                            $2999
                        </td>
                        <td class="px-6 py-4">
                            $2999
                        </td>
                        <td class="px-6 py-4">
                            $2999
                        </td>
                    </tr>
                    <tr class="bg-white border-b text-center dark:bg-gray-800 dark:border-gray-700">
                        <td class="px-6 py-4">
                            White
                        </td>
                        <td class="px-6 py-4">
                            White
                        </td>
                        <td class="px-6 py-4">
                            Laptop PC
                        </td>
                        <td class="px-6 py-4">
                            $1999
                        </td>
                        <td class="px-6 py-4">
                            $1999
                        </td>
                        <td class="px-6 py-4">
                            $1999
                        </td>
                        <td class="px-6 py-4">
                            $1999
                        </td>
                    </tr>
                    <tr class="bg-white border-b text-center dark:bg-gray-800">
                        <td class="px-6 py-4">
                            Black
                        </td>
                        <td class="px-6 py-4">
                            Black
                        </td>
                        <td class="px-6 py-4">
                            Accessories
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                    </tr>
                    <tr class="bg-white border-b text-center dark:bg-gray-800">
                        <td class="px-6 py-4">
                            Black
                        </td>
                        <td class="px-6 py-4">
                            Black
                        </td>
                        <td class="px-6 py-4">
                            Accessories
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                    </tr>
                    <tr class="bg-white border-b text-center dark:bg-gray-800">
                        <td class="px-6 py-4">
                            Black
                        </td>
                        <td class="px-6 py-4">
                            Black
                        </td>
                        <td class="px-6 py-4">
                            Accessories
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                        <td class="px-6 py-4">
                            $99
                        </td>
                    </tr>
                </tbody>
            </table>
        </div>
        <Footer></Footer>
    </div>
</template>
  
<script>
import 'flowbite';
export default {
    name: 'StudyTable',
}
</script>
  