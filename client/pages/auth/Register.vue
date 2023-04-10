<template>
    <div>
        <div class="flex justify-center items-center align-center border">
                <div class="flex flex-col space-y-6 w-[15%]">
                    <h1 class="text-4xl">Register</h1>
                    <div>
                        <p class="text-sm">first name</p>
                        <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" >
                    </div>
                    <div>
                        <p class="text-sm">last name</p>
                        <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" >
                    </div>
                    <div>
                        <p class="text-sm">email</p>
                        <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" >
                    </div>
                    <div class="flex space-x-2">
                        <div>
                            <p class="text-sm">password</p>
                            <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="">
                        </div>
                        <div>
                            <p class="text-sm">confirm password</p>
                            <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="">
                        </div>
                    </div>
                    <button type="" class="bg-[#2B26D8] text-white rounded-full py-1">login</button>
                    <div class="flex justify-between text-sm">
                        <p>not member?</p>
                        <p class="text-[#AAAAAA]">click to register</p>
                    </div>
                </div>
        </div>
    </div>
</template>
<script>
export default {
    name: 'RegisterView'
}
</script>