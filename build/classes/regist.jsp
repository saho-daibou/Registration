<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<meta http-equiv="Content-Style-Type" content="text/css" />
	<meta http-equiv="Content-Script-Type" content="text/javascript" />
	<meta http-equiv="imagetoolbar" content="no" />
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	
	<title>登録画面</title>
	
	<style type="text/css">
	/* --- ヘッダー＆フッター --- */
		* {
		    margin: 0;
		    padding: 0;
		    box-sizing: border-box;
		}
		body {
	    	font-family: "Meiryo", sans-serif;	
		}
		header {
		    width: 99%;
		    margin: auto;
		}
		.header-logo {
		    background: #fff;
		    padding: 15px 20px;
		}
		.header-logo img {
		    width: 220px;
		    height: auto;
		    display: block;
		}
		header nav {
		    background: #000;
		    font-size: 14px;
		    color: white;
		}
		header nav ul {
		    display: flex;
		    list-style: none;
		    padding: 10px 20px;
		}
		header nav li {
		    margin-right: 35px;
		}
		footer {
		    width: 99%;
		    margin: auto;
		    background: #000;
		    color: #fff;
		    text-align: center;
		    padding: 15px 0;
		}
	/* -- main -- */
		.ErrorMessage {
		    color: red;
		    font-size: 12px;
		}
	</style>
</head>
<body>
	<header>
            <div class="header-logo">
                <img src="image/diblog_logo.jpg" alt="D.I.BLOG ロゴ">
            </div>

            <nav>
                <ul>
                    <li><a href="index.html">トップ</a></li>
					<li><a href="RegistAction">アカウント登録</a></li>
                    <li>プロフィール</li>
                    <li>D.I.Blogについて</li>
                    <li>登録フォーム</li>
                    <li>問い合わせ</li>
                    <li>その他</li>
                </ul>
            </nav>
        </header>
        
        
        <div id="main">
        	<div id="top">
        		<p>アカウント登録画面</p>
        	</div>
        	
        	<s:if test="errorMessage !=''">
				<s:property value="errorMessage" escape="false" />
			</s:if>
			
			<s:form action="RegistConfirmAction">
				<table>
					<tr>
						<td>
							<label>名前（姓）</label>
						</td>
						<td>
							<input type="text" name="family_name" 
								value="<s:property value='family_name'/>" 
								maxlength="10" pattern="[\p{Hiragana}\p{Han}]{1,10}" required />
						</td>
					</tr>
					<s:if test="fieldErrors.family_name != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="family_name" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>名前（名）</label>
						</td>
						<td>
							<input type="text" name="last_name" 
								value="<s:property value='last_name'/>" 
								maxlength="10" pattern="[\p{Hiragana}\p{Han}]{1,10}" required />
						</td>
					</tr>
					<s:if test="fieldErrors.last_name != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="last_name" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>カナ（姓）</label>
						</td>
						<td>
							<input type="text" name="family_name_kana" 
								value="<s:property value='family_name_kana'/>" 
								maxlength="10" pattern="[ァ-ヶー]{1,10}" required />
						</td>
					</tr>
					<s:if test="fieldErrors.family_name_kana != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="family_name_kana" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>カナ（名）</label>
						</td>
						<td>
							<input type="text" name="last_name_kana" 
								value="<s:property value='last_name_kana'/>" 
								maxlength="10" pattern="[ァ-ヶー]{1,10}" required />
						</td>
					</tr>
					<s:if test="fieldErrors.last_name_kana != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="last_name_kana" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>メールアドレス</label>
						</td>
						<td>
							<input type="email" name="mail" 
								value="<s:property value='mail'/>" 
								pattern="[a-zA-Z0-9@.\-]{1,100}" maxlength="100" required />
						</td>
					</tr>
					<s:if test="fieldErrors.mail != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="mail" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>パスワード</label>
						</td>
						<td>
							<input type="text" name="password" 
								value="<s:property value='password'/>" 
								pattern="[a-zA-Z0-9]{1,10}" maxlength="10" required />
						</td>
					</tr>
					<s:if test="fieldErrors.password != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="password" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>性別</label>
						</td>
						<td>
							<input type="radio" name="gender" value="0"
								<s:if test="gender == '0'">checked</s:if>> 男
							<input type="radio" name="gender" value="1"
								<s:if test="gender == '1'">checked</s:if>> 女
						</td>
					</tr>
					<s:if test="fieldErrors.gender != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="gender" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>郵便番号</label>
						</td>
						<td>
							<input type="text" name="postal_code" 
								value="<s:property value='postal_code'/>" 
								pattern="[0-9]{7}" maxlength="7" required />
						</td>
					</tr>
					<s:if test="fieldErrors.postal_code != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="postal_code" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>住所（都道府県）</label>
						</td>
						<td>
							<s:select name="prefecture"
								list="prefectureMap"
								listKey="key"
								listValue="value"
								headerKey=""
								headerValue=""
								cssClass="form-control" />
						</td>
					</tr>
					<s:if test="fieldErrors.prefecture != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="prefecture" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>住所（市区町村）</label>
						</td>
						<td>
							<input type="text" name="address_1" 
								value="<s:property value='address_1'/>" 
								pattern="[ぁ-んァ-ヶー一-龥0-9\- ]{1,10}" maxlength="10" required />
						</td>
					</tr>
					<s:if test="fieldErrors.address_1 != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="address_1" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>住所（番地）</label>
						</td>
						<td>
							<input type="text" name="address_2" 
								value="<s:property value='address_2'/>" 
								pattern="[ぁ-んァ-ヶー一-龥0-9\- ]{1,100}" maxlength="100" required />
						</td>
					</tr>
					<s:if test="fieldErrors.address_2 != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="address_2" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
					<tr>
						<td>
							<label>アカウント権限</label>
						</td>
						<td>
							<select name="authority">
								<option value="0" selected>一般</option>
								<option value="1">管理者</option>
							</select>
						</td>
					</tr>
					<s:if test="fieldErrors.authority != null">
						<tr>
						    <td colspan="2">
						        <s:fielderror fieldName="authority" cssClass="ErrorMessage" />
						    </td>
						</tr>
					</s:if>
					
				</table>
			<s:submit value="確認する" />
			</s:form>
        </div>
                
        
        <footer>
            <p>Copyright D.I.works | D.I.blog is the one which provides A to Z about programming</p>
        </footer>
</body>
</html>