<template>
  <div class="w-full h-[80vh] flex flex-col justify-between mt-20">
    <form class="flex justify-center items-center align-center" action="">
      <div class="flex flex-col w-[15%]">
        <h1 class="text-4xl mb-4">สมัครสมาชิก ✌️</h1>

        <form class="space-y-4" @submit.prevent="submit()">
          <div>
            <p class="text-sm">ชื่อ</p>
            <input
              v-model="first_name"
              class="border rounded-md py-1 px-1 w-full"
              type="text"
              required
              name="first_name"
              value=""
            />
          </div>
          <div>
            <p class="text-sm">นามสกุล</p>
            <input
              v-model="last_name"
              class="border rounded-md py-1 px-1 w-full"
              type="text"
              name="last_name"
              required
              value=""
            />
          </div>
          <div>
            <p class="text-sm">อีเมล</p>
            <input
              v-model="email"
              class="border rounded-md py-1 px-1 w-full"
              type="email"
              required
              name="email"
              value=""
            />
          </div>
          <div>
            <p class="text-sm">username</p>
            <input
              v-model="username"
              class="border rounded-md py-1 px-1 w-full"
              type="text"
              required
              name="username"
              value=""
            />
          </div>
          <div class="flex space-x-2">
            <div>
              <p class="text-sm">รหัสผ่าน</p>
              <input
                v-model="password"
                class="border rounded-md py-1 px-1 w-full"
                type="password"
                required
                name="password"
                value=""
              />
            </div>
            <div>
              <p class="text-sm">ยืนยันรหัสผ่าน</p>
              <input
                v-model="checkPassword"
                class="border rounded-md py-1 px-1 w-full"
                type="password"
                required
                name=""
                value=""
              />
            </div>
          </div>

          <div class="flex items-center mb-4">
            <input
            v-model="role"
              id="default-radio-1"
              type="radio"
              value="Professor"
              name="role"
              class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500"
            />
            <label
              for="default-radio-1"
              class="ml-2 text-sm font-medium text-black"
              >Professor</label
            >
          </div>
          <div class="flex items-center">
            <input
            v-model="role"
              id="default-radio-2"
              type="radio"
              value="Student"
              name="role"
              class="w-4 h-4 text-blue-600 bg-gray-100 border-gray-300 focus:ring-blue-500"
              checked
            />
            <label
              for="default-radio-2"
              class="ml-2 text-sm font-medium text-black"
              >Student</label
            >
          </div>
          <div class="space-y-3">
            <button
              type="submit"
              class="bg-[#2B26D8] text-white rounded-full py-1 w-full"
            >
              Register
            </button>
            <div class="flex justify-between text-sm">
              <p>เป็นสมัครแล้ว?</p>
              <p class="text-[#AAAAAA]">คลิกเพื่อเข้าสู่ระบบ</p>
            </div>
          </div>
        </form>
      </div>
    </form>
  </div>
</template>
<script>
export default {
  name: 'RegisterView',
  data() {
    return {
      first_name: '',
      last_name: '',
      email: '',
      username: '',
      password: '',
      checkPassword: '',
      imag: 'https://cdn.myanimelist.net/images/characters/12/450359.jpg',
      role: '',
    }
  },
  methods: {
    submit() {
      console.log(this.role);
      if (this.password === this.checkPassword) {
        this.$axios
        .post('http://localhost:5000/api/user/users', { first_name: this.first_name, last_name: this.last_name, email: this.email, username: this.username, password: this.password, image: this.imag, role: this.role }, {
          headers: {
            'Content-Type': 'application/json',
          },
        })
        .then((respones) => {
          this.$nuxt.$router.push('/auth/login')
          console.log(respones)
        })
        .catch((err) => {
          alert("This email is already exists!")
          console.log(err)
        })
      }
      else {
        alert("Your password must match!")
      }
    },
  },
}
</script>