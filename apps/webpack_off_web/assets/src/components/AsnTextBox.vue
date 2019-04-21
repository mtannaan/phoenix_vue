<template>
  <v-container fluid fill-height mx-2 my-0 pa-0>
    <v-layout column>
      <v-toolbar class="asn-text-box-title" flat dense color="transparent">
        <v-toolbar-title class="headline font-weight-light">tool bar title</v-toolbar-title>
        <v-spacer></v-spacer>
        <v-btn flat icon color="primary" @click="copy">
          <v-icon>file_copy</v-icon>
        </v-btn>
        <v-btn flat icon color="primary" @click="clear">
          <v-icon>close</v-icon>
        </v-btn>
      </v-toolbar>
      <textarea class="asn-text-area" v-model="textBoxContent"></textarea>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    textBoxContent: "mmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmmm"
  }),
  methods: {
    clear: function() {
      this.textBoxContent = "";
    },
    copy: function() {
      alert("not implemented yet");
    }
  }
};
</script>

<style>
.asn-text-box-title > .v-toolbar__content {
  padding: 0 8px;
}
.asn-text-area {
  background-color: #eeeeee;
  height: 100%;
  resize: none;
  padding: 12px;
  font-family: "Courier New", Courier, monospace;
  font-size: 10pt;
  line-height: 12pt;
}
</style>
