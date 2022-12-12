variable "ALL_COMPONENTS" {
    default = {
        mongodb = {
            app_version ="null"
        },
        mysql = {
            app_version ="null"
        },
        redis = {
            app_version ="null"
        },
        rabbitmq = {
            app_version ="null"
        },
        catalogue = {
            app_version ="0.0.1"
        },

        cart = {
            app_version ="0.0.1"
        },

        payment = {
            app_version ="0.0.1"
        },

        user = {
            app_version ="0.0.1"
        },

        shipping = {
            app_version ="0.0.1"
        },

        frotnend = {
            app_version ="0.0.1"
        }

    }
  
}