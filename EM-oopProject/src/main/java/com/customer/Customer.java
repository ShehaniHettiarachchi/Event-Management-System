package com.customer;

public class Customer {
	
			//attributes
			private int cusid;
			private String cusname;
			private String password;
			private String email;
			private String phone;
			private String nic;
			
			//overloaded constructor
			public Customer(int cusid, String cusname, String password, String email, String phone, String nic) {
				super();
				this.cusid = cusid;
				this.cusname = cusname;
				this.password = password;
				this.email = email;
				this.phone = phone;
				this.nic = nic;
				
				
			}

			//getters
			public int getCusid() {
				return cusid;
			}

			public String getCusname() {
				return cusname;
			}

			public String getPassword() {
				return password;
			}

			public String getEmail() {
				return email;
			}

			public String getPhone() {
				return phone;
			}

			public String getNic() {
				return nic;
			}	
}
