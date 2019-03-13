<?php
if(isset($_POST["btnSearch"])){
	
	//retruve patrol car status and patrolcarstatus 
	//connect to a database 
	$con = mysql_connect("localhost","shumei","shumei");
	if(!$con)
	{
		die("Cannot connect to database:".mysql_error());
	}
	//select a table in the database
	mysql_select_db("pess_shumei",$con);
	
	//update patrol car status
	$sql = "UPDATE patrolcar SET patrolcarStatusId = '".$_POST["patrolCarStatus"]."'WHERE patrolcarId = '".$_POST["patrolcarId"]."'";
	
	if(!mysql_query($sql,$con))
	{
		die('Error4:' .mysql_error());
	}
	//if patrol car status is on-site(4) the capture the time of arrival
	if($_POST["patrolcarstatus"] == '4'){
	if(!mysql_query($sql,$con))
	{
		die('Error4:' .mysql_error());
	}
	
}else if($_POST["patrlCarStatus"] == '3'){//else if patrol car status is FREE then capturn the time of completion

//First, retrieve the incident ID from dispatch table handled by that patrol car
$sql = "SELECT incidenTID FROM dispatch WHERE timeCompleted is NULL AND patrolcarId ='".$_POST["patrolcarId"]."'";

$result = mysql_query($sql,$con);
$incidentId;

while($row = mysql_fetch_array($result))
{
	//patrolcarId,patrolcarStatusID
	$incidentId = $row ['incidentId'];
}

//echo $incidentId;

//Now then can update dispatch
$sql = "UPDATE dispatch SET timeCompleted=NOW() WHERE timeCompleted is NULL AND patrolcarId ='".$_POST["patrolcarId"]."'";

if(!mysql_query($sql,$con))
	{	
		die('Error4;' .mysql_error());
	}
}
mysql_close($con);
?>

<script type = "text/javascript">//window.location="./logcall.php";</script>
<?php }?>
	
<!DOCTYPE HTML>
<html>
<head>
<title>Update</title>
</head>

<body>
<?php
include '36_shumei.php';
?>

<?php
if(!isset($_POST["btnSearch"])){
?>

<!--reate a form to search for patrol car based on id-->
<form name="forml" method="post" action="<?php echo htmlentities($_SERVER['PHP_SELF']); ?>">
	<fieldset>
		<legend>Update Patrol Car</legend>
		
<table width="80%" border="0" align="center" cellspadding="4" cellspacing="4">
<tr>
	<td width="25%" class="td_label">Patrol Car ID;</td>
	<td width="25%" class="td_Data"><input type="text" name="patrolcarId" id="patrolcarId"></td>
	
	<!--must validte for no empty at the Client side, HOW??? -->
	<td class="td_Data"><input type="submit" name="btnSearch" id="btnSearch" value="Search"></td>
</tr>
</table>
	</fieldset>
</form>
<?php
}else{
	//echo $_POST["patrolcarId"];
	//retrieve patrol car status and patrolcarstatus
	//connect to a database
	$con = mysql_connect("localhost","shumei","shumei");
	if(!con)
	{
		die("Cannot connect to database:".mysql_error());
	}
	//select a table in the database
	mysql_select_db("pess_shumei",$con);
	//retrieve patrol car status
	//connect to a database
	$sql = "SELECT * FROM patrolcar WHERE patrolcarId = '".$_POST['patrolcarId']."'";
	
	$result = mysql_query($sql,$con);
	$patrolcarId;
	$patrolcarStatusID;
	
	while($row = mysql_fetch_array($result))
	{
		//patrolcarId,patrolcarStatusID
		
		$patrolcarId = $row['patrolcarId'];
		$patrolcarStatusID = $row['patrolcarStatusID'];
	}
	
	//retrieve patrolcarstatus master table
	$sql = "SELECT * FROM patrolcar_status";
	
	$result = mysql_query($sql,$con);
	$patrolCarStatusMaster;
	
	while($row = mysql_fetch_array($result))
	{
		//statusID,statusDesc
		//create an associative array of patrol car satus master type
		
		$patrlCarStatusMaster[$row['statusId']]=$row['statusDesc'];
	}
	mysql_close($con);
?>

<!--display a form to update patrol car status
also update incident status when patrol car status is FREE-->
<form name="form2" method="post" action="<?php echo htmlentities($_SERVER['PHP_SELF']);?>">
	<fieldset>
		<legend>Update Patrol Car</legend>

<table width="80%" border="0" align="center" cellpadding="4" cellspacing="4">
<tr>
		<td width="25% class="td_label">Patrol Car ID;</td>
		<td width="25% class="td_Data"><input type="text" name="patrolCarId" id="patrolCarId"></td>
</tr>
<tr>
	<td class="td_label">Status:</td>
	<td class="td_Data"><select name="patrolCarStatus" id="$patrolCarStatus">
	
	<?php foreach($patrlCarStatusMaster as $key => $value){?>
		<option value="<?php echo $key ?>"
		<?php if($key == $patrolcarstatusID) {?>selected="selected"
		<?php }?>>
		<?php echo $value ?>
		</option>
		
	<?php }?>
	</selected></td>
</tr>
</table>
</br>

<table width="80%" border="0" align="center" cellpadding="4">
<tr>
	<td width="46%" class="td_label"><input type="reset" name="btnCancel" value="Reset"></td>
	
	<td width="54%" class="td_Data">&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="submit" name="btnUpdate" id="btnUpdate" value="Update">
	</td>
</tr>
</table>
	</fieldset>
</form>
<?php }?>
</body>
</html>