<?php
include 'connect.php';
if(isset($_GET))
    {
    $query = $connect->query("SELECT * FROM comments ORDER BY date DESC, time DESC LIMIT 3");
    $output = "<ul>";
    foreach ($query as $row)
    {   
        $time = date_create($row[time]);
        $t = date_format($time, 'H:i');
        
        $date = date_create($row[date]);
        $d = date_format($date, "d-m-Y");
        $output .= "<li>
                                <h4>$row[name]</h4><small>$t</small><small>$d</small>
                                <p>$row[comment]</p>
                            </li>";
    }
    $output .= "</ul> ";

    
}
echo $output;