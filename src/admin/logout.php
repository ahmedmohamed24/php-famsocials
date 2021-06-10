<?php

session_start();
session_unset();
//should be Changed when uploaded
die("<script>window.location.replace('/GEMY');</script>");
