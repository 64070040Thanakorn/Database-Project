<template>
 <div>
    <h1 class="my-20 text-center">ManageUser</h1>

    <div
      class="relative overflow-x-auto shadow-md sm:rounded-lg w-[70%] mx-auto"
    >
      <table class="w-full text-sm text-left text-gray-500">
        <thead class="text-xs text-gray-700 uppercase bg-gray-50">
          <tr class="text-center">
            <th scope="col" class="px-6 py-3">first name</th>
            <th scope="col" class="px-6 py-3">last name</th>
            <th scope="col" class="px-6 py-3">username</th>
            <th scope="col" class="px-6 py-3">email</th>
            <th scope="col" class="px-6 py-3">Action</th>
          </tr>
        </thead>
        <tbody>
          <tr class="text-center" v-for="(val, index) in data" :key="index">
            <th
              scope="row"
              class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap"
            >
              {{ val.first_name }}
            </th>
            <td class="px-6 py-4">
              {{ val.last_name }}
            </td>
            <td class="px-6 py-4">
              {{ val.username }}
            </td>
            <td class="px-6 py-4">
              {{ val.email }}
            </td>
            <td class="px-6 py-4">
              <button
                @click="deleteUser(val.id, val.email)"
                type="submit"
                class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2"
              >
                Delete
              </button>
            </td>
          </tr>
        </tbody>
      </table>
    </div>
  </div>
</template>
  
  <script>
import axios from 'axios'
export default {
  name: 'ManageUser',

  async asyncData({ $auth, $axios }) {
    try {
      await $auth.fetchUser()
      const result = await $axios.get('http://localhost:5000/api/user/users')
      return { data: result.data }
    } catch (error) {}
  },
  data() {
    return {
      data: '',
      emailUser: '',
    }
  },
  methods: {
    async fetchData() {
      try {
        const result = await axios.get('http://localhost:5000/api/user/users')
        this.data = result.data
      } catch (error) {}
    },

    async deleteUser(id, emails) {
      this.emailUser = emails
      await axios.delete(`http://localhost:5000/api/user/users/${id}`)
      await this.fetchData()
    },
  },
  //   created() {
  //     axios
  //       .get('http://localhost:5000/api/user/users')
  //       .then((response) => {
  //         this.data = response.data
  //       })
  //       .catch((err) => {
  //         console.log(err)
  //       })
  //   },
}
</script>
  
  <style>
</style>