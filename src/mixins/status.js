export default {
  created() {},
  mounted() {
    // 현재 시간/분/초, 사용자 아이디, 현재 라우트 패스를 서버 데이터베이스에 저장
    console.log(this.$route.path)
  },
  unmounted() {
    // 현재 시간/분/초, 사용자 아이디, 현재 라우트 패스를 서버 데이터베이스에 저장
    // 사용자의 형태 분석(로그인해서 몇분 몇초 머물러있는지 기억 가능)용도로 가능
    console.log(this.$route.path)
  },
  methods: {}
}
