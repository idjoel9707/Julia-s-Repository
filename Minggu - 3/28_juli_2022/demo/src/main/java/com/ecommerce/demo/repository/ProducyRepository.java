package com.ecommerce.demo.repository;
import com.ecommerce.demo.model.*;

//import java.util.List;

import org.springframework.data.mongodb.repository.*;

public interface ProducyRepository extends MongoRepository<Producy, String> {
//	@Query("{productName:'?0'}")
//	User findItemByName(String productName);
//	
//	@Query(value="{productName:'?0'}")
//    List<Producy> findAll(String productName);
//	
//    public long count();
}
