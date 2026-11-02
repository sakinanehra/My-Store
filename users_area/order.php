<?php
include('C:\xampp\htdocs\ecommerce website\admin_area\includes\connect.php');
include('C:\xampp\htdocs\ecommerce website\functions\common_function.php');
session_start();

if(isset($_GET['user_id'])){
    $user_id=$_GET['user_id'];
}

// getting total items and total price of all items 
$get_ip_address=getIPAddress();
$total_price=0;
$cart_query_price="Select * from cart_details where ip_address='$get_ip_address'";
$result_cart_price=mysqli_query($con,$cart_query_price);
$invoice_number=mt_rand();
echo $invoice_number;
$status='pending';
$count_products=mysqli_num_rows($result_cart_price);
while($row_price=mysqli_fetch_array($result_cart_price)){
$product_id=$row_price['product_id'];
$select_product="Select * from products where product_id=$product_id";
$run_price=mysqli_query($con,$select_product);
while($row_product_price=mysqli_fetch_array($run_price)){
    $product_price=array($row_product_price['product_price']);
    $product_values=array_sum($product_price);
    $total_price+=$product_values;
}
}

//getting quanity from cart
$get_cart="select * from cart_details";
$run_cart=mysqli_query($con,$get_cart);
$get_item_quantity=mysqli_fetch_array($run_cart);
$quantity=$get_item_quantity['quantity'];
if($quantity==0){
    $quantity=1;
    $subtotal=$total_price;
}else{
    $quantity=$quantity;
    $subtotal=$total_price*$quantity; 

}
// Assuming $conn is your MySQLi connection object

// Retrieve user_id from session or other source
$user_id = $_SESSION['user_id']; // Example source

// Debugging line
var_dump($user_id);

// Prepare the statement
$stmt = $con->prepare("INSERT INTO user_orders (user_id, amount_due,invoice_number,total_products,order_date,order_status) VALUES (?, ?)");

// Check for preparation errors
if ($stmt === false) {
    die('Prepare failed: ' . htmlspecialchars($con->error));
}

// Bind parameters
$other_value = 'example_value';
$stmt->bind_param("is", $user_id, $other_value);

// Execute the statement
$stmt->execute();

// Check for execution errors
if ($stmt->error) {
    die('Execute failed: ' . htmlspecialchars($stmt->error));
}

// Close the statement
$stmt->close();

//orders pending
$insert_pending_orders="Insert into orders_pending (user_id,invoice_number,product_id,quantity,order_status) values ( $user_id,  $invoice_number,$product_id,$quantity,'$status')";
$result_pending=mysqli_query($con,$insert_pending_orders);

//delete items from  cart
$empty_cart="Delete from cart_details where ip_address='$get_ip_address'";
$result_delete=mysqli_query($con,$empty_cart);
 
?> 
