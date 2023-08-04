<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the installation.
 * You don't have to use the web site, you can copy this file to "wp-config.php"
 * and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * Database settings
 * * Secret keys
 * * Database table prefix
 * * Localized language
 * * ABSPATH
 *
 * @link https://wordpress.org/support/article/editing-wp-config-php/
 *
 * @package WordPress
 */

// ** Database settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'db_maria' );

/** Database username */
define( 'DB_USER', 'mrafik' );

/** Database password */
define( 'DB_PASSWORD', 'password' );

/** Database hostname */
define( 'DB_HOST', 'mariadb' );

/** Database charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8' );

/** The database collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication unique keys and salts.
 *
 * Change these to different unique phrases! You can generate these using
 * the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}.
 *
 * You can change these at any point in time to invalidate all existing cookies.
 * This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',          'fVK0b[v<Mwt}GdEEBz._rtf|U;6-6u4v5Q>Qij-AM:#z9E@}W/tpkfQa%H(2`gG*' );
define( 'SECURE_AUTH_KEY',   ']N^dp+03Q|)nvb.M6UJK7QILW(*V*[%Ni!LZcP.p8GNm]Y@Ul kQQ9/j25^dlT;|' );
define( 'LOGGED_IN_KEY',     '5mAuq,N==}W3P?il/ H:c,&jg9o:e.:nfP9B]tEkTz`Tw_*uVvIea?2&$4-J.@^@' );
define( 'NONCE_KEY',         'z2|7?!zRme@w+a,%WCO9>_[an_f5Hsz_P7R)q%Qy+Z%#La?23SJJ} y{5oE9A!5;' );
define( 'AUTH_SALT',         ']cQ+}74#_4(r %C-CHHQ[tFnJ?(?6NyrLk9*Hw@<Oj*THk$kvYSx,jN3Ce[LAI?/' );
define( 'SECURE_AUTH_SALT',  'We*EulhhR`OA7SQc(++s:iDl{KF>Qz/ZoA.69mp|g_~&P~[K,1:JuDW3iI+HMx#>' );
define( 'LOGGED_IN_SALT',    'zls]jNnNP,.Xfy-_zv0Pey6Wl=;eTsg?L%>[opyoWfdwkEGqHF#*4ZG&)F[_<g&F' );
define( 'NONCE_SALT',        '??SAt-/#Vc3@_}^Y~11k|5GRy)8$#In6dAZ2i7;CAWZ7]YUld~iSpKFg!N-Le4|W' );
define( 'WP_CACHE_KEY_SALT', 'rC#%#HMrqjO|DWPIQGQ6/K4N/@R|M!cs(1T`EjF(M*siK<D9JbIXBxZhg*-MwR?=' );


/**#@-*/

/**
 * WordPress database table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';


/* Add any custom values between this line and the "stop editing" line. */



/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the documentation.
 *
 * @link https://wordpress.org/support/article/debugging-in-wordpress/
 */
if ( ! defined( 'WP_DEBUG' ) ) {
	define( 'WP_DEBUG', false );
}

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
	define( 'ABSPATH', __DIR__ . '/' );
}

/** Sets up WordPress vars and included files. */
require_once ABSPATH . 'wp-settings.php';
