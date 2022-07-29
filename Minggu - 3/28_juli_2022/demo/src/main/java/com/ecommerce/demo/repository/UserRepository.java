package com.ecommerce.demo.repository;
import com.ecommerce.demo.model.*;
import org.springframework.data.mongodb.repository.*;

import java.util.*;

public interface UserRepository extends MongoRepository<User, String> {
	@Query("{name:'?0'}")
	User findItemByName(String name);
	
	@Query(value="{name:'?0'}")
    List<User> findAll(String name);
	
    public long count();

}
