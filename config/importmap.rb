# Pin npm packages by running ./bin/importmap

pin "application"
pin "stimulus" # @3.2.2
pin "@rails/actioncable", to: "actioncable.esm.js"
pin_all_from "app/javascript/channels", under: "channels"
