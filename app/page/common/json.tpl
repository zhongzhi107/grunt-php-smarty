{%http_header type="json"%}
{
    "status":{
		"code": "{%$errno%}",
		"msg": "{%$msg%}"
    }, 
    "data": {%json_encode($json_data)%}
}
