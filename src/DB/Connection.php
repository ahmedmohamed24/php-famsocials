<?php

class Connection
{
    public $conn;
    private $sql;
    private $result;

    public function __construct()
    {
        $this->conn = new mysqli('mysql', 'root', 'secret', 'famsocial');
        if ($this->conn->connect_error) {
            exit('Connection failed: '.$this->conn->connect_error);
        }
    }

    public function __destruct()
    {
        $this->conn->close();
    }

    public function select($query)
    {
        $this->sql = $query;
        $this->result = $this->conn->query($query);
        if ($this->result->num_rows > 0) {
            $tmp = [];
            while ($row = $this->result->fetch_assoc()) {
                array_push($tmp, $row);
            }

            return $tmp;
        }

        return null;
    }

    public function insert($sql)
    {
        $this->sql = $sql;
        if (true === $this->conn->query($this->sql)) {
            return 'true';
        }

        return 'Error: '.$this->sql.'<br>'.$this->conn->error;
    }
}
