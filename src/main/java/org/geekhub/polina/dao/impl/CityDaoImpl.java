package org.geekhub.polina.dao.impl;

import org.geekhub.polina.dao.CityDao;
import org.geekhub.polina.model.City;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.jdbc.core.RowMapper;
import org.springframework.stereotype.Repository;

import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.List;

@Repository
public class CityDaoImpl implements CityDao {
    private final JdbcTemplate jdbcTemplate;

    @Autowired
    public CityDaoImpl(JdbcTemplate jdbcTemplate) {
        this.jdbcTemplate = jdbcTemplate;
    }

    @Override
    public List<City> getAllCities() {
        String sql = "SELECT * FROM cities";
        return jdbcTemplate.query(sql, new CityRowMapper());
    }

    private static final class CityRowMapper implements RowMapper<City> {
        public City mapRow(ResultSet rs, int rowNum) throws SQLException {
            City city = new City();
            city.setId(rs.getInt("id"));
            city.setName(rs.getString("name"));

            return city;
        }
    }
}
