package src.com.kh.app.dao;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import com.kh.app.util.JDBCTemplate;
import com.kh.app.vo.MovieVo;

public class MovieDAOImpl implements MovieDAO {

    private Connection conn = null;
    private PreparedStatement pstmt = null;
    private ResultSet rs = null;

    public MovieDAOImpl() {
        try {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection(URL, USERNAME, PASSWORD);
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException e) {
            e.printStackTrace();
        }
    }

    @Override
    public List<MovieVO> getAllMovies()  {
        List<MovieVO> movieList = new ArrayList<>();
        String sql = "SELECT * FROM SC_MOVIE";
        pstmt = conn.prepareStatement(sql);
        rs = pstmt.executeQuery();
        
        while (rs.next()) {
            MovieVO movie = new MovieVO();
            movie.setNo(rs.getInt("MOVIE_NO"));
            movie.setTitle(rs.getString("MOVIE_TITLE"));
            movie.setActor(rs.getString("MOVIE_ACTOR"));
            movie.setSummary(rs.getString("SUMMARY"));
            movie.setRate(rs.getString("RATE.FIFTEEN"));
            movieList.add(movie);
        }
        return movieList;
    }

    @Override
    public void addMovie(MovieVO movie){
        String sql = "INSERT INTO movie (MOVIE_TITLE,MOVIE_ACTOR, SUMMARY,RATE.FIFTEEN ) VALUES (?, ?, ?, ?)";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, movie.getTitle());
        pstmt.setString(2, movie.getActor());
        pstmt.setString(4, movie.getSumarry());
        pstmt.setString(5, movie.getRate());
        pstmt.executeUpdate();
    }

    @Override
    public void updateMovie(MovieVO movie)  {
        String sql = "UPDATE movie SET title=?, director=?, actor=?, genre=?, release_date=?, running_time=? WHERE id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setString(1, movie.getTitle());
        pstmt.setString(2, movie.getDirector());
        pstmt.setString(3, movie.getActor());
        pstmt.setString(4, movie.getGenre());
        pstmt.setString(5, movie.getReleaseDate());
        pstmt.setInt(6, movie.getRunningTime());
        pstmt.setInt(7, movie.getId());
        pstmt.executeUpdate();
    }

    @Override
    public void deleteMovie(int id) {
        String sql = "DELETE FROM movie WHERE id=?";
        pstmt = conn.prepareStatement(sql);
        pstmt.setInt(1, id);
        pstmt.executeUpdate();
    }

    // 나머지 메서드 구현
}