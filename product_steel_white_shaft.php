<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8" />
	<meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no" />
	<meta name="description" content="เมืองวัสดุ เอสซีจี โฮม บุญถาวร อุบลราชธานี มั่นใจ สินค้า คุณภาพ อุบลราชธานี ครบเครื่องเรื่องบ้าน ศูนย์รวมวัสดุก่อสร้างและของตกแต่งบ้านครบวงจร ราคาถูก คุณภาพดี.">
	<meta name="keywords" content="เมืองวัสดุ,scg home,บุญถาวร,กระเบื้อง,ตกแต่งภายใน,สุขภัณฑ์,เครื่องมือช่าง,สี,หลังคาเหล็ก,เมทัลชีท,วัสดุโครงสร้าง,ร้าน วัสดุ ก่อสร้าง ใกล้ที่สุด,ตะแกรงไวร์เมช,เหล็กเส้น,เหล็กแท่ง,ท่อสแตนเลส,ท่อ pvc,">
	<title>เมืองวัสดุ :: ศูนย์บริการ วัสดุก่อสร้าง เหล็กรูปพรรณ สินค้าตกแต่ง เรื่องบ้าน ครบวงจร</title>
	<link rel="icon" type="image/x-icon" href="imgorigin/favicon.ico" />
	<!-- Font Awesome icons (free version)-->
	<script src="https://use.fontawesome.com/releases/v5.15.1/js/all.js" crossorigin="anonymous"></script>
	<!-- Google fonts-->
	<link rel="preconnect" href="https://fonts.gstatic.com">
	<link href="https://fonts.googleapis.com/css2?family=Kanit:wght@200&display=swap" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Varela+Round" rel="stylesheet" />
	<link href="https://fonts.googleapis.com/css?family=Nunito:200,200i,300,300i,400,400i,600,600i,700,700i,800,800i,900,900i" rel="stylesheet" />
	<!-- Core theme CSS (includes Bootstrap)-->
	<link href="css/styles.css" rel="stylesheet" />
	<link href="css/custom.css" rel="stylesheet" />

	<!-- Start of HubSpot Embed Code ของคุณโบว์ ฝากให้แปะไว้ -->
	<script type="text/javascript" id="hs-script-loader" async defer src="//js.hs-scripts.com/5827949.js"></script>
	<!-- End of HubSpot Embed Code -->

</head>

<!-- Masthead-->
<?php
include("navmain.php");
?>

<body id="page-top">
	<br>
	<br>
	<br>
	
<!-- Core theme JS-->
<script src="js/scripts.js"></script>

<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.6.0/jquery.min.js"></script>

<script>
	var uri = 'http://mv.co.th/WebApi/api/PriceList/GetPriceByGroupID/9';
	$(document).ready(function() {
		// Send an AJAX request
		$.getJSON(uri)
			.done(function(data) {
				// on success, 'data' contains a list of products.
				$.each(data, function(key, item) {
					// add a list item for the product.
					//$('<li>', { text: formatStock(item) }).appendTo($('#price-list'));
					$("#price-" + item.Code).text(addCommas(item.SalePrice.toFixed(2).toString()) + "/" + item.UnitCode);
					var onStock = "สินค้าพร้อมส่ง";
					if (item.OnStock == "0") {
						onStock = "หมดชั่วคราว";
					}
					if (item.ProPrice == 0.0) {
						//field.SalePrice = field.ProPrice ;
						onStock = "Promotion!!." + onStock;
					}
					$("#stock-" + item.Code).text(onStock);
				});
			});
		//ListItems();
	});

	function formatStock(item) {
		return item.Code + '.' + item.ShortName + '(' + item.UnitCode + '): ' + item.SalePrice + '/' + item.ProPrice;
	}

	function addCommas(nStr) {
		nStr += '';
		x = nStr.split('.');
		x1 = x[0];
		x2 = x.length > 1 ? '.' + x[1] : '';
		var rgx = /(\d+)(\d{3})/;
		while (rgx.test(x1)) {
			x1 = x1.replace(rgx, '$1' + ',' + '$2');
		}
		return x1 + x2;
	}

	//}).text(parseFloat(field.SalePrice, 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g,"").toString()+"/"+field.UnitCode+field.OnStock);
	//$(".totalSum").text('$' + parseFloat(total, 10).toFixed(2).replace(/(\d)(?=(\d{3})+\.)/g, "$1,").toString());
</script>


</body>

</html>