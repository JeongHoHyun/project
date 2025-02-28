-- 회원 테이블
CREATE TABLE users (
                       user_id BIGINT AUTO_INCREMENT PRIMARY KEY,
                       login_id VARCHAR(50) UNIQUE NOT NULL,
                       user_name VARCHAR(50) UNIQUE NOT NULL,
                       password VARCHAR(255) NOT NULL,
                       email VARCHAR(100) UNIQUE NOT NULL,
                       reg_date DATETIME DEFAULT CURRENT_TIMESTAMP,
                       mod_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- 게시글 테이블
CREATE TABLE posts (
                       post_id BIGINT AUTO_INCREMENT PRIMARY KEY,
                       user_id BIGINT NOT NULL,
                       title VARCHAR(255) NOT NULL,
                       content TEXT NOT NULL,
                       views INT DEFAULT 0,
                       reg_date DATETIME DEFAULT CURRENT_TIMESTAMP,
                       mod_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -- FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 게시글 이미지 테이블
CREATE TABLE post_images (
                             img_id BIGINT AUTO_INCREMENT PRIMARY KEY,   -- 이미지 고유 ID
                             post_id BIGINT NOT NULL,                -- 게시글 ID (FK)
                             original_filename VARCHAR(255) NOT NULL, -- 사용자가 업로드한 파일명
                             stored_filename VARCHAR(255) NOT NULL,   -- 서버에서 저장하는 변경된 파일명
                             img_url VARCHAR(255) NOT NULL,         -- 실제 접근 가능한 이미지 URL
                             reg_date DATETIME DEFAULT CURRENT_TIMESTAMP
    -- FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE
);

-- 댓글 테이블
CREATE TABLE comments (
                          comment_id BIGINT AUTO_INCREMENT PRIMARY KEY,
                          post_id BIGINT NOT NULL,
                          user_id BIGINT NOT NULL,
                          content TEXT NOT NULL,
                          reg_date DATETIME DEFAULT CURRENT_TIMESTAMP,
                          mod_date DATETIME DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
    -- FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
    -- FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- 좋아요 테이블
CREATE TABLE likes (
                       like_id BIGINT AUTO_INCREMENT PRIMARY KEY,
                       post_id BIGINT NULL,
                       comment_id BIGINT NULL,
                       user_id BIGINT NOT NULL,
                       reg_date DATETIME DEFAULT CURRENT_TIMESTAMP
    -- FOREIGN KEY (post_id) REFERENCES posts(id) ON DELETE CASCADE,
    -- FOREIGN KEY (comment_id) REFERENCES comments(id) ON DELETE CASCADE,
    -- FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE
);

-- JWT 토큰 관리 테이블
CREATE TABLE refresh_tokens (
                                username VARCHAR(50) NOT NULL,
                                token TEXT NOT NULL,
                                expires_at TIMESTAMP NOT NULL,
                                created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);






