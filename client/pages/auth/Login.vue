<template>
    <div class="flex justify-center items-center align-center">
            <div class="flex flex-col space-y-6 w-[15%]">
                <h1 class="text-4xl">Login</h1>
                <div>
                    <p class="text-sm">email</p>
                    <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" placeholder="example@gmail.com">
                </div>
                <div>
                    <p class="text-sm">password</p>
                    <input class="border rounded-md py-1 px-1 w-full" type="" name="" value="" placeholder="includes 0-9,  abc,  !@$">
                    <p class="text-sm">forget password?</p>
                </div>
                <button type="" class="bg-[#2B26D8] text-white rounded-full py-1">login</button>
                <div class="flex justify-between text-sm">
                    <p>not member?</p>
                    <p class="text-[#AAAAAA]">click to register</p>
                </div>
            </div>
    </div>
</template>
<script>
export default {
    name: 'LoginView'
}
</script>