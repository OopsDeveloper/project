<template>
  <div>
    <h1>{{ $translate('en.hi') }}</h1>
    <h1>{{ $translate('ko.hi') }}</h1>
    <button>{{ $translate('en.search') }}</button>
    <button>{{ $translate('ko.search') }}</button>
    <h1>{{ $translate(`${userInfo.lang}.hi`) }}</h1>
    <button>{{ $translate(`${userInfo.lang}.search`) }}</button>

    <!--이런식으로 쓰면 너무 힘듬  -->
    <h1>{{ $translate(`${userInfo.lang}.welcome1`) }} {{userInfo.name}} {{ $translate(`${userInfo.lang}.welcome2`) }}</h1>

    <!-- 이렇게 써야됨   -->
    <h1>{{ $translate(`${userInfo.lang}.welcome`,userInfo) }}</h1>
    <h1>{{ $translate(`${userInfo.lang}.welcome3`,userInfo) }}</h1>
  </div>
</template>
<script>
export default {
  components: {},
  data() {
    return {
      userInfo: {
        name: 'oOpsDev',
        email: 'oopsdev.naver.com',
        lang: 'en'
      }
    }
  },
  setup() {
  },
  created() {
  },
  mounted() {
  },
  unmounted() {
  },
  methods: {}
}
</script>
