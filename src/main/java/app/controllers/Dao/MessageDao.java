package app.controllers.Dao;

import app.controllers.Models.Patients;
import app.controllers.Models.entity.Message;
import org.springframework.data.domain.Page;
import org.springframework.data.domain.PageRequest;
import org.springframework.data.domain.Pageable;
import org.springframework.data.domain.Slice;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.CrudRepository;
import org.springframework.data.repository.query.Param;

import java.util.List;


public interface MessageDao extends CrudRepository<Message, Long> {
    @Query("select m from Message m where (m.toUser.id=:toUser and m.fromUser.id=:fromUser) or (m.toUser.id=:fromUser and m.fromUser.id=:toUser) order by m.sent desc")
    Slice<Message> fetchConversation(@Param("toUser")Long toUser, @Param("fromUser")Long fromUser, @Param("page")Pageable page);

    Page<Message> findByToUserIdAndReadFalseOrderBySentDesc(Long toUserId, Pageable request);

    @Query("SELECT e FROM Message e WHERE (e.toUser.id=:name or e.fromUser.id=:name)")
    List<Message> findAllByUser(@Param("name")Long name);
}
