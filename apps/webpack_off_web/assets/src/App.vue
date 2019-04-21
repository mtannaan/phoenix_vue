<template>
  <v-app>
    <v-navigation-drawer v-model="drawer" fixed app>
      <v-list dense>
        <v-list-tile @click="greet">
          <v-list-tile-action>
            <v-icon>home</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>Home</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
        <v-list-tile @click="greet">
          <v-list-tile-action>
            <v-icon>contact_mail</v-icon>
          </v-list-tile-action>
          <v-list-tile-content>
            <v-list-tile-title>Contact</v-list-tile-title>
          </v-list-tile-content>
        </v-list-tile>
      </v-list>
    </v-navigation-drawer>
    <v-toolbar color="primary" dark fixed app dense flat>
      <v-toolbar-side-icon @click.stop="drawer = !drawer"></v-toolbar-side-icon>
      <v-toolbar-title class="font-weight-light text-uppercase">Application</v-toolbar-title>
    </v-toolbar>
    <v-content>
      <pdu-selector/>
      <v-container fluid fill-height ma-0 pa-0>
        <asn-text-box/>
        <asn-text-box/>
      </v-container>
    </v-content>
    <v-footer color="primary" app>
      <span class="white--text">&copy; 2017</span>
    </v-footer>
  </v-app>
</template>

<script>
import AsnTextBox from "./components/AsnTextBox";
import PduSelector from "./components/PduSelector";

export default {
  components: {
    AsnTextBox,
    PduSelector
  },
  data: () => ({
    drawer: null
  }),
  methods: {
    greet: event => alert(event)
  },
  props: {
    source: String
  }
};
</script>
