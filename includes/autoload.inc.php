<?php
function autoload($class_name) {
    switch ($class_name[0]) {
        case 'V':
            require_once ('./View/'.$class_name.'.php');
            break;
        case 'F':
            require_once ('./Foundation/'.$class_name.'.php');
            break;
        case 'D':
            require_once ('./Domain/'.$class_name.'.php');
            break;
        case 'C':
            require_once ('./Controller/'.$class_name.'.php');
            break;
        case 'U':
            require_once ('./Utility/'.$class_name.'.php');
    }
}
spl_autoload_register('autoload');

?>