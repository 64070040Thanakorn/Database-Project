<template>
  <div>

    <div>
        <p></p>
    </div>

    <form @submit.prevent="submit()">
        <div>
            <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">First name</label>
            <input type="text" id="first_name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5  " required>
        </div>
        <div>
            <label for="first_name" class="block mb-2 text-sm font-medium text-gray-900">First name</label>
            <input type="text" id="first_name" class="bg-gray-50 border border-gray-300 text-gray-900 text-sm rounded-lg focus:ring-blue-500 focus:border-blue-500 block w-full p-2.5"  required>
        </div>
    </form>


  </div>
</template>

<script>
import axios from 'axios';

export default {
    data(){
        return{
            data:''
        }
    },
    methods:{
        submit(){

        }
    },
    created(){
        axios.get()
    }
}
</script>

<style>

</style>