<template>
  <v-container mx-2 my-3 pa-0 fluid>
    <v-layout row>
      <v-flex grow mx-2>
        <v-select :items="protocols" label="Protocol" hide-details></v-select>
      </v-flex>
      <v-flex grow mx-2>
        <v-select :items="pdus" label="PDU" hide-details></v-select>
      </v-flex>
      <v-flex shrink ml-2 mr-4>
        <v-dialog v-model="dialog" width="600">
          <template v-slot:activator="{ on }">
            <v-btn
              color="primary" 
              flat 
              small 
              v-on="on"
            >
              select versions
            </v-btn>
          </template>
          <v-card color="white">
            <v-card-title class="primary">
              <span class="headline font-weight-light dense white--text">Select versions</span>
            </v-card-title>
            <v-card-text>asdf</v-card-text>
            <v-card-actions>
              <v-spacer></v-spacer>
              <v-btn color="primary" flat="flat" @click="dialog = false">OK</v-btn>
            </v-card-actions>
          </v-card>
        </v-dialog>

      </v-flex>
    </v-layout>
  </v-container>
</template>

<script>
export default {
  data: () => ({
    selectedProtocol: null,
    selectedPDU: null,
    dialog: null,
    protocols: ["Protocol A", "Protocol B"],
    pdus: ["pdu a", "pdu b"]
  }),
  methods: {}
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
