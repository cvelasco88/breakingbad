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


namespace Goteo\Model {

    use \Goteo\Model\Project\Media,
        \Goteo\Model\Image;

    class Video extends \Goteo\Core\Model {

        public
            $id,
            $nomserie,
            $nomreal,
            $tipus,
            $descripcio,
            $imatge;
        

        /*
         *  Para conseguir el ide del blog de un proyecto o de un nodo
         *  Devuelve datos de un blog
         */
        public static function get ($type) {
                $query = static::query("
                    SELECT
                        id,
                        nomserie,
                        nomreal,
                        tipus,
                		descripcio,
                		imatge                		
                    FROM    cast
                    WHERE tipus = :type
                    ", array(':type' => $type));
                
                //$personatges =  $query->fetchObject(__CLASS__);
                $personatges = $query->fetchAll(\PDO::FETCH_CLASS, __CLASS__);

                return $personatges;
        }
        
        /*
         *  Para conseguir el ide del blog de un proyecto o de un nodo
        *  Devuelve datos de un blog
        */
        public static function getActor ($id) {
        	$query = static::query("
        			SELECT
        			id,
        			nomserie,
        			nomreal,
        			tipus,
        			descripcio,
        			imatge
        			FROM    cast
        			WHERE id = :id
        			", array(':id' => $id));
        
        	$personatges =  $query->fetchObject(__CLASS__);
        	//$personatges = $query->fetchAll(\PDO::FETCH_CLASS, __CLASS__);
        
        	return $personatges;
        }
        
        public static function getAll () {
        	$query = static::query("
        			SELECT
        			id,
        			nomserie,
        			nomreal,
        			tipus,
        			descripcio,
        			imatge
        			FROM    cast
        			");
        
        	//$personatges =  $query->fetchObject(__CLASS__);
        	$personatges = $query->fetchAll(\PDO::FETCH_CLASS, __CLASS__);
        
        	return $personatges;
        }
        
        public function validate (&$errors = array()) {
        	return true;
        }
        
        /*
         *  Para cuando se publica un proyecto o se crea un nodo
        */
        public function save (&$errors = array()) {
        	if (!$this->validate($errors)) return false;
        
        	$fields = array(
        			'id',
        			'type',
        			'owner',
        			'active'
        	);
        
        	$set = '';
        	$values = array();
        
        	foreach ($fields as $field) {
        		if ($set != '') $set .= ", ";
        		$set .= "`$field` = :$field ";
        		$values[":$field"] = $this->$field;
        	}
        
        	try {
        		$sql = "REPLACE INTO blog SET " . $set;
        		self::query($sql, $values);
        		if (empty($this->id)) $this->id = self::insertId();
        
        		return true;
        	} catch(\PDOException $e) {
        		$errors[] = "No se ha guardado correctamente. " . $e->getMessage();
        		return false;
        	}
        }

    }
    
}