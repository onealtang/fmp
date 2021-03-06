<?php
/*
  +----------------------------------------------------------------------+
  | Name:
  +----------------------------------------------------------------------+
  | Comment:
  +----------------------------------------------------------------------+
  | Author:Evoup     evoex@126.com                                                     
  +----------------------------------------------------------------------+
  | Create:
  +----------------------------------------------------------------------+
  | Last-Modified:
  +----------------------------------------------------------------------+
 */

function post_check($post) {
    if (!get_magic_quotes_gpc()) {
        $post = addslashes($post);
    }
    $post = str_replace("_", "\_", $post);
    $post = str_replace("%", "\%", $post);
    $post = nl2br($post);
    $post= htmlspecialchars($post);
    return $post;
}

function safeAddSlashes($str){
    if (!get_magic_quotes_gpc()) {
        $str = addslashes($str);
    }
    return $str;
}
?>
