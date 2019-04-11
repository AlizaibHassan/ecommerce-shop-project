<?php

if(!isset($_SESSION['L_email'])){
    header('location: ../login.php?not_admin=You are not Admin!');
}

include "../server/db_connection.php";
?>


<div class="row">
    <div class="col-sm-12">
        <h1>Products</h1>
        <table class="table table-striped">
            <thead>
            <tr>
                <th scope="col">#</th>
                <th scope="col">Title</th>
                <th scope="col">Image</th>
                <th scope="col">Price</th>
                <th scope="col">Actions</th>
            </tr>
            </thead>
            <tbody>
            <?php
            $get_pro = "select * from dress_product";
            $run_pro = mysqli_query($con,$get_pro);
            $count_pro = mysqli_num_rows($run_pro);
            if($count_pro==0){
                echo "<h2> No Product found in selected criteria </h2>";
            }
            else {
                $i = 0;
                while ($row_pro = mysqli_fetch_array($run_pro)) {
                    $id = $row_pro['dress_Id'];
                    $cat = $row_pro['dress_cat'];
                    $brand = $row_pro['dress_brand'];
                    $title = $row_pro['dress_title'];
                    $price = $row_pro['dress_price'];
                    $image = $row_pro['dress_image'];

                  echo"  <tr>
                        <th scope='row'>$id</th>
                        <td> $title</td>
                        <td><img class='img-thumbnail' src='../admin/Images/$image' width='80' height='80'></td>
                        <td>$price/-</td>
                        <td>
                            <a id='' href='Delete_product.php?del_pro=$id' class='btn btn-danger'>
                                <i class='fa fa-trash-alt'></i> 
                                <span class='d-none d-md-inline d-lg-inline'> Delete </span>
                            </a>
                            <a id='' href='Edit_product.php?edit_pro=$id' class='btn btn-success'> 
                                <span class=' d-md-inline d-lg-inline'> Edit </span>
                            </a>
                        </td>
                    </tr>";
                }
            }
            ?>
            </tbody>
        </table>
    </div>
</div>