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


namespace Goteo\Core {

    class DB extends \PDO {

        public function __construct() {

            $dsn = \GOTEO_DB_DRIVER . ':host=' . \GOTEO_DB_HOST . ';dbname=' . \GOTEO_DB_SCHEMA;

            if (defined('GOTEO_DB_PORT')) {
                $dsn .= ';port=' . \GOTEO_DB_PORT;
            }

            //If you use the UTF-8 encoding, you have to use the fourth parameter :
            if (defined('GOTEO_DB_CHARSET') && GOTEO_DB_DRIVER == 'mysql') {
                parent::__construct($dsn, \GOTEO_DB_USERNAME, \GOTEO_DB_PASSWORD, array(\PDO::MYSQL_ATTR_INIT_COMMAND => "SET NAMES UTF8"));
            }
			else {
				parent::__construct($dsn, \GOTEO_DB_USERNAME, \GOTEO_DB_PASSWORD);
			}

            $this->setAttribute(static::ATTR_ERRMODE, static::ERRMODE_EXCEPTION);
        }

    }

}
