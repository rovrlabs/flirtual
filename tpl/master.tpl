<!doctype html>
<html>
<head> 
    <title>%($page_title%)</title>
    <link rel="icon" href="/favicon.png" type="image/png" />

% for(stylesheet in `{ls -p static/css}) {
    <link rel="stylesheet" type="text/css" href="/static/css/%($stylesheet%)">
% }

    <meta charset="UTF-8">
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">

% if(! ~ $#meta_description 0) {
    <meta name="description" content="%($meta_description%)">
% }
% if(! ~ $#meta_keywords 0) {
    <meta name="keywords" content="%($meta_keywords%)">
% }

    %($"extra_headers%)
</head> 
<body>
% run_handlers $handlers_body_head
% run_handler $handler_body_main
% run_handlers $handlers_body_foot

% for(script in `{ls -p static/js}) {
    <script src="/static/css/%($stylesheet%)" type="text/javascript"></script>
% }
</body>
</html>
