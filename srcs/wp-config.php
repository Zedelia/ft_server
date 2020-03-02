<?php
/**
 * The base configuration for WordPress
 *
 * The wp-config.php creation script uses this file during the
 * installation. You don't have to use the web site, you can
 * copy this file to "wp-config.php" and fill in the values.
 *
 * This file contains the following configurations:
 *
 * * MySQL settings
 * * Secret keys
 * * Database table prefix
 * * ABSPATH
 *
 * @link https://codex.wordpress.org/Editing_wp-config.php
 *
 * @package WordPress
 */

// ** MySQL settings - You can get this info from your web host ** //
/** The name of the database for WordPress */
define( 'DB_NAME', 'wordpress' );

/** MySQL database username */
define( 'DB_USER', 'wp_user' );

/** MySQL database password */
define( 'DB_PASSWORD', '1234' );

/** MySQL hostname */
define( 'DB_HOST', 'localhost' );

/** Database Charset to use in creating database tables. */
define( 'DB_CHARSET', 'utf8mb4' );

/** The Database Collate type. Don't change this if in doubt. */
define( 'DB_COLLATE', '' );

/**#@+
 * Authentication Unique Keys and Salts.
 *
 * Change these to different unique phrases!
 * You can generate these using the {@link https://api.wordpress.org/secret-key/1.1/salt/ WordPress.org secret-key service}
 * You can change these at any point in time to invalidate all existing cookies. This will force all users to have to log in again.
 *
 * @since 2.6.0
 */
define( 'AUTH_KEY',         'PH|A]/6Zd(E}^wp0HS+.*S)k6PbJONwa9mp7v]HRw:dnCuwt:#LCj^KV9H7zq <P' );
define( 'SECURE_AUTH_KEY',  'L=,GI)WYD[koAP:e ;j_pqe]3%L}.T}S H[]g]r!Lyw_ZOgD,l35fO^n@gL|>0kH' );
define( 'LOGGED_IN_KEY',    'j,8<-?dO(`*xF6sf5*}kdDG?^P-n56y./%%]w=>kG~#}KsKIM<J3DC-*z {zK^V3' );
define( 'NONCE_KEY',        '{Uq)Y6=IXxp*uE`7Oih;9n*h.alYD]ypV`sZ,rl>ce~#i>I-4,/9zM-ya^`@pI|?' );
define( 'AUTH_SALT',        '-D#}`sKW9jcECEO,Wf#=6MF#`cw=O0wV>+a/T~)_oxB!o*r(Gx9v9BzSZg4j}<0Z' );
define( 'SECURE_AUTH_SALT', '<I$!(Ds5L/r63(n`ayq};ZOr(Iw=7y6`&5|3~B%W5^m<y^OTSj348CGc_.*LEG5Y' );
define( 'LOGGED_IN_SALT',   'k>s!83d8vP E9?Nd$&}H|kQ69KKXbe.Spg7f>u{,I~@WQi/SC,vj9jZlk@SGW-}~' );
define( 'NONCE_SALT',       'd2#q(ZzER8AtC)Oq/e ))zhNe#n;7C$-+?$+s: B2B?Bk<Fc4F;(f^`!TC$dD+3c' );

/**#@-*/

/**
 * WordPress Database Table prefix.
 *
 * You can have multiple installations in one database if you give each
 * a unique prefix. Only numbers, letters, and underscores please!
 */
$table_prefix = 'wp_';

/**
 * For developers: WordPress debugging mode.
 *
 * Change this to true to enable the display of notices during development.
 * It is strongly recommended that plugin and theme developers use WP_DEBUG
 * in their development environments.
 *
 * For information on other constants that can be used for debugging,
 * visit the Codex.
 *
 * @link https://codex.wordpress.org/Debugging_in_WordPress
 */
define( 'WP_DEBUG', false );

/* That's all, stop editing! Happy publishing. */

/** Absolute path to the WordPress directory. */
if ( ! defined( 'ABSPATH' ) ) {
        define( 'ABSPATH', dirname( __FILE__ ) . '/' );
}

/** Sets up WordPress vars and included files. */
require_once( ABSPATH . 'wp-settings.php' );
