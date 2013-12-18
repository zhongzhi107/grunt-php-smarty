
<?php

$rules = [
	"^\/static\/.*\.css$" => "require!../.tmp$0",
	"^\/api\/(.*)" => "http://www.baidu.com/$1"
];

$mime_type = [
    "css" => "text/css",
    "gif" => "image/gif",
    "html" => "text/html",
    "md" => "text/html",
    "ico" => "image/x-icon",
    "jpeg" => "image/jpeg",
    "jpg" => "image/jpeg",
    "js" => "text/javascript",
    "json" => "application/json",
    "pdf" => "application/pdf",
    "png" => "image/png",
    "svg" => "image/svg+xml",
    "swf" => "application/x-shockwave-flash",
    "tiff" => "image/tiff",
    "txt" => "text/plain",
    "wav" => "audio/x-wav",
    "wma" => "audio/x-ms-wma",
    "wmv" => "video/x-ms-wmv",
    "xml" => "text/xml"
];

$uri = $_SERVER["REQUEST_URI"];//'/static/css/main.css';

foreach($rules as $rule => $rewrite) {
	preg_match("/$rule/i", $uri, $matches);
	if ($matches != null) {
		// require
		$require_flag = 'require!';
		if (strpos($rewrite, $require_flag) !== false) {
			$rewrite = str_replace($require_flag, '', $rewrite);
			$rewrite = str_replace("\$0", $matches[0], $rewrite);
		} else if (strpos($rewrite,'http://') !== false) {
			// TODO: cookie&post
			foreach($matches as $key => $value) {
				$rewrite = str_replace("\$". $key, $value, $rewrite);
			}
		}
		break;
	}
}

if ($matches != null) {
	$path_parts = pathinfo($uri);
	$extension = $path_parts['extension'];
	if (empty($extension)) {
		$extension = 'json';
	}
	//var_dump($extension);
	header("Content-Type: ". $mime_type[$extension]);
	echo file_get_contents($rewrite);
} else {
    return false;
}
