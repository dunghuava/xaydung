<nav class="navbar navbar-inverse" role="navigation">
<div id="footer" style="  font-size: 15px;  line-height: 1.8;  padding: 5px 0;">
    <div><a href="http://www.phuongnamvina.vn/" title="Công Ty TNHH Phương Nam Vina" style="font-weight: 700;  font-size: 19px;  color: #fff;  text-decoration: none;">CÔNG TY TNHH PHƯƠNG NAM VINA</a><div>
    <div>Điện thoại: (028) 3553 2306 - Website: <a href="http://www.phuongnamvina.vn/" target="_blank" style="color: #fff;  text-decoration: none;">phuongnamvina.vn</a>, <a href="http://www.websitechuyennghiep.vn/" target="_blank" style="color: #fff;  text-decoration: none;">websitechuyennghiep.vn</a> <div>
    <div>Email hỗ trợ kỹ thuật: <a href="mailto:kythuat@phuongnamvina.vn" style="color: #fff;  text-decoration: none;">kythuat@phuongnamvina.vn</a><div>
    <div>Hotline hỗ trợ khách hàng: 0915 10 10 17<div>
</div>
</nav>

    <script type="text/javascript" src="public/js/jquery-1.10.2.min.js"></script>
    <script type="text/javascript" src="public/js/ajax.js"></script>
    <script type="text/javascript" src="public/js/bootstrap.min.js"></script>
    <script type="text/javascript" src="public/extra/select2/select2.full.js"></script>
    <script type="text/javascript" src="public/js/admin.js"></script>
    <script type="text/javascript">
        $(document).ready(function () {
            $('#check_all').change(function(){
                $('.table input:checkbox').prop('checked', this.checked);
            });
            $('#action').change(function(){
                $('#product_form').submit();
            });
            $('#search').keyup(function(e){
                if (e.which==13) {
                    $('#product_form').submit();
                }                
            });
			$('.select2').select2();
			$("select").on("select2:close", function (e) {  
				$(this).valid(); 
			});	
        });
    </script>
</body>
</html>