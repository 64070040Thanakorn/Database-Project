<template>
  <div>
    <h1 class="my-20 text-center">ManageUser</h1>
    <div class="w-[70%] mx-auto">Tfirst name
                        </th>
                        <th scope="col" class="px-6 py-3">
                            last name
                        </th>
                        <th scope="col" class="px-6 py-3">
                            username
                        </th>
                        <th scope="col" class="px-6 py-3">
                            passowrd
                        </th>
                        <th scope="col" class="px-6 py-3">
                            email
                        </th>
                       
                        <th scope="col" class="px-6 py-3">
                            Delete
                        </th>
                    </tr>
                </thead>
                <tbody>
                    <tr v-for="val,index in data" :key="index" class="bg-white border-b" >
                        <th scope="row" class="px-6 py-4 font-medium text-gray-900 whitespace-nowrap">
                            {{val.id}}
                        </th>
                        <td class="px-6 py-4">
                            {{val.first_name}}
                        </td>
                        <td class="px-6 py-4">
                            {{val.last_name}}
                        </td>
                        <td class="px-6 py-4">
                            {{val.username}}
                        </td>
                        <td class="px-6 py-4">
                            {{val.password}}
                        </td>
                        <td class="px-6 py-4">
                            {{val.email}}
                        </td>
                        <td class="px-6 py-4 text-center">
                            <form @submit="deleteUser(val.id,val.email)">
                            <button type="submit" class="focus:outline-none text-white bg-red-700 hover:bg-red-800 focus:ring-4 focus:ring-red-300 font-medium rounded-lg text-sm px-5 py-2.5 mr-2 mb-2">Delete</button>
                            </form>
                        </td>
                    </tr>
                    
                </tbody>
            </table>
        </div>
    </div>
  </div>
</template>

<script>
import axios from 'axios'
export default {
  name: 'ManageUser',
  data() {
    return {
      data: '',
      emailUser: '',
    }
  },

  methods: {
    deleteUser(id, emails) {
      console.log('aaaa')
      this.emailUser = emails
      axios
        .delete(`http://localhost:5000/api/user/users/${id}`)
        .then((respones) => {
          console.log(respones)
        })
        .catch((err) => {
          console.log(err)
        })
    },
  },
  created() {
    axios
      .get('http://localhost:5000/api/user/users')
      .then((response) => {
        this.data = response.data
      })
      .catch((err) => {
        console.log(err)
      })
  },
}
</script>

<style>
</style>