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
INSERT INTO `Automovil` VALUES ('1','Mazda','hatchback','rojo','Colima','calisificacion',123,23,6,255,'ÿ\Øÿ\à\0JFIF\0\0\0\0\0\0ÿ\Û\0„\0	( \Z&\"1!%)+... 383-7(-.+\n\n\n\r\Z-\"%+--+--++-------+-------+----------------+----+----ÿÀ\0\0½\"\0ÿ\Ä\0\0\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0I\0\0\0\0!1AQa\"q2B‘±R¡#b‚Á\Ñ%3rs’²$T“\á\âğñ45C¢³\Òÿ\Ä\0\Z\0\0\0\0\0\0\0\0\0\0\0\0ÿ\Ä\0)\0\0\0\0\0\0\0\0!1AQ\"aq2‘±Bÿ\Ú\0\0\0?\0\Ü- ¤&€ZBkÄ³\09¨ù\îY¸\ì(^0r:]İ\È:v\ç}ë°®V˜,\äù~•\ëŒTQ\éÖ½ú\Ôl½E•\á\çr¼ñN\Ş|\ç•6?(\î’7‘¯Bf\ÏŞ¨-[Sx!2${\È##\Û\Ì×›Ö\ä3¶(?)õ¦\åt[\àuº‹Úœy×»]]L=ñŞ›ƒš\Ô4ğ\ä08e;ô\"¤\ËâŒ¸e¶–›iò–XùŠr*N©\ĞQE (¢–€J( \Ğ´”E-QKE\0”´Q@%´P	EPQ@\Şöbˆ\Ì±\nHQÜœp8¦ZƒpA\\’ 4G¹d/v\ß36U\0\áø}\ê¿\Ô\Z¦£Ç‡`£\íğ=²ÀŸ*¸R\çÚ¨Õ£Ğ„”euÿ\0p´nû\Ø\Çlù\â¸\éò±õv?Î»\Ì\ØR}q\Ó\×¯Ò¤Š´\ÎSé°³‰\ne\Ç\âõúú×·ŠœšğÆ•E“c)\"òò¥Š0£\n\0\Èv®—*+;vPIú\nŠ\Ó5\È&}ˆNJ\äq\Æ*Vh­¢b6¤»c°\ã¹\à~|W´@<ª7R¹9Ø¼\É>şB¢rPVÊ¨\î|ûX‚ª¯ »Tv‰|&ˆ09#†öaÁ©WŒ­Z<\É&›L(¢Š’¢\ÑEy&€Z)3Iº€÷I@¥ ŠZJi(\Í ’–Š(¢Š\0¢Š(ŠõI@ªH\É8\0dš”5y†, ñj\Z\áı\ÄU¦»m#*G(%†@õù\ä\0\æjI\é[x%2¦Iü öOP*A¥6?…z¢¿\'{Œo\é<\ëS\åˆB>Qôª\í\Ëe\åS€=O™¦z\åıúJ£€«€\Öó\Í£o´’.«\É\Ú\ÒFØ¾&7\àn\Çl\×Fz›1\ÛGp E3\Óôx!,\Ñ R\Ç\'ü ®\Èø¤\ä*’O£O¤y\Ô.\Â/¿aõªö¡8$w÷>t\Çü\é$Ó•EW¾N0oÎ¥.\Ôq\ç*òõY\\\åK¤vb‚‚û:b¶+d¼	\Î\ïj¸i÷¢A‘ÁyŠ£YNB\á\ÛÄ¿\Ü=ªW§®Hœ/ñ«gû8#÷­tÙšj,\ã\Õ\é\í9ù-ù¢£f\Ö\í\Õö4ƒ#ƒ\èÖ¤T× ¤ŸG˜\Ó]«)ø÷ªO6\é®\äm\Û	Rv¯#œdÖ«š\È?\Êı]§ûr\Ê*\è\Ó¹¢+Døy©\Ü\Û\Åpº«¨‘…-6FGbwW\×u\rMtû¹šTgX°†QÕ>œW½«5\èí¢\ßO\ß\Æ\Ãs¹qÁ\Îy¨ş„»ŠM[\Æ\Õ\Ö\à¿ôj\ÈU|R0¡¿‡€;U­­©nª4N¬ø’º}È‚\â\ÑöeWS•í¸\È\ä*\ïmt®‹\"ı\ÖP\Ã\è@#÷¬;ü ın÷şcZ²i\ßh\ÓR\r\ì%²&õûË”^EUœÓ‚P‹ö4ë´:r¤†\Ô\Ë»\Õ\Ôa¹ `AŞ£ô®¾»¹‡\íúD\Ì2\'‹$©ÁO5œõn=¥‹\Ø\Ï/ˆ!»£~\Õ\É9\í\È<VğP¢\ãÿ\0{/üæ¦‹\Ëcw|®ş(\ìµ[¿°HW\ÅhdS\"†ŠE<\È\ç55\Ñ}}k¨\îX\ÃG*Œ˜\ÛÇªŸ\Ä*·ñ›NŠ+	5Á–\ê\'F`¥s\ìpP:›@¸\Ò.!º·c\á¶×ı2Ñ¿¨ı\Å(´1Bq\ã‡\àú7\Ä\çf˜u±¥¼—\çlk’s\è¹¬›NI\çMn\Ö\äğñ¥Õ«ò)*®ù¯;‡`ø\Ñp\ÏµŒgç¹¸Qı‘ÿ\0˜¯\éQFKÔ¢\Ë/Cu„Z”-,q˜\Ê9FF ‘À \äyi÷Rõ6qx²†l¨ˆ;·}ª£\èyò¬o\á=\ã\Ùj’Y\Êp$-^*”şc?­_ş\"\ßOi5­üp™£ˆH’ \î« _œ}6\ãó©¢rb\Û:ğHô\'Z®¢%\"\ŞHLL‡\ç9\ïş\ÕlH\éÏ‰\Z]\É’øR1û’)\\±ôoºO\çW`j¬\ÊJŸTz¤¥¤¡P¨g\î~§÷©“U©®61V<ƒC£On‡,j›¨\ê\áe‘ü\í\ß\Ø\0jJë©­*e\åN\Ò9û\Ø\ÍZ’\ÊŒ\r~e\àfªšgfÿ\0§%\ÙB°8v¾¾u-§¹9& m‚\ÈxÁ#ô5#ö¢ ô\'\è•Vó¨\ÍO¨R\n\à\ÊHô\ã\Ë\ë]#|\Ñuo‹‰T6F|±Pú\à\ËbO”:´\ÕH\ÖE\äi\ÕÁ”\ã²ÿ\0ÿ\0\nc5\È~„\İÇ·µwGÁ©\Ôÿ\0¬M!‰vövÈ¬\Ì\0\É=ıiÌ²\nb^õ\Ã{,ñ\ß$%\Ã\È\Óø„Á†Ñ\Ë\Ûg¶¾9`¹m¤\éô\Âk•\\g\×ÔŸ@*\ê\êC+nV\09\ÏU¢œ»Dg©%‹5»£d\098ó>\æ¤!×¼6\Ã8Û€9ª¼†\ÔÃ©­]\áS\Ş3\î)‹,”\ê\è\çÉ†-rN\ÃTL`÷\í\ïYùC\è­?\ŞH?üEIô«ºò\Å\ÇÌŸÒ¯\Z÷O\Ú\Ş \ê!\"ƒ¸H ú‚¤^¶Ÿ#š\äóg‡\"h¤tw\Ä-.xeº\n\é«.\ÉŒ…\Åg½_ª¦§«DlULH0X«d¾;€óô­sÿ\0…\Ú7ıŒ\ŞKÿ\0õRúI\Ø\Úmm\Ò2F–\ÇûLI®›*²B-µvfŸ4‰\n\ÛÜ¨%QLN‡8*O \à\Õû¡õ\Øf\Ó\á”:€‘*É’>FA†ÓµX§¶GR¡”Œ# B*¹\Ã\í-º\Ú(\É\É]Ï°Ÿtİ´ş•Q\äR†\×\à\Î~&\É\âÙ½\Ş0³İ§…\æ(\ãdVú1G±+ğ§¦ã¸°IZ{…>$ƒls:\'\r\Ç\Ê8«§VtU¥ú¨œ8(BŒ@_\ìı\ÓúUk¦4\ë\ÍK\Æ÷6¬LˆñÊU£ïƒ\È\Ï56iò§j\ìõñÈ¦ª\ç“<`zõ«~¡¢\Åwiöy\×*Ñ¨÷V\Û\ÃB\rWºqN©ÿ\0XÔ´\ï\Ã)ğMÿ\0w‚¡À\İ\îE^B\Ô94’ô|\Öt›\Í;Qy8™\Ò<\ã\å–`ıxü^5ešÿ\0^	k2§Ø¡ÿ\0XWz¬™\ç\å\È\Éù€ş\Íiº–‹o;FóF¢%‘¹I}\rq\Ğzj\Ò\Ì0µ„&ó–9ff>\ìÄ“K4–{\ç\Í‡\Ä\í&\ê\Êò\É&YÊ¿ˆ±øcÄŒƒ‚<ó«öŸ²\ëS‚òI\Ü#Y£[¦\ìF\Ìw	ú°Êœ…^u\Z\Ş\ê3\ÌK\"p\Ã\Ï\Ôzj>×£¬#€\Û-ºø%·\ì%›\r\êTı\r,‰e\İ}˜ÿ\0\Æı&\Î;ˆ~Êª³ÉŸ4ó\ç\äm£³q\ï[WLE*\Ú[¬ÿ\0\ëD1‡\Ï}\á@lû\æ™i]§[\É\ãCl¢O\ãb\î\Ã\è\\œU‡m,¤\çi!EPj¦`j½Ô–}¤Cı\Õa®S\ÄJ°\È5&˜²8IH\Ï×§í¤”M·\æy	oR=jõ§.#Q\íPRZˆØ\ëŞ¬c\ä_¥R)&uj\çº)”Ş§\ÓNdQò?\ê·ş5Wm^%%‰!±\Ø÷õúV¿,A†‘ª†³\Ñv\ï xˆ‰€%¸\Üò84š}£}.º)(\äşJüwJƒ$ÿ\0‰®O$’ò\Çdc\È÷?Z–A‘ƒ4\09nsŒŸoÊ«:µ­\Â13£© ”ıGÅy\Z¤¸:–|rt˜\à^| \È\íŸ#ÿ\0…=…\ÅWN°\áp‘ŒöñR\Z%•ÀFuOC\Ø\Û=\Èò®hi¥>_J”j\Ñ(÷q\ìÖ¼›~\ï>şT¯£\Ê\Ğ/ŒH2H<ùö\Í7Kh‚\î#\Ó\'ô\Åhô<]–SLôß\æ\Ãlm­ä„ŒN4»7{?\ê\àI/\Ì\ÊÃº¨\íõ¯zL*ºXœ\çÎ«\×òG+¬`Á\ã\æÇ¦|\ÅR	SŒNL©ä•¢B\ÂÉ¡I\'ş´\æ\àñŠM_~?jG¼\ï’=ı«•\Â[¹/Ò¦Xz:67J\İö«g\Ğ€+DW\è;Uğ|pAñ;c°QO^\êPE\ZdLö\ŞÊ¹õ\ÆM{Zh8Á&xº™n\È\èyEp¶¹I\0h\İYOšG\ê+¶k \ç\Ñ\\§¸D‚Ü’\0ıM7´\Õ ”\â)£r<•Õò4=¯ Qº™Ë«[+li\ãWş\êô\Íc\ÚZmu}j\ZYœf\0g\êkİ½\Ê8Ü¬¾ªA¨ ;QMnõbÿ\0[*&‰‚şô\×şY\Ú\áÿ\0¼Oñ¥L”£5½AfH\êOñ¿\ëOn.³ºª\ì\Ä\0?3B)\ék…­\ÂH¡£p\Ê{2Aú]¨¤¢Š\0¤4´P¾Ğ®\ä‘e¶\á—\Ãd\Î1Ÿ\Ä*\íc\È\ÑI\ÉU?A]\ÙsJUG›5g((¿\â˜\Ş[’À0Q¾‡Ÿ\ß÷§Ô•fd™\Æ\Ö\Ü\"\í\Ñ\Ô\Ízª¯W\ër\Æ<;l;’{\éõ¨\á#Lx\å’{bFuË¡’8UTy’;‚{~\Õ\×D )òª{\ß;Ÿ\ZPw\îùûögš”ÓµgYü6BT\ãk\0q\Û\ÌúU7#\ßÿ\0\Ã\nmv\0eª¡«\Â\ZB¡²¤vñ\í1SfR\ïıU‘>T\æ\Ê1¿\'(Àúæ¥«Ta‡%4is+)*H\á>ø©\Õ\ÒQ\çcH\äc\éø§?\æew™›9\n§ğƒ\ä\r;ûA\ÛŞ¼ü\Ø\Ö>Bm\ÕoD\Ù¿!‹\êùgÒ¸\Û\è‡a•â‘~>H?•Yµ.¬£’xÏ §\İ\'«ª³\Íø°c<ãŠ¾–j\\3\\™g;ª\Çs3\Åp\Å\áÄ§&F\î\Ã9Â¯¿­E|vµŒ\é\Û\Ù²ÊXTƒƒ\ïZ¥¸DT”\0?*¡|tÿ\0\émşö?Ş½x»÷å´¼™‡H\ë\×:5\ŞÉğ˜)’>\à«r²\'¾==\ëM¼ø<wÑ«@\r„¡6\\ŒK\îÃ1]zË¢\Öş\Æ&ŒqHco\âùFPŸCüe}?\Ô2\ÅÆ›p­µÁDS÷¢Ÿ8A»~\Ñ\Ã75Ï’z\Æ\íõ½_Ã¸$\Ú\Æ]\Ä9Â”C;–$gô«Å–†e½²A°2ü\Ñ|„¡8\çğHª\ßÁ†ğõI\"q‡ğ0‰Xd#Z7\ÅÛ…M.|ş-Š=\Éaş®E·2Š\è¢k?gm. ‡mÌ…£‘\Çpª9uô-‘ô\æ­=Ğ¶gOF¹d–\á<G‘\Æ\æù\ÆFò0\rb÷6n-£œƒ²FtS\å•\Æõ\ìk\èŞ€¿I´ûfB!D>ÌŠƒ\ï‘Fk«\ÇQ_ü™\Úh·‘iz½ü{\â„3[3ÇŒ\à¡\î\0ıM/ù=HØ»\\£\Ã ywdÿ\0!WŸˆ÷q‹˜‹\r\ío#ó!@\Éúr+0ø/ö\Ü\Ü}ˆÀ8Œÿ\01·ó¡‚ú±I±Ÿ\Å\âk[\æP`]§¶\ÒFF=94\ßâŸz¨H\ãEM°|ª ø\íô£¬üó¸ûI\Å\ß|=\Û1•\Æ7sN¾.Ÿô·öÃ\êrp=ªN¨AT\Ôú‡ ,n +¼qK·1ÈŠ«\ã*x\î3Š‚\Õ\í ½»\Z~§1_\ÖDWÚ²LÛ„\ã €\0úÕ³E½Ô™\Â\Ü\ÙC[~ú\\x1ò\ì½T5-üóur“\ÛøQ\Û3C\rÒ·ô†D?0+\æ¼\çÿ\0zƒÏİ—~’\é\Øl-Å¼Šf\Ë’[¿n?J›ó\âjÚ–¨%«Ü´\ÑO•‰*\Ñ;mg%[ƒ\Æk\è$9Œi\ßvz¤£ULÂ–’–¤	KIE\0´†Šowq´{ùP”›\á\ruKİ ª}\â?J­\\FŞ™=óLºú\ìL‘\Ã`Z\\dc<j›ú\Õ7Y\êa\Çñ$\×l­\ê;”\î¦ú\\¤\rŒ~e\ã\ëV	b\îO\Ó\Ëó¨M^\"„Hƒ\ë\ähzònT\ÇV\Ò\á@4\ÓUÔ¥ˆ©Tnr}D\é—d3<¬¿61ƒÀüjy.¶˜ÀÁª¶\Ú.ñs\Ñ5$\çò\Æi€¹;W\é“QWz³:2\0F\á‚Ş€\×hZP£‘ÛŒ÷Ã¬ši$UT#¹wp9;GŸ¹©%iÑ½6²±\î;ñŸıwªd—ä“¹¹óZ\Ã\Û7X\ZGñ[rƒ\ß`¯z¦’\ßg»\"\ØZ\ÅT¾!t\Äú„q[¤‰> yI¹\Ø(\í\ëÉ«p£\ëBm;G!\nªƒ²€£\è*•\Õ#¹½‚ñFI¦\\q\"¯ ÿ\0µÀJ½ÑŠ8»E©~™.–ú\Âaor§q\È\Ìn{d\æGÖ¸k}¨\ê&5¿¹Š8#;ŒpË¶1’_·÷V‹ŠB*l²\Ë\"»ªôm¤\ÖbÈ¦\Ø\Ô¯\ŞF˜^<\ÕLøm¬Z9Zš¤lrx?©B\Ík\ÔR\Är\É*(w\İqöI£Y\Ä÷W\á\É<ÄŒGü(ª>P—½uøk\Ğí¦¤¦ID)\\\í*…\Î\0\Ï$äš¼\n)d|’ª3·øm5\Õà½·²„¤€\ã(x .Tş%tÆªÓ›\çLø$¶İœ\ä©\0\ÖôEx\ÛK/òYf\ÖIxó*G´n,~\ë\ã„w\Ü®ió\î7Zl\Ñ\âp$h\ä\Ää‰”\åI\Ï|\àWM[¡tÛ†\İ5²“»q\ÚYC7l°R>\æ§\í­\Ö4TE\nª¡TÁ@Àò¡›kÁ\Øü<šk\ÑªN’:R(Ôˆ\ÆÓ”HœzÖ)qF*¤\åØ´”QB¡Ef€(£4P\\\àUSO\Ö\r\Èg*Te\0\äŒşubÔ¥Ú„úñPUg^š\n›g·l×œR5z¨;:\"z‡Ošt	¡\â\È\î+¢\Û‰c<\í\ÏÒ¤r=y¦\×u®\Í#\'\Ñ=„,rc\\ùœWˆ\í¡^(÷\Çj~m\É\ïÚ¢¤\ÓUT…wËœ‘\\ú˜JQúNÎ78wUã“\åN/TÌ‘\\­\â9QÏ™õ¯L\Ò>\ØÁ,~UÌ\éŞ¼zr•\"®’¶LôK\ÛÍº\æUß—!TŸ”\àœy’sWôP\0ÀT\ÏE°CCğ¨úŸ3ú\Ó\êúPQŠGƒ–nrl)	¥5šüf\ê©\í#†+YrJX³n£\Ë=‰$V©Œw:F“š3Uo‡:é¼±ŠWl\È\É™u\à“õ\àşu›üB\ê=B\ËQt·¼”¦Õ#\á”n\ÎW·\İ\â‰rZ8Ü¥´Ü³^I¨~•\×ò\Ö;…\ÇÌ¿0ş0ısY\\|E½{‰#³”\ÇlP2¹\Êı\ã¸ùfŠ-ˆb”\İ\ZO\ÄK]NHi’l“\Äù\nJ`ö\'\ßö«–²ˆc°iB(\Åö\Ä{g5’õõõ­•\ÄWó™%\ÆıÌ¤¦ş\Ø\ãÒ¬qõŒ\Ñ\è‹}&\Zb»GB\ÛA#ù\Ô\×\å\íF„\r«Ò¢¼¸\Ónµ\'½¸ûDl\Æ=²0@ƒ\åó?¥Jô6©¨\êJ¾h\ŞDŞ»d±û¸\Î\îô¦\Ò\ZW}\ZÔ’\0	$\0I<\0>µI\Ö>)\ép1O¥aÁğ—pÿ\0‹ü\ê®/nu\á¥Z9H”n¸qüÁö\0<É¦SO¡\é¯öh¬šòu\á\Î\Ğ\ä1\ÏöŠ$Lq¯%Mø¹¥\Ê\ÛY\ä‹\'‘~_Ì‚@ü\êùo::‡F¤dAz‚+\Ö5ı\çÂˆi‡|¤\'\È\'‰\Ëm\0ö\Ï\'5+\Ğ->¨¾•3—‰\Ô\Ë>^\Ã\Ó U÷©qÄª\×¯š\\\Ök­\rbûtºm\ÔpÄ’¼J\ÌlU›c ü¾Õ¡\Ù#„A#p 1\Øˆ\\\ÕLœh\ïET\nZJ(¤¢Š#¨¦U@X€3\É5Êœrb;Wˆziš!@\æ\Ç ƒ\Ç5mEU!@¥Qİ¶’	\â±z†{m\ã\Î\î\î\İüª\\·\çıñLD\Ç#ó§I\Í(Õ®\"´\r:t–InX°\0m\'{\Ôÿ\0P‘¶°R\ÇöÏ–iºjÑ™¼\å¹\ÉF½jÄ‚;Ú¡/E’nVÈ*\ês¹g\ä†À8À#\ÛÖ¦Í¨d9ó¦¶)¹¹ò<T€™N\åR2½\Æy]\Ë.x+ğØ³>\ÅeÏ¹\íùUÃ§zf;v22HF2q…õ\Ú<ª\ÚxK*\ädó\îsŞ´\Ëcò¥g·W\'ºM%O†t–’—5\Ğy‚\Z\Çu\ëXµb\æ9]Dvö\Æ5,Àç‘Ÿ0[ùV©­_ø¼¾\ÈTp‘©fc\ä\0÷ªAôz4r\Üjv¨\Ó\\L\ÎUÊ¤\äÄ“ûT¢ğu\ÉğSR1\\\Íf\ç‡”gQûTRiu¬\Ü@\Ê}r§õ\Å4\ê>”\ÏQ\î\Êè·«*\'\ánÌ›G`FZµh¶m.¦oX2	C!R\0\Æ9=ü\ê\ÎJ\Íş­\È\Ízk©å±Š\ê\ß.(ş	³±¾œ~Â¼õVŠ-m\í‡\Îñ<¯û˜ƒƒôsÖº¤\Ö@‡\ìòM!\Ç\Ôü\Ê|¾c´şµ\ï\ãN\Ü\Ï\à\Ëo\"²2 \ËAÀ\î*TVu¹4G|J_ôfŸıŸÿ\0Uq»um\Î×€\Ó\ÈB–8PP–\äûğ?:“\ê&\â\ïJµğ!“|C\Æ\ÊUøM§\nÜi\çMô\ìwš\\v—QK\ÄO,ŒŒ¬IÁ]\Ã0ie>D’ü•­\"ù\à\Ò\îl^D\î\ÌB1\Ü\0@\Ç5løM\Ó2\ÙÁ$“®\Ù& \ìóTQ\Æ}I¨™şI\Z³œ\İQA<†\áG<á½«Î„/¬n\íQ\î\Z{k£µwn\È\È\È%[• `÷¨nÈœ\ÓN†½t\Ñ[j\×ÿ\0ı\ß@§Ó’GóaúT¯Á]!¼—L3,’2\î<£\çÜ’i‹f©>£¥Lv} ´±\ìwdŒ~Xÿ\0„\×œ—Y°W³\ÄÉ–%b“Á!‡x\Î(\Ãv˜\Ş\ëO^£YG¶\ä]\ÍüñS]C2>¿m´ÿ\0òğ3\Ê\ßÂ ;şD~µW\Ó,u{[\É$KW’w¥Ê±L¹¸~\Ş^uo\é}Vj(ooR»²Á_£Ì’oj1)D\r«_¯{¡\Êe¶y\ŞE9}\ç*§ºœ\Ç<Õ“\áÿ\0\Äo¶\Êm®\"\Ì‘·;n7U†{{T…¶¨ö,\Ù\Î\æ5Ø{\Ò@¿qˆ9\\øw\Ò?m“QºÁddˆı\ì\È\Ù\É@PQ´Ó³URKU2\nZJ(¤4Q@Eõ$;­\ä\Õ\Ï\é\Ï÷UÕ° \æ´\é\ãÜ¤z‚+0š\Ì\å pW‚8ó\â«/±\ë~5N,o*É†Cşõ*¹\Å1\Ò\ì\Ö5\n\Ê\Ö\â\á®h\ÊÄ ó\ä\ÇÊ«~Î‰ò\İY\ÄÈ¨¡r\0\Í3\Ömfp,«\ÏÍŸOjõ«\ßø	¼)bx\ç\ß\Ö)\Ø\Æ¯$dLÓŠ\Æÿ\0q\É©Á8\ã÷\Çzm£i«	vñY\Ë\ã–\Æx¯r\r\İë­ªü¸©¤]\İ\rµKv\ãóW\Û)>P=…gÒ¤¾(BŸ&8lÖ‡iUôµJ85\İD\ïE¢¬y\â^Z NO—j÷š3@!A\æ(\Ø;\â½Fh Š\\Ñš6\Ğ.i3@Fõ&ó\ÛMl¤B¡`O¯µ0\Ó4išH\æ¼1—‰JÆ‘\çb“€Ï–\ä±‚¬4P›+}]\ÒQŞ…m\Æ9“˜\å^\ã\Ï\Ôf cº\êa± Š\éGÁ\Ã¯bkB\Í\'6,\Ï_Z\ê	F\Ø\ì#„ÿ\0ùOúO¢š)M\İ\ì¾=\Ó~.\ê™şùûñ\íWB a\ëK.\Ú\0¥\Í¨ ZJ3E\0R\Ò\nZ(¥¢€CT®«’u“nP€\ëŸ\äj\êjµÖ·\ëJIû\ÇÖ¡\ZVşT—’:7\Ïcùÿ\0…{V\î*O¼Yb,¿\Õ9\Ú~†¤Gü9¢ªz®5\Ø\ï i\Õ\ÇÍ\Ï÷Td\Z»I#\'†Êª$r+Ğ¹ Ÿ2{qD\ì¼q5Õ…7•$Àó\ï]\ãlBV\\d@ò\ÍF\Ú\êN2;\äŒúÓ‹½ar“»€gõò¨n¹d¸?G“x]\ãÁ\Ç$\çú¸\Ç\ïZŒ\á\Ğ\èP\íô\é\É\Ï\Ùó|qôó©\İI²´l¡±î CH\Í>™Å¬Œ$®/¡[j—1\İ\ÙAÀ‰n\Ê\çj66&õ?7¿\\\Ğz\Şòi,|YVQp®6¨Y\Z…*Ol\ç°ş\Z\Ğu~¶ºey¢Fe\É|\Æn“´x–)\"GU9P\ÉÀÀ\n¥v¨Ç ­Ô£G¥ªŠVŸ\Ô\×\ÆK-\×\0¬\íy¸@`yD7`«\Ív«n§¹!»·„C$j‘É²\Æ\Ø-&òs\Î~]£\Ó=\ê\Ûu\Ò’D°]\Ñ\Ä\ØSøTùW\Øq^›¤\íK$†5ñ\0®cˆº\Ø)+ò€8\íSº#t}}ª¯˜Ü—¸Ï€÷¥\Ö%‚CDi¸|Áÿ\0òÂ<\é\ç@õM\å\Ë\ËË••†VT£6ÿ\0™~\î\ã\ÌU>³S¹aŒ“\ÄP¼o\Ã\æ	\ëNt¾š¶·E\Z¯9Â¢ \'\ì$h\ÜC”k¢›\ÓzÖ§%\ÜÖ²ÎŒm¥\Ã2ªÿ\0J|¸ù\0\nI>§Ÿ[k·CQ»‚[„F”\ÈP\Ë\ïÜœŒıj³[ô\å¼s4ñ¢£»nrˆŠ\\\ç?3–\ä\ç“\\.ºJ\Ñ\åišüF!‹xQ$v;Š\ç<TnDnVgV}gªøó¡³Kp$„\"‚\ÑCŒ•\Û\Î\ìg·­:³\ê\Ë\Ùş\Æ\Étc[«‹¤\æ8÷$q\ä\Æ=7qƒõ«\Äh…Lqª$©X\âR¥†©•$yŠõu\Òr¾\È™AŠ\"±\Ë•\îO$ù\Ô\î‰mñôgö]w8‚8]\Í\Êı£`)+C\ÂpóúqMn¾#j#\Ã&g0\äI½‘‘˜b&ÛA\çœ\Z\Ó&\é+GˆE$H\ê§*¬‘•\\\0¨WjşB’~’´p›¢Bc\áY£ŠŒ\ä\Êü À\İC|}>·\ê\ë\È„›Y\çdPò+s\Âdòjci\Ö7l÷!®”*X\Çqğ\Õ>f@Å°\Ù8\È\íŸ\ÅWûî™µ•Ue_fp]\Ï\Ìr\ßx\æ¹\İt¬›‘«2}\×d˜s‘‚\ÊpStHRtR\ã\ê+ï¶˜\Z\å¼5Š\ŞV-‰½\Éâ“Œ/\Ê@#¶\îõ\İCtn\Û|C{\ßx/ŒIŒ/Œ\í\Î\ÂH8\Íióô…£¹‘¢B\çv&bW%Š\ä+¬1n€ª¨\0·‰€‘€$\Èoq¿ |\İø¦è“¾>Œú¿¼ñR]\èQ¯\Í\íva\Ñ{¤™\ÎIÀ$ùyS¾‘\ë;\Éo-‚ÁP\"øMõñ\Ê$`\àƒ\ë*\íÿ\0E\í|_F¢L\0d‚C€;É·w8õ¢Ó¥­c\ÉJ¤œ¨‹w\0J¨$gœf›¢Cœk¢pQš%ff(¥¤PQ@!5˜õö²ûV2\Æ2Éœd\à\ç¥\Êp	ö5—kPfM\à\à\É\É\ãÏ·Y+G£úlSÉ¹ø\rC*‹€[ q\Ï\ÓÊ¹\İ\êª:¶	\Æ\å8\'µJ\é\Ö(ƒ sşt\ßPµYY#nl\äw©7¶6z®Q\İ\Ê$c›\0³A\É\Åp¾ñ\nœ¤ƒ#¸\áV->\Ù#U_3ù\Ó\Ç\Æ3Šâ–­\ßó£l¸F2\Ê\î\Í œqú\Õ\ËE(€vÏ¯Ÿ\ë\\zš\ÍVE0$< s\ÉÇ½qƒ¾=\raª\È\ÚTv\Ï*œQr´¾\ã½v[¯›–L÷ª\ìLG¨ıB\é†\ã\ÇbAóô5Í4“Tq¼fn\ÜWz…\éI™\íÑœ\ä*j¾‚\â™\å\ÉS¡	¥ŠX¨QE\ÑIE\0´RQ@-”PE%KIE\0QEIKF(ÿ\Ù');
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
