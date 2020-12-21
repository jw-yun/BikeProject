<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<div class="container">
	<div>
		<img alt="" src="../resources/images/logo.png">
	</div>
	<form action="./memberLogin" method="post">
		<div>
			<table>
				<tr>
					<td>
						<input type="text" name="id" placeholder="아이디">
					</td>
				</tr>
				<tr>
					<td>
						<input type="password" name="pw" placeholder="비밀번호" required="required">
					</td>
				</tr>
				<tr>
					<td>
						<input type="checkbox" value="로그인 상태 유지">
					</td>
				</tr>
				<tr>
					<td>
						<input type="submit" value="로그인">
					</td>
				</tr>
				
			</table>
	
	
		</div>
	
	</form>
</div> 