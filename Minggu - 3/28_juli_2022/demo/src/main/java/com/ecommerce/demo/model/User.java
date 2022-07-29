package com.ecommerce.demo.model;
import org.springframework.data.mongodb.core.mapping.Document;
import lombok.*;
import javax.persistence.*;

@Document(collection = "User")
@Data
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class User {
	@Id
//	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", nullable=false, insertable=false, unique=true)
	private Long id;
	
	@Column(name="username", nullable=false, length=255)
	private String username;
	
	@Column(name="phone", nullable=false, length=15)
	private String phone;
	
	@Column(name="address", nullable=false, columnDefinition="TEXT")
	private String address;
	
}
