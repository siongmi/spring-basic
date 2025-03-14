package org.codenova.spring.repository;

import lombok.AllArgsConstructor;
import org.apache.ibatis.session.SqlSession;
import org.apache.ibatis.session.SqlSessionFactory;
import org.codenova.spring.model.Movie;
import org.springframework.stereotype.Repository;

import javax.sql.DataSource;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.time.LocalDate;
import java.util.List;

@Repository
@AllArgsConstructor
public class MovieRepository {

    private SqlSessionFactory sqlSessionTemplate;

    public boolean create(Movie movie){
        SqlSession session = sqlSessionTemplate.openSession();

        int r = session.insert("movie.create",movie);

        return r > 0 ? true : false;
    }

    public List<Movie> findAll(){
        SqlSession session = sqlSessionTemplate.openSession();
        /*
          selectTag 를 사용할 때는 selectOne 아니면 selectList 둘 중에 하나를 사용한다고 생각하면 됨.
         */
        List<Movie> list = session.selectList("movie.findAll");
        return list;
    }

    public Movie findById(int id) {
        SqlSession session = sqlSessionTemplate.openSession();
        Movie m = session.selectOne("movie.findById", id);

        return m;
    }
}
