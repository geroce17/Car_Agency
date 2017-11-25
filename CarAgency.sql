-- MySQL dump 10.13  Distrib 5.7.11, for Linux (x86_64)
--
-- Host: localhost    Database: CarAgency
-- ------------------------------------------------------
-- Server version	5.7.11-0ubuntu6

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;
/*!40103 SET @OLD_TIME_ZONE=@@TIME_ZONE */;
/*!40103 SET TIME_ZONE='+00:00' */;
/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;

--
-- Table structure for table `Agencia`
--

DROP TABLE IF EXISTS `Agencia`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Agencia` (
  `id_agencia` int(4) NOT NULL,
  `horarioEntrada` datetime NOT NULL,
  `horarioSalida` datetime NOT NULL,
  `direccion` varchar(100) NOT NULL,
  `noSerie_auto` varchar(17) NOT NULL,
  PRIMARY KEY (`id_agencia`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Agencia`
--

LOCK TABLES `Agencia` WRITE;
/*!40000 ALTER TABLE `Agencia` DISABLE KEYS */;
/*!40000 ALTER TABLE `Agencia` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Automovil`
--

DROP TABLE IF EXISTS `Automovil`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Automovil` (
  `noSerie_auto` varchar(17) NOT NULL,
  `modelo` varchar(25) NOT NULL,
  `segmento` varchar(30) NOT NULL,
  `color` varchar(30) NOT NULL,
  `estado` varchar(35) NOT NULL,
  `clasificacion` varchar(15) NOT NULL,
  `precio_estimado` int(8) NOT NULL,
  `costo_servicio` int(6) NOT NULL,
  `cilindraje` int(1) NOT NULL,
  `velocidad_max` int(3) NOT NULL,
  `imagen` mediumblob NOT NULL,
  PRIMARY KEY (`noSerie_auto`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Automovil`
--

LOCK TABLES `Automovil` WRITE;
/*!40000 ALTER TABLE `Automovil` DISABLE KEYS */;
INSERT INTO `Automovil` VALUES ('1','Mazda','hatchback','rojo','Colima','calisificacion',123,23,6,255,'�\��\�\0JFIF\0\0\0\0\0\0�\�\0�\0	( \Z&\"1!%)+... 383-7(-.+\n\n\n\r\Z-\"%+--+--++-------+-------+----------------+----+----��\0\0�\"\0�\�\0\0\0\0\0\0\0\0\0\0\0\0\0\0�\�\0I\0\0\0\0!1AQa\"q2B���R�#b��\�%3rs��$T�\�\���45C��\��\�\0\Z\0\0\0\0\0\0\0\0\0\0\0\0�\�\0)\0\0\0\0\0\0\0\0!1AQ\"aq2��B��\�\0\0\0?\0\�- �&�ZBkĳ\09��\�Y�\�(^0r:]ݞ\�:�v\�}밮V�,\��~�\�TQ\�ֽ�\�l�E�\�\�r��N\�|\���6?(\�7��Bf\�ި-[Sx!2${\�##\�\�מ�֞\�3�(?)��\�t[\�u��ڜy׻]]L��=�ޛ���\�4�\�08e;��\"�\�⌸e���i�X��r*N�\�QE (���J(�\���E-QKE\0��Q@%�P	EPQ@\��b�\��\nHQܜp8�Z�pA\\� 4G�d/v\�36U\0\��}\�\�\Z��Ǉ`�\���=���*�R\�ڨգЄ�eu�\0p�n�\�\�l�\�\���v?λ\�\�R}�q\�\��Ҥ��\�S鰳�\ne\�\����׷����ƕE�c)\"��0�\n\0\�v��*+;vPI�\n�\�5\�&}�NJ\�q\�*Vh��b6��c�\�\�~|W�@<�7R�9ؼ\�>�B�rPVʨ\�|�X�����Tv�|&�09#��a��W��Z<\�&�L(����\�Ey&�Z)3I���I@���ZJi(\�����(��\0��(���I@�H\�8\0d��5y�, �j\Z\��\�U��m#*G(%�@��\�\0�\�jI\�[x%2�I� �OP*A�6?�z��\'{�o\�<\�S\��B>Q��\�\�e\�S�=O��z\���J����\��\��o���.�\�\�\�Fؾ&7\�n\�l\�Fz�1\�Gp��E3\��x!,\� R\�\'���\����\�*�O��O�y\�.\�/�a�����8$w�>t\��\�$ӕEW�N0oΥ.\�q\�*��Y\\\�K�vb����:b�+d�	\�\�j�i��A��y��YNB\�\�ĝ�\�=�W��H�/�g�8#��tٚj,\�\�\�\�9�-���f\�\�\��4�#�\�֤Tנ��G�\�]��)���O6\���\�m\�	Rv�#�d֫�\�?\��]��r\�*\�\���+D�y�\�\�\�p�����-6FGbwW��\�u\rMt���Tg�X��QՏ>�W��5\��\�O\�\�\�s�q�\�y�����M[\�\�\�\��j\�U|R0����;U����n�4N����}Ȃ\�\���eWS�흸\�\�*\�mt��\"�\�P\�\�@#��;���n��cZ�i\�h\�R\r\�%�&��˔^EU�ӂP��4랴:r��\�\���\�\�a� `�Aޣ������\��D�\�2\'�$��O5��n�=��\�\�/�!���~\�\�9\�\�<V��P�\��\0{/�榋\�c�w|���(\�[��HW\�hdS\"��E<\�\�55\�}}k�\�X\�G*��\�Ǫ�\�*��N�+	5��\�\'F`�s\�pP:�@�\�.!��c\�׍�2ѿ��\�(�1Bq\�\��7\�\�f�u����\�lk�s\����N�I\�Mn\�\���ի�)*���;�`�\�p\���g繸Q���\0��\�QFKԢ\�/Cu�Z�-,q�\�9FF �� \�yi�R�6qx��l���;�}��\�y�o\�=\�\�j�Y\�p$-^*��c?�_�\"\�Oi5��p���H��\� _�}6\��rb\�:�H�\'Z��%\"\�HLL�\�9\��\�lH\�ω\Z]\���R1��)\\��o�O\�W`j�\�J�Tz����P�g\�~����U��61V<�C�On�,j��\�\�e��\�\�\�\0jJ멭�*e\�N\�9�\�\�Z�\��\r~e\�f��gf�\0��%\�B�8v��u-��9&�m�\�x�#�5#�����\'\�V�\�O�R\n\��\�H�\�\�\�]#|\�uo��T6F|�P�\�\�bO�:�\�H\�E\�i�\���\��\0�\0\nc5\�~�\�Ƿ�wG��\��\0�M!�v��vȬ\�\0\�=�i̲\nb^��\�{,�\�$%\�\�\�����ю\�\�g��9`�m�\��\�k�\\g\�ԟ@*\�\�C+nV\09\�U���Dg�%�5��d�\098�>\�!׼6\�8ۀ9���\�é�]\�S\�3\�)�,�\�\�\�Ɇ-r�N\�T�L`�\�\�Y�C\�?\�H?�EI�����\�\�̟ү\Z�O\�\� �\�!\"��H ���^��#�\��g�\"h�tw\�-.xe�\n\��.\���\�g�_����DlU�LH0X�d�;����s�\0�\�7��\�K�\0�R�I\�\�mm\�2F�\��LI��*�B-�vf�4�\n\�ܨ%QLN�8*O�\�\����\�f\�\�:��*ɒ>FA�ӵX��GR����# �B*�\�\�-�\�(\�\�]ϰ�tݴ��Q\�R�\�\�\�~&\�\�ٽ\�0�ݧ��\�(\�dV�1G�+�㸰IZ{�>$�ls:\'\r\�\�8��VtU����8(B�@_\��\��Uk�4\�\�K\��6�L��ʍ�U�\�\�56i�j\���ȁ��\�<`z���~��\�wi�y\�*Ѩ�V\�\�B\rW�qN��\0XԴ\�\�)�M�\0w���\�\�E^B\�94��|\�t�\�;Qy8�\�<\�\��`�x��^5e��\0^	k2�ء�\0XWz��\�\�\�\����\�i���o;F�F�%��I}\rq\�zj\�\�0��&�9ff>\�ēK4�{\�\��\�\�&\�\��\�&Yʿ���cČ��<�����\�S��I\�#Y�[�\�F\�w	���ʜ�^u�\Z\�\�3\�K\"p\�\�\�zj>ף�#�\�-��%�\�%�\r\�T�\r,�e\�}��\0\��&\�;�~ʪ�ɟ4�\�\�m��q\�[WLE*\�[��\0\�D1�\�}\�@l�\�i]�[\�\�Cl�O\�b\�\�\�\\�U�m,�\�i!EPj�`j�Ԗ}�C�\�a�S\�J�\�5&��8IH\�ק�M�\�y	oR=j��.#Q\�PRZ�؁\�ެc\�_�R)&uj\�)�ާ\�NdQ�?\��5Wm^%%�!�\����V�,A�����\�v\� x���%�\��84�}�}.�)(\��J�wJ�$�\0��O$��\�dc\��?Z��A��4\09ns��oʫ:��\�13�����GŞy\Z��:�|rt�\�^| \�\�#�\0�=�\�WN�\�p����R\Z%��FuOC\�\�=\��hi�>_J�j\�(�q�\�ּ��~\�>�T��\�\�/�H2H<��\�7Kh�\�#\�\'�\�h�<]�SL�ߏ\�\�lm�䄌N4�7{?\�\�I/\�\�ú�\���zL�*�X�\�Ϋ\��G+�`�\�\�Ǧ|\�R	S�NL�䕢B\�ɡI\'���\�\��M_~?jG�\�=���\�[�/ҦXz:67J\���g\��+DW\�;U�|pA�;c�Q�O^\�PE�\ZdL�\�ʹ�\�M{Zh8�&x��n\�\�yEp��I\0h\�YO��G\�+�k�\�\�\\��D���ܒ\0�M7�\� �\�)�r<�Տ�4=� Q��˫[+li\�W�\��\�c\�Zmu}j\ZY�f\0g\�kݽ\�8܎���A��;QMn�b�\0[*&����\���Y\�\��\0�O�L��5�AfH\�O��\�On.����\�\�\0?3B)�\�k��\�H��p\�{2�A�]����\0�4�P�Ю\�e��\�\�d\�1�\�*\�c\�\�I\�U?A]\�sJUG�5�g((�\�\�[���0Q���\���ԕfd�\�\�\�\"\�\�\�\�z��W\�r\�<;l;�{\���\�#Lx\�{bFuˡ�8UTy�;�{~\�\�D )�{\�;�\ZPw\����g��ӵgY�6BT\�k\0q\�\��U7#\��\0\�\n�mv\0e���\�\ZB���v�\�1SfR\��U�>T\�\�1�\'(���楫Ta�%4is+)*H\�>��\�\�Q\�cH\�c\���?\�ew��9\n���\�\r;�A\�޼�\�\�>Bm\��oD\��!��\��gҸ\�\�a�⑐~>H?�Y�.���xϠ�\�\'����\���c<�㊾�j\\3\\�g�;�\�s3\�p\�\�ħ&F\�\�9¯��E|v��\�\�\��ʁX�T��\�Z��DT�\0?*�|t�\0\�m��?޽x��崼��H\�\�:5\�Ɂ�)�>\�r�\'�==\�M���<wѫ@\r��6\\��K\�Þ1]zˢ\��\�&�qHco\��FP�C��e}?\�2\�ƛp���DS���8A�~\�\�75ϒz\�\���_ø$\�\�]\�9C��;�$g��Ŏ��e��A�2�\�|��8\��H�\�����I\"q��0�Xd#Z7\�ۅM.|�-�=\�a��E�2�\�k?gm. �m̅��\�p�9u�-��\�=жgOF��d�\�<G�\�\��\�F�0\rb�6n-����FtS\�\��\�k\�ހ�I��fB!D>̊�\�Fk�\�Q_��\�h��iz���{\�3[3�ǌ\�\�\0�M/�=Hػ\\��\� ywd�\0!W���q���\r\�o#�!@\��r+0�/�\�\�}��8���\01����I��\�\�k[\�P`]��\�FF=94\�➟z�H\�EM�|���\�������I�\�\�|=\�1�\�7sN�.����Á\�rp=�N�AT\����,n +�qK�1Ȋ�\�*x\�3��\�\� ��\Z~�1_\�DWڲLۄ�\� �\0�ճE�ԙ\�\�\�C[~�\\x��1�\��T5-��ur�\��Q\�3C\rҷ�D?0+\�\��\0z�Ϗݗ~�\�\�l-ż�f\��[�n?J��\�jږ��%�ܴ\�O��*\�;mg%[�\�k\�$9��i\�vz��UL���	KIE\0���owq�{�P��\�\ruKݠ�}\�?J�\\Fޙ=�L���\�L�\�`�Z\\dc<�j��\�7Y\�a\��$\�l�\�;�\���\\�\r�~e\�\�V	b\�O\�\��M^\"�H�\�\�hz�nT\�V\�\�@4\�Uԥ��Tnr}D\�d3<��61����jy.������\�.�s\�5$\��\�i��;W\�QWz�:2\0F\�ހ\�hZP��ی�ì�i$UT#�wp9;G������%iѽ6��\�;��w�d�䓹��Z\�\�7X\ZG�[r�\�`�z��\�g�\"\�Z\�T�!t\���q[��> yI�\�(\�\�ɫp�\�Bm;G!\n�����\�*�\�#����FI�\\q\"� �\0��J�ъ8�E�~�.��\�aor�q\�\�n{d�\�Gָk}�\�&5���8#;�p˶1�_��V��B*l�\�\"���m�\�bȦ\�\��\�F�^<\�L�m�Z9Z��lrx?�B\�k\�R\�r\�*(w\�q�I�Y\��W\�\�<ČG�(�>P��u�k\���ID�)\\\�*�\�\0\�$䚼\n)d|��3��m5\�ཷ�����\�(x �.T�%tƪӛ\�L�$�ݜ\�\0\��Ex\�K/�Yf\�Ix�*G�n,~\�\��w\��i�\�7Zl\�\�p$h\�\�䁉�\�I\�|\�WM[�tۆ\�5���q\�YC7l�R>\�\�\�4TE\n��T�@��k��\��<�k\��N�:�R(Ԉ\�Ӕ�H�z֎)qF*�\�ش�QB�Ef�(�4P\\\�USO\�\r\�g*Te\0\���ubԥڄ��PUg^�\n�g�lלR5z�;:\"z�O�t	�\�\�\�+�\��c<\�\�Ҥr=y�\�u�\�#\'\�=�,rc\\��W�\�^(�\�j~m\�\�ڢ�\�UT�w˜�\\��JQ�N�Ώ78wU㓏\�N/T̑\\�\�9Qϙ��L\�>\��,~U̞\�޼zr�\"���L�K\�ͺ\�Uߗ!T��\��y�sW�P\0�T\�E�CC���3�\�\��PQ�G��nrl)	�5��f\�\�#�+YrJX�n�\�=�$V��w:F��3Uo�:鼱�Wl\�\��u\���\��u��B\�=B\�Qt����Ր#\�n\�W�\�\�rZ8ܥ�ܳ^I�~�\��\�;�\�̿0�0�sY\\|E�{�#��\�lP2��\��\��f�-�b�\�\ZO\�K]NHi�l�\��\nJ`�\'\������c�iB(��\���\�{g5��������\�W�%\��̤��\�\�Ҭq��\�\�}&\Zb�GB\�A#�\�\�\�\�F�\r�Ң��\�n�\'���Dl\�=�0@��\��?�J�6��\�J�h�\�D޻d���\�\���\�\ZW}\ZԒ\0	$\0I<\0>�I\�>)\�p1O�a��p�\0���\��/nu\�Z9H�n�q���\0�<ɦSO�\��h���u\�\�\�\�1\���$Lq�%�M���\�\�Y\�\'�~_̂@�\��o::�F�dAz�+\�5�\�i�|�\'\�\'�\�m\0�\�\'5+\�->����3��\�\�>^\�\� �U��qĪ\���\\\�k�\rb�t�m\�pĒ�J��\�lU��c ��ա\�#�A#p�1\��\\\�L�h\�ET\nZJ(���#��U@X�3\�5ʜrb;W�zi�!@\�\� �\�5mEU!@�Qݞ��	\�z�{�m\�\�\�\�\���\\�\���LD\�#�I\�(ծ\"�\r:t�InX�\0m\'{\��\0P���R\��ϖi�jљ�\�\��F�jĂ;ڡ/E�nVȝ*\�s�g\��8�#\�֦ͨd9�)���<T��N\�R2�\�y]\�.x+�س>\�eϹ\��Uçzf;v22HF2q��\�<��\�xK�*\�d�\�s޴\�c�g��W\'�M%O�t���5\�y�\Z\�u\�X�b\�9]Dv�\�5,�瑟0[�V��_���\�Tp��fc\�\0��A�z4r\�jv�\�\\L\�Uʤ\�ē�T��u\��SR1\\\�f\��g�Q�T�Riu�\�@�\�}r��\�4\�>��\�Q�\�\�跫*\'\�n̛G`FZ�h�m.�oX2	C!R\0\�9=�\�\�J\���\�\�zk�届\�\�.(�	����~¼�V�-m\��\��<�������sֺ�\�@�\��M!\�\��\�|�c���\�\�N\�\�\�\�o�\"�2�\��A�\�*T�Vu�4G|J_�f����\0Uq�um\�׀\�\�B�8PP�\���?:�\�&\�\�J��!�|C\�\�U�M�\nܞi\�M�\�w�\\v�QK\�O,���I�]\�0ie>D����\"�\�\�\�l^D\�\�B1\�\0�@\�5l�M\�2\��$��\�& \��TQ\�}I���I\Z��\�QA<�\�G<Ὣ΄/�n\�Q\�\Z{k��wn\�\�\�%[� `��nȜ\�N��t\�[j\��\0�\�@�ӒG�a�T��]!��L3,�2\�<��\�ܒi��f�>��Lv}����\�wd�~X�\0�\���Y�W��\�ɖ%b��!�x\�(\�v�\�\�O�^�YG�\�]\���S]C2>�m��\0��3\�\� ;�D~�W\�,u{[\�$KW�w�ʱL��~\�^uo\�}V�j(ooR���_��̒oj1)D\r�_��{�\�e�y��\�E9}\�*����\�<Փ\��\0\�o�\�m�\"\���;n7U�{{T����,\�\�\�5؍{\�@��q�9\\�w\�?m�Q���dd��\�\�\�\�@PQ�ӳURKU2\nZJ(�4Q@E�$;�\�\�\�\�\��Uհ�\�\�\�ܤz�+0�\�\�pW�8�\�/�\�~�5N,o*ɆC���*�\�1\�\�\�5\n\�\�\�\�h\�Ġ�\�\�ʫ~Ή�\�Y\�Ȩ��r\0\�3\�mfp,�\�͟Oj��\��	�)bx\�\�\�)\�\��$d�Lӎ�\��\0q\���8\��\�zm�i�	v�Y\�\�\�x�r\r\�뭪����]\�\r�Kv\��W\�)>P=�gҤ�(B�&8lևiU��J85\�D\�E��y\�^Z NO�j��3@!A\�(\�;\�Fh��\\њ6\�.i3@F�&��\�Ml�B��`O��0\�4i�H\�1��JƑ\�b��ϖ\���4P�+}]\�Qޅm\�9��\�^\�\�\�f�c�\�a���\�G�\��bkB\�\'6,\�_Z\�	F\�\�#��\0��O�O��)M\�\�=\�~.\�����\�WB a\�K.\�\0�\�� ZJ3E\0R\�\nZ(���CT����u�nP�\�\�j\�j�ַ\�JI�\�֡�\ZV�T��:7\�c��\0�{V\�*O�Yb,�\�9\�~��G��9��z�5\�\� i�\�\�́\��Td\Z�I#\'�ʪ$r+й �2{qD\�q�5Յ7�$���\�]\�lBV\\d@�\�F\�\�N2;\��Ӌ�ar���g��n�d�?G�x]\��\�$\���\�\�Z�\�\�\�P\��\�\�\�\��|q��\�I��l��CH\�>�Ŭ�$�/��[j�1\�\�A��n\�\�j66&�?7�\\\�z\��i,|YVQp�6�Y\Z�*Ol\��\Z\�u~���ey�Fe\�|\�n��x�)\"GU9P\���\n�v�Ǡ�ԣG����V�\�\�\�K-\�\0�\�y�@`yD7�`�\�v��n���!���C$j�ɍ�\�\�-&�s\�~]�\�=\�\�u\��D��]\�\�\�S�T�W\�q^��\�K$�5�\0�c���\�)+�8\�S�#t}}���ܗ�π��\�%�CDi�|��\0�<\�\�@�M\�\�\�˕��V�T�6�\0�~\�\�\�U�>��S�a��\�P��o\�\�	\�Nt�����E\Z�9¢ \'\�$h\�C�k��\�z֧%\�ֲΌm�\�2��\0J|���\0\nI>��[k�CQ��[�F��\�P\�\�ܜ��j�[�\�s4񢣻nr��\\\�?3�\�\�\\.�J\�\�i��F!�xQ$v;�\�<TnDnVgV}g����Kp$�\"�\�C��\�\�\�g��:�\�\�\��\�\�tc[���\�8�$q\�\�=7q���\�h�Lq�$�X\�R����$y��u\�r�\��A�\"�\��\�O$�\�\�m��g�]w8�8]\�\���`)+C\�p��qMn�#j#�\�&g�0\�I����b&ېA\�\Z\�&\�+G�E$H\�*���\\\0�Wj�B�~��p��Bc\�Y����\�\����\�C|}>�\�\�\����Y\�dP�+s\�d�jci\�7l�!��*X\�q�\�>f@Ű\�8\�\�\�W��Ue�_fp]\�\�r\�x\�\�t�����2}\�d��s��\�p�StHR�tR\�\�+ﶘ\Z\�5�\�V-��\�Ⓦ/\�@#�\��\�Ctn\�|C{\�x/�I�/�\�\�\�H8\�i�􅣹��B\�v�&bW%�\�+�1n���\0�����$\�oq� |\���蓾>�����R]\�Q��\�\�va\�{��\�I�$�yS��\�;\�o-���P\"�M��\�$`�\��\�*\��\0E\�|_F�L\0d�C�;ɷw8��ӥ�c�\�J������w\0J�$g�f��C�k�pQ�%ff(��PQ@!5������V2\�2ɜd\�\��\�p	�5�kPfM\�\�\�\�\�ϷY+G��lSɹ�\rC*��[ q\�\�ʹ\�\��:�	\�\�8\'�J\�\�(� s��t\�P�YY#nl\�w�7�6z�Q\�\�$c�\0�A\�\�p��\n���#�\�V->\�#U_3�\�\�\�3�▭\��l�F2\�\�\� ����q�\�\�E(�vϯ�\�\\z�\�VE0$<� s\�ǽq��=\ra�\�\�Tv\�*�Qr��\�v[���L��\�LG��B\�\�\�bA��5͏4�Tq�f�n\�Wz�\�I�\�ќ\�*j��\�\�\�S�	��X�QE\�IE\0�RQ@-�PE%KIE\0QEIKF(�\�');
/*!40000 ALTER TABLE `Automovil` ENABLE KEYS */;
UNLOCK TABLES;

--
-- Table structure for table `Zona`
--

DROP TABLE IF EXISTS `Zona`;
/*!40101 SET @saved_cs_client     = @@character_set_client */;
/*!40101 SET character_set_client = utf8 */;
CREATE TABLE `Zona` (
  `id_zona` int(1) NOT NULL,
  `nombre` varchar(15) NOT NULL,
  `consumo` decimal(5,2) NOT NULL,
  PRIMARY KEY (`id_zona`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;
/*!40101 SET character_set_client = @saved_cs_client */;

--
-- Dumping data for table `Zona`
--

LOCK TABLES `Zona` WRITE;
/*!40000 ALTER TABLE `Zona` DISABLE KEYS */;
/*!40000 ALTER TABLE `Zona` ENABLE KEYS */;
UNLOCK TABLES;
/*!40103 SET TIME_ZONE=@OLD_TIME_ZONE */;

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;

-- Dump completed on 2017-11-20 19:45:43
