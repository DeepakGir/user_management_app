    package net.javaguides.usermanagement.model;

    public class User {
        private int id;
        private String name;
        private String email;
        private String country;
        private int sr ;

        // Constructor with ID (used for updates)
        public User(int id, String name, String email, String country , int sr) {
            this.id = id;
            this.name = name;
            this.email = email;
            this.country = country;
            this.sr = sr;
        }

        // Constructor without ID (used for inserts)
        public User(String name, String email, String country) {
            this.name = name;
            this.email = email;
            this.country = country;
        }

        // Getters and Setters
        public int getId() {
            return id;
        }
        public int getSr(){
            return sr;
        }


        public void setId(int id) {
            this.id = id;
        }

        public String getName() {
            return name;
        }

        public void setName(String name) {
            this.name = name;
        }

        public String getEmail() {
            return email;
        }

        public void setEmail(String email) {
            this.email = email;
        }

        public String getCountry() {
            return country;
        }

        public void setCountry(String country) {
            this.country = country;
        }
    }
