package app.controllers.Dao;

import app.controllers.Models.BlackList;
import app.controllers.Models.Yavka;
import app.controllers.Models.entity.Message;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;

import java.util.List;

@Repository
public interface BlockDao extends CrudRepository<BlackList, Long> {

    @Query("SELECT e FROM BlackList e WHERE e.own IN (:own)")
    List<BlackList> findForbidden(@Param("own")Long own);}

