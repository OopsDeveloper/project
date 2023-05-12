<template>
  <h3>{{ title }}</h3>
</template>
<script>
export default {
  components: {},
  /*
    props에 정의되어 있는 변수들은 부모로부터 온다.
    부모 컴포넌트에서 자식 컴포넌트로 데이터를 전달해서 쓰는 것
    부모 컴포넌트가 자식 컴포넌트를 삽입해서 쓸 때 속성으로 정의한 값이 props에 들어간다.
  */
  props: {
    title: {
      type: String,
      default: '페이지 제목'
    }
  },
  data() {
    return {
      sampleData: ''
    }
  },
  setup() {},
  created() {},
  mounted() {},
  unmounted() {},
  methods: {}
}
</script>
