<?php

session_start();
session_unset();
//should be Changed when uploaded
exit("<script>window.location.replace('/GEMY');</script>");
