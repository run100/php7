--TEST--
Reading a non-existent static property
--FILE--
<?php
Class C {}
echo C::$p;
?>
--EXPECTF--
Fatal error: Uncaught EngineException: Access to undeclared static property: C::$p in %s:3
Stack trace:
#0 {main}
  thrown in %s on line 3