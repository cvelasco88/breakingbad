<?php
/*
 *  Copyright (C) 2012 Platoniq y Fundación Fuentes Abiertas (see README for details)
 *	This file is part of Goteo.
 *
 *  Goteo is free software: you can redistribute it and/or modify
 *  it under the terms of the GNU Affero General Public License as published by
 *  the Free Software Foundation, either version 3 of the License, or
 *  (at your option) any later version.
 *
 *  Goteo is distributed in the hope that it will be useful,
 *  but WITHOUT ANY WARRANTY; without even the implied warranty of
 *  MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 *  GNU Affero General Public License for more details.
 *
 *  You should have received a copy of the GNU Affero General Public License
 *  along with Goteo.  If not, see <http://www.gnu.org/licenses/agpl.txt>.
 *
 */


namespace Goteo\Library\SuperForm\Element {
    
    class Radios extends Named {
                
        public
            $name,            
            $options = array(),
            $value;
        
        public function __construct ($data = array()) {
            
            parent::__construct($data);
            
            if (!is_array($this->options)) {
                $this->options = array();
            }            
            
            foreach ($this->options as $value => &$option) { 
                
                if (is_string($option)) {
                    
                    $option = new Radio(array(
                        'value' => $value,
                        'label' => (string) $option,
                        'name'  => $this->name
                    ));
                    
                } else if (is_array($option)) {
                    
                    $option = new Radio($option + array('name' => $this->name, 'level' => $this->level + 1));
                    
                } else {
                    
                    continue;
                    
                }
                
                if (isset($this->value)) {
                    $option->checked = ($option->value == $this->value); 
                }                
                
                $option->id = $this->id . '-' . $option->value;
                
            }            
            
        }
        
    }
    
}