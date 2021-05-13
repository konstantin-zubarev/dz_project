<?php

/** Имя базы данных для WordPress */
define( 'DB_NAME', 'wordpress' );

/** Имя пользователя MySQL */
define( 'DB_USER', 'wordpress' );

/** Пароль к базе данных MySQL */
define( 'DB_PASSWORD', 'Pass121##212' );

/** Имя сервера MySQL */
define( 'DB_HOST', '192.168.11.20' );

/** Кодировка базы данных для создания таблиц. */
define( 'DB_CHARSET', 'utf8mb4' );

/** Схема сопоставления. Не меняйте, если не уверены. */
define( 'DB_COLLATE', '' );

define( 'AUTH_KEY',         'Zc@9w#K14FxYrB*F{:#>^=-&V-E*VP&@7~Y1:$:BH (t7;UCxj3=Uta%2csT$iW#' );
define( 'SECURE_AUTH_KEY',  'JVBDmCi`o(={z5fR.kA;5MyLYb$9}tKA#96Phc_W%&;Ed/%q&4z.Pjm[F `x@Wiu' );
define( 'LOGGED_IN_KEY',    'L]?ha=z2 7ctcg(M; LQ_Ntd+A%uUqZ16w/`AFxBj4[L01iv>9%paCX]{=lk9]@d' );
define( 'NONCE_KEY',        'W?@_X`_f 9ag9_Wgndgpd.jyP7`i=IaWU;0I)$|yw[#@Gx,PhOVZp RDNvVKi+3(' );
define( 'AUTH_SALT',        'TN7`b:D8BilPGQ)f$Qh6A*!U4!]kLc`N@kPz#NQI}UTd@/=2*xV5)W}vt0MYxZz}' );
define( 'SECURE_AUTH_SALT', '.5l_KP>u=J7XmUGY*El~Q(/WN;)KQKg!BZ[:|WdXwo3F?v2WA.ri6$kPGTQh_k:w' );
define( 'LOGGED_IN_SALT',   'zS-v)U*h6EHD48BzMQwY@cBQxLY9(^Em>6yW`R-lW`58]^-#k}:B;;AuHu 9xIhN' );
define( 'NONCE_SALT',       'q+v7{H+sl?*Hh-/FZ(a@d<gNKp:1t-uo_?T=vTQLL.B$ZV=S-mSg9F@{>nrEG.z,' );

$table_prefix = 'wp_';

define( 'WP_DEBUG', false );

if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}


require_once ABSPATH . 'wp-settings.php';
