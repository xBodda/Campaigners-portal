<?php
include('includes/start.php');
include('includes/head.php');
include('includes/header.php');

//check if user submited the form
$msg="";
if(isset($_POST['addtask'])){
  $name = $_POST['name'];
  $description = $_POST['description'];
  $startdate = $_POST['startdate'];
  $deadline = $_POST['deadline'];
  $committee_id = $_POST['committee_id'];
  DB::query('INSERT INTO tasks VALUES (\'\', :name, :description, :startdate, :deadline, :committee, :member_id,0)', 
  array(':name'=>$name, ':description'=>$description, ':startdate'=>$startdate, ':deadline'=>$deadline, ':committee'=>$committee_id, ':member_id' =>NULL));

  $msg="Committee added successfully!";
}
 ?>
 <div id="main-body">
 
        <div class="cards">
          <div class="row">
            <div class="item">
            <h1>Add Tasks</h1>
            <div class="success"><?php echo $msg;?></div>
                      <form method="post" action="add-task.php">
                        <p>Name :</p> 
                              <input type="text" class="binput" name="name" required>  <br>
                        <p>Task description :</p> 
                              <input type="text"  class="binput" name="description" required>  <br>
                        <p>Start date</p> 
                              <input type="date" class="binput" min="2021-01-01" max="2021-12-31" name="startdate" required>  
                      <p>Deadline</p>
                              <input type="date" class="binput" min="2021-01-01" max="2021-12-31" name="deadline" required>  <br>
                        <p>Committee</p>
                        <select class="binput" name="committee_id" >
                        <?php
                          $items = DB::query('SELECT * FROM committees');
                        ?>
                          <option value="" disabled selected>Please select an option</option>
                          <?php
                          foreach($items as $item){
                            ?>
                            <option value="<?php echo $item['id']; ?>"> <?php echo $item['name']; ?> </option>
                            <?php
                          }
                        ?>
                        </select><br>
                        <button type="submit" name="addtask" class="xbutton">Add task</button>


                      </form>


            </div>
          </div>
        </div>

 </div>
 <?php include('includes/footer.php') ?>
  
