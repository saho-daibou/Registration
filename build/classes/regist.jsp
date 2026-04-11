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
							<input type="text" name="family_name" value="<s:property value='family_name'/>" maxlength="10" pattern="[\p{Hiragana}\p{Han}]{1,10}" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>名前（名）</label>
						</td>
						<td>
							<input type="text" name="last_name" value="<s:property value='last_name'/>" maxlength="10" pattern="[\p{Hiragana}\p{Han}]{1,10}" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>カナ（姓）</label>
						</td>
						<td>
							<input type="text" name="family_name_kana" value="<s:property value='family_name_kana'/>" maxlength="10" pattern="[ァ-ヶー]{1,10}" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>カナ（名）</label>
						</td>
						<td>
							<input type="text" name="last_name_kana" value="<s:property value='last_name_kana'/>" maxlength="10" pattern="[ァ-ヶー]{1,10}" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>メールアドレス</label>
						</td>
						<td>
							<input type="email" name="mail" value="<s:property value='mail'/>" pattern="[a-zA-Z0-9@.\-]{1,100}" maxlength="100" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>パスワード</label>
						</td>
						<td>
							<input type="text" name="password" value="" pattern="[a-zA-Z0-9]{1,10}" maxlength="10" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>性別</label>
						</td>
						<td>
							<input type="radio" name="gender" value="0" checked> 男
							<input type="radio" name="gender" value="1"> 女
						</td>
					</tr>
					<tr>
						<td>
							<label>郵便番号</label>
						</td>
						<td>
							<input type="text" name="postal_code" value="<s:property value='postal_code'/>" pattern="[0-9]{7}" maxlength="7" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>住所（都道府県）</label>
						</td>
						<td>
							<select name="prefecture" required>
							    <option value="" selected></option>
							    <option value="北海道">北海道</option>
							    <option value="青森県">青森県</option>
							    <option value="岩手県">岩手県</option>
							    <option value="宮城県">宮城県</option>
							    <option value="秋田県">秋田県</option>
							    <option value="山形県">山形県</option>
							    <option value="福島県">福島県</option>
							    <option value="茨城県">茨城県</option>
							    <option value="栃木県">栃木県</option>
							    <option value="群馬県">群馬県</option>
							    <option value="埼玉県">埼玉県</option>
							    <option value="千葉県">千葉県</option>
							    <option value="東京都">東京都</option>
							    <option value="神奈川県">神奈川県</option>
							    <option value="新潟県">新潟県</option>
							    <option value="富山県">富山県</option>
							    <option value="石川県">石川県</option>
							    <option value="福井県">福井県</option>
							    <option value="山梨県">山梨県</option>
							    <option value="長野県">長野県</option>
							    <option value="岐阜県">岐阜県</option>
							    <option value="静岡県">静岡県</option>
							    <option value="愛知県">愛知県</option>
							    <option value="三重県">三重県</option>
							    <option value="滋賀県">滋賀県</option>
							    <option value="京都府">京都府</option>
							    <option value="大阪府">大阪府</option>
							    <option value="兵庫県">兵庫県</option>
							    <option value="奈良県">奈良県</option>
							    <option value="和歌山県">和歌山県</option>
							    <option value="鳥取県">鳥取県</option>
							    <option value="島根県">島根県</option>
							    <option value="岡山県">岡山県</option>
							    <option value="広島県">広島県</option>
							    <option value="山口県">山口県</option>
							    <option value="徳島県">徳島県</option>
							    <option value="香川県">香川県</option>
							    <option value="愛媛県">愛媛県</option>
							    <option value="高知県">高知県</option>
							    <option value="福岡県">福岡県</option>
							    <option value="佐賀県">佐賀県</option>
							    <option value="長崎県">長崎県</option>
							    <option value="熊本県">熊本県</option>
							    <option value="大分県">大分県</option>
							    <option value="宮崎県">宮崎県</option>
							    <option value="鹿児島県">鹿児島県</option>
							    <option value="沖縄県">沖縄県</option>
							</select>
						</td>
					</tr>
					<tr>
						<td>
							<label>住所（市区町村）</label>
						</td>
						<td>
							<input type="text" name="address_1" value="<s:property value='address_1'/>" pattern="[ぁ-んァ-ヶー一-龥0-9\- ]{1,10}" maxlength="10" required />
						</td>
					</tr>
					<tr>
						<td>
							<label>住所（番地）</label>
						</td>
						<td>
							<input type="text" name="address_2" value="<s:property value='address_2'/>" pattern="[ぁ-んァ-ヶー一-龥0-9\- ]{1,100}" maxlength="100" required />
						</td>
					</tr>
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
				</table>
			<s:submit value="確認する" />
			</s:form>
        </div>
                
        
        <footer>
            <p>Copyright D.I.works | D.I.blog is the one which provides A to Z about programming</p>
        </footer>
</body>
</html>