CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    email VARCHAR(255) NOT NULL UNIQUE,
    password VARCHAR(255) NOT NULL,
    profession VARCHAR(255),
    reason TEXT,
    security_question VARCHAR(255),
    security_answer_hash VARCHAR(255)
);

CREATE TABLE detections (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT NOT NULL,
    original_image VARCHAR(255) NOT NULL,
    ela_image VARCHAR(255) NOT NULL,
    mask_image VARCHAR(255),
    highlighted_image VARCHAR(255),
    result VARCHAR(50),
    tamper_ratio FLOAT,
    timestamp TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    image_path VARCHAR(255) NOT NULL,
    ela_path VARCHAR(255) NOT NULL,
    highlighted_path VARCHAR(255) NOT NULL,
    FOREIGN KEY (user_id) REFERENCES users(id)
);
