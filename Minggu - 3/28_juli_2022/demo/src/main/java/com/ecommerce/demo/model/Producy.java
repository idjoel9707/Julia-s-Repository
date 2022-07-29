package com.ecommerce.demo.model;
import lombok.*;
import javax.persistence.*;

@Entity(name="Producy")
@Table(name="producy")
@Setter
@Getter
@AllArgsConstructor
@NoArgsConstructor
public class Producy {
	@Id
	@GeneratedValue(strategy=GenerationType.IDENTITY)
	@Column(name="id", nullable=false, insertable=false, unique=true)
	private Long id;
	
	@Column(name="productName", nullable=false, length=255)
	private String productName;
	
	@Column(name="description", nullable=false,  columnDefinition="TEXT")
	private String description;
	
}
