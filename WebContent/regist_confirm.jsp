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
	
	<title>確認画面</title>
	
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
        		<p>アカウント登録確認画面</p>
        	</div>
        				
			<table>
				<tr>
					<td>
						<label>名前（姓）</label>
					</td>
					<td>
						<s:property value="session.family_name" />
					</td>
				</tr>
				<tr>
					<td>
						<label>名前（名）</label>
					</td>
					<td>
						<s:property value="session.last_name" />
					</td>
				</tr>
				<tr>
					<td>
						<label>カナ（姓）</label>
					</td>
					<td>
						<s:property value="session.family_name_kana" />
					</td>
				</tr>
				<tr>
					<td>
						<label>カナ（名）</label>
					</td>
					<td>
						<s:property value="session.last_name_kana" />
					</td>
				</tr>
				<tr>
					<td>
						<label>メールアドレス</label>
					</td>
					<td>
						<s:property value="session.mail" />
					</td>
				</tr>
				<tr>
					<td>
						<label>パスワード</label>
					</td>
					<td>●●●●●●</td>
				</tr>
				<tr>
					<td>
						<label>性別</label>
					</td>
					<td>
						<s:if test="session.gender == 0">男</s:if>
			            <s:else>女</s:else>
					</td>
				</tr>
				<tr>
					<td>
						<label>郵便番号</label>
					</td>
					<td>
						<s:property value="session.postal_code" />
					</td>
				</tr>
				<tr>
					<td>
						<label>住所（都道府県）</label>
					</td>
					<td>
						<s:property value="session.prefecture" />
					</td>
				</tr>
				<tr>
					<td>
						<label>住所（市区町村）</label>
					</td>
					<td>
						<s:property value="session.address_1" />
					</td>
				</tr>
				<tr>
					<td>
						<label>住所（番地）</label>
					</td>
					<td>
						<s:property value="session.address_2" />
					</td>
				</tr>
				<tr>
					<td>
						<label>アカウント権限</label>
					</td>
					<td>
						<s:if test="session.authority == 0">一般</s:if>
			            <s:else>管理者</s:else>
					</td>
				</tr>
			</table>
			
			<br>
			
			<!-- DB登録処理・完了画面へ -->
			<s:form action="RegistCompleteAction">
				<s:submit value="登録する" />
			</s:form>
			
			<!-- 入力内容を保持して登録画面に遷移 -->
			<s:form action="RegistAction">
				<s:submit value="前に戻る" />
			</s:form>
        </div>
                
        
        <footer>
            <p>Copyright D.I.works | D.I.blog is the one which provides A to Z about programming</p>
        </footer>
</body>
</html>