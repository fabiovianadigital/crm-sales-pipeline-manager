CREATE TABLE clients (
    id INT PRIMARY KEY AUTO_INCREMENT,
    name VARCHAR(255),
    email VARCHAR(255),
    phone VARCHAR(50),
    company VARCHAR(255),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE leads (
    id INT PRIMARY KEY AUTO_INCREMENT,
    client_id INT,
    status VARCHAR(100),
    source VARCHAR(100),
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

CREATE TABLE followups (
    id INT PRIMARY KEY AUTO_INCREMENT,
    lead_id INT,
    notes TEXT,
    next_contact DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);
