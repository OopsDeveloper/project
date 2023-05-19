<template>
  <div></div>
</template>
<script>
import Formatter from '@/mixins/formatter'
import Axios from '@/mixins/axios'
export default {
  components: {},
  mixins: [Formatter, Axios],
  data() {
    return {
      sampleData: ''
    }
  },
  setup() {},
  created() {
    console.log('MixinView의 created')
  },
  mounted() {
    console.log('MixinView의 mounted')
    console.log(this.$convertDateFormat('20230526', 'YYYY-MM-DD'))
    console.log(this.$convertDateFormat('20230526', 'MM.DD.YYYY'))
  },
  unmounted() {},
  methods: {}
}
</script>
