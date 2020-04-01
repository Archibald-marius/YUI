package app.controllers.Services;

import app.controllers.Dao.BlockDao;
import app.controllers.Models.BlackList;
import app.controllers.Models.SiteUser;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class BlackListService {

    @Autowired
    BlockDao blockDao;

    public void save(BlackList blackList){
        blockDao.save(blackList);

    }
}
