--editorial--
INSERT INTO editorial VALUES('1','Soria');
INSERT INTO editorial VALUES('2','Pudeleco Editores S.A.');
INSERT INTO editorial VALUES('3','Editorial Don Bosco');
INSERT INTO editorial VALUES('4','Libreria Clasica Y Moderna');
INSERT INTO editorial VALUES('5','El Telegrafo C.A.');

--libros--
INSERT INTO libros VALUES('10010','9788415452645','Juan Luis Vicente Carro','Desarrollo Web en Entorno Cliente','Informática','España','206','Sexta','1','Hilando Libros','5/6/2016','26.89');
INSERT INTO libros VALUES('10011','9788483189979','Benet Campderrich Falgueras','Ingeniería del software','Informática','Chile','321','Tercera','4','Neptuno','10/7/2018','26.89');
INSERT INTO libros VALUES('10012','9788415656654','Javier Zofío Jiménez','Aplicaciones Web','Informática','Chile','242','Quinta','2','Macmillan Iberia','19/8/2020','26.89');
INSERT INTO libros VALUES('10013','9788415174530','Azorín','¿Qué es la historia?','Historia','Mexico','241','Quinta','3','Fórcola Ediciones','25/7/2019','26.89');
INSERT INTO libros VALUES('10014','9788415452646','Juan Luis Vicente Carro','Desarrollo Web en Entorno Cliente','Informática','España','206','Quinta','4','Hilando Libros','7/6/2018','26.89');
INSERT INTO libros VALUES('10015','9788483189978','Benet Campderrich Falgueras','Ingeniería del software','Informática','Chile','321','Cuarta','2','Neptuno','10/9/2019','26.89');
INSERT INTO libros VALUES('10016','9788415656653','Javier Zofío Jiménez','Aplicaciones Web','Informática','Chile','242','Tercera','3','Macmillan Iberia','19/10/2020','26.89');
INSERT INTO libros VALUES('10017','9788415174531','Azorín','¿Qué es la historia?','Historia','Mexico','241','Septima','1','Fórcola Ediciones','25/11/2020','26.89');

--ejemplares--
INSERT INTO ejemplares VALUES('12405','10012','Bordes rasgados','10.50');
INSERT INTO ejemplares VALUES('12400','10010','Excelente estado','15.90');
INSERT INTO ejemplares VALUES('12411','10013','Excelente estado','9.10');
INSERT INTO ejemplares VALUES('12407','10012','Hojas dobladas','10.50');
INSERT INTO ejemplares VALUES('12401','10010','Bordes rasgados','15.90');
INSERT INTO ejemplares VALUES('12402','10010','Hojas dobladas','15.90');
INSERT INTO ejemplares VALUES('12403','10011','Excelente estado','11.40');
INSERT INTO ejemplares VALUES('12404','10011','Excelente estado','11.40');
INSERT INTO ejemplares VALUES('12410','10013','Excelente estado','9.10');
INSERT INTO ejemplares VALUES('12406','10012','Excelente estado','10.50');
INSERT INTO ejemplares VALUES('12408','10012','Excelente estado','10.50');
INSERT INTO ejemplares VALUES('12409','10013','Hojas dobladas','9.10');

--bibliotecario--
INSERT INTO bibliotecario VALUES('1','1309876248','Melvin','Avila','098762149');
INSERT INTO bibliotecario VALUES('2','1358963174','Flor','Franco','0993478153');
INSERT INTO bibliotecario VALUES('3','1309876245','Jose','Rodriguez','1');

--clientes--
INSERT INTO clientes VALUES('1','1350854817','Lisseth','Poveda','0986541235');
INSERT INTO clientes VALUES('2','1306753248','Angela','Ellis','0994782134');
INSERT INTO clientes VALUES('3','1306921451','Lucia','Young','0963214987');
INSERT INTO clientes VALUES('4','1350694782','Melissa','Dunne','0973689214');
INSERT INTO clientes VALUES('5','1307537849','Arianne','Hughes','0983677931');
INSERT INTO clientes VALUES('6','1350854818','Andrea','Carvajal','0986541235');
INSERT INTO clientes VALUES('7','1306753347','Kevin','Matos','0994782134');
INSERT INTO clientes VALUES('8','1306931456','Bruno','Cabello','0963214987');
INSERT INTO clientes VALUES('9','1350654783','Paul','Rodríguez','0973689214');
INSERT INTO clientes VALUES('10','1307637847','Amanda','Swanson','0983677931');
INSERT INTO clientes VALUES('11','1350754811','Laura','Lewis','0986541235');
INSERT INTO clientes VALUES('12','1306953247','Carmen','Monteiro','0994782134');
INSERT INTO clientes VALUES('13','1306121453','Jennifer','López','0963214987');
INSERT INTO clientes VALUES('14','1350694784','David','de Cárdenas','0973689214');
INSERT INTO clientes VALUES('15','1307837845','Richard','García','0983677931');
INSERT INTO clientes VALUES('16','1350254816','Joshua','Morales','0986541235');
INSERT INTO clientes VALUES('17','1306453247','James','Navarrete','0994782134');
INSERT INTO clientes VALUES('18','1306821452','María','Peral','0963214987');
INSERT INTO clientes VALUES('19','1350994783','Jean','Delgado','0973689214');
INSERT INTO clientes VALUES('20','1307237849','Yasmin','Martín','0983677931');

--visita--
INSERT INTO visita VALUES('1','2','2021-05-18 10:00:36');
INSERT INTO visita VALUES('2','1','2021-07-20 9:30:47');
INSERT INTO visita VALUES('3','3','2021-09-14 10:10:21');
INSERT INTO visita VALUES('4','5','2021-02-16 14:15:05');
INSERT INTO visita VALUES('5','4','2021-01-11 16:46:12');
INSERT INTO visita VALUES('6','1','2021-07-10 17:39:07');
INSERT INTO visita VALUES('7','3','2021-08-09 11:20:39');
INSERT INTO visita VALUES('8','2','2021-02-27 13:23:18');
INSERT INTO visita VALUES('9','5','2021-08-15 9:12:39');
INSERT INTO visita VALUES('10','4','2021-09-17 10:08:48');
INSERT INTO visita VALUES('11','1','2021-11-28 14:05:19');
INSERT INTO visita VALUES('12','2','2021-10-24 15:10:28');
INSERT INTO visita VALUES('13','3','2021-09-03 16:35:37');
INSERT INTO visita VALUES('14','4','2021-07-08 12:40:10');
INSERT INTO visita VALUES('15','5','2021-06-04 10:27:16');
INSERT INTO visita VALUES('16','2','2021-05-14 10:28:16');
INSERT INTO visita VALUES('17','3','2021-04-30 10:35:16');
INSERT INTO visita VALUES('18','4','2021-10-18 10:25:16');
INSERT INTO visita VALUES('19','1','2021-01-27 10:35:16');
INSERT INTO visita VALUES('20','5','2021-02-26 10:15:16');

--prestamos-1(Interno/0(Externo))-12406
INSERT INTO prestamos VALUES('1640','12411','2','14','1','12/7/2021','12/8/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1641','12405','1','1','0','23/3/2021','23/4/2021','Excelente estado');
INSERT INTO prestamos VALUES('1642','12400','2','3','1','3/6/2021','3/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1643','12407','3','12','1','8/2/2021','8/3/2021','Excelente estado');
INSERT INTO prestamos VALUES('1644','12401','1','15','0','20/4/2021','20/5/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1645','12402','1','18','1','14/8/2021','14/9/2021','Excelente estado');
INSERT INTO prestamos VALUES('1646','12403','2','4','0','16/10/2021','16/11/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1647','12404','3','5','1','13/9/2021','13/10/2021','Excelente estado');
INSERT INTO prestamos VALUES('1648','12410','3','6','1','4/7/2021','4/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1649','12406','2','8','0','19/1/2021','19/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1650','12408','2','7','0','25/5/2021','25/6/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1651','12409','3','9','1','25/7/2021','25/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1652','12405','1','13','0','25/9/2021','25/10/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1653','12400','2','11','1','25/11/2021','25/12/2021','Excelente estado');
INSERT INTO prestamos VALUES('1654','12411','3','16','1','25/12/2021','25/1/2022','Hojas dobladas');
INSERT INTO prestamos VALUES('1655','12407','2','17','0','25/11/2021','25/12/2021','Excelente estado');
INSERT INTO prestamos VALUES('1656','12401','1','19','1','25/7/2021','25/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1657','12402','3','20','0','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1658','12403','3','1','0','25/6/2021','25/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1659','12404','2','3','1','25/4/2021','25/5/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1660','12410','2','5','0','25/3/2021','25/4/2021','Excelente estado');
INSERT INTO prestamos VALUES('1661','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1662','12408','1','9','0','25/4/2021','25/5/2021','Excelente estado');
INSERT INTO prestamos VALUES('1663','12409','2','2','0','25/5/2021','25/6/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1664','12405','3','4','1','25/6/2021','25/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1665','12400','3','6','1','25/7/2021','25/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1666','12411','1','8','0','25/8/2021','25/9/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1667','12407','2','10','0','25/10/2021','25/11/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1668','12401','1','12','1','25/11/2021','25/12/2021','Excelente estado');
INSERT INTO prestamos VALUES('1669','12402','2','15','1','25/6/2021','25/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1670','12404','3','17','0','15/1/2021','15/2/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1671','12411','2','14','1','12/7/2021','12/8/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1672','12405','1','1','0','23/3/2021','23/4/2021','Excelente estado');
INSERT INTO prestamos VALUES('1673','12400','2','3','1','3/6/2021','3/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1674','12407','3','12','1','8/2/2021','8/3/2021','Excelente estado');
INSERT INTO prestamos VALUES('1675','12401','1','15','0','20/4/2021','20/5/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1676','12402','1','18','1','14/8/2021','14/9/2021','Excelente estado');
INSERT INTO prestamos VALUES('1677','12403','2','4','0','16/10/2021','16/11/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1678','12404','3','5','1','13/9/2021','13/10/2021','Excelente estado');
INSERT INTO prestamos VALUES('1679','12410','3','6','1','4/7/2021','4/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1680','12406','2','8','0','19/1/2021','19/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1681','12408','2','7','0','25/5/2021','25/6/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1682','12409','3','9','1','25/7/2021','25/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1683','12405','1','13','0','25/9/2021','25/10/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1684','12400','2','11','1','25/11/2021','25/12/2021','Excelente estado');
INSERT INTO prestamos VALUES('1685','12411','3','16','1','25/12/2021','25/1/2022','Hojas dobladas');
INSERT INTO prestamos VALUES('1686','12407','2','17','0','25/11/2021','25/12/2021','Excelente estado');
INSERT INTO prestamos VALUES('1687','12401','1','19','1','25/7/2021','25/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1688','12402','3','20','0','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1689','12403','3','1','0','25/6/2021','25/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1690','12404','2','3','1','25/4/2021','25/5/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1691','12410','2','5','0','25/3/2021','25/4/2021','Excelente estado');
INSERT INTO prestamos VALUES('1692','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1693','12408','1','9','0','25/4/2021','25/5/2021','Excelente estado');
INSERT INTO prestamos VALUES('1694','12409','2','2','0','25/5/2021','25/6/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1695','12405','3','4','1','25/6/2021','25/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1696','12400','3','6','1','25/7/2021','25/8/2021','Excelente estado');
INSERT INTO prestamos VALUES('1697','12411','1','8','0','25/8/2021','25/9/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1698','12407','2','10','0','25/10/2021','25/11/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1699','12401','1','12','1','25/11/2021','25/12/2021','Excelente estado');
INSERT INTO prestamos VALUES('1700','12402','2','15','1','25/6/2021','25/7/2021','Excelente estado');
INSERT INTO prestamos VALUES('1701','12404','3','17','0','15/1/2021','15/2/2021','Hojas dobladas');
INSERT INTO prestamos VALUES('1702','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1703','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1704','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1705','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1706','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1707','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1708','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1709','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');
INSERT INTO prestamos VALUES('1710','12406','1','7','1','25/1/2021','25/2/2021','Excelente estado');

INSERT INTO prestamos VALUES('1711','12406','1','7','1','25/1/2020','25/2/2020','Excelente estado');
INSERT INTO prestamos VALUES('1712','12406','1','7','1','25/1/2020','25/2/2020','Excelente estado');
INSERT INTO prestamos VALUES('1713','12406','1','7','1','25/1/2020','25/2/2020','Excelente estado');
INSERT INTO prestamos VALUES('1714','12406','1','7','1','25/1/2020','25/2/2020','Excelente estado');
INSERT INTO prestamos VALUES('1715','12406','1','7','1','25/1/2020','25/2/2020','Excelente estado');
INSERT INTO prestamos VALUES('1716','12406','1','7','1','25/1/2019','25/2/2019','Excelente estado');
INSERT INTO prestamos VALUES('1717','12406','1','7','1','25/1/2019','25/2/2019','Excelente estado');
INSERT INTO prestamos VALUES('1718','12406','1','7','1','25/1/2019','25/2/2019','Excelente estado');
INSERT INTO prestamos VALUES('1719','12406','1','7','1','25/1/2019','25/2/2019','Excelente estado');
--ejemplar devuelto--
INSERT INTO ejemplar_devuelto VALUES('1','1640','12411','10/8/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('2','1647','12404','7/10/2021','Regular');
INSERT INTO ejemplar_devuelto VALUES('3','1645','12402','14/9/2021','Malo');
INSERT INTO ejemplar_devuelto VALUES('4','1650','12408','18/6/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('5','1651','12409','20/8/2021','Regular');
INSERT INTO ejemplar_devuelto VALUES('6','1656','12401','13/8/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('7','1658','12403','25/7/2021','Regular');
INSERT INTO ejemplar_devuelto VALUES('8','1669','12402','12/7/2021','Malo');
INSERT INTO ejemplar_devuelto VALUES('9','1665','12400','14/8/2021','Malo');
INSERT INTO ejemplar_devuelto VALUES('10','1652','12405','16/10/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('11','1666','12411','25/9/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('12','1642','12400','2/7/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('13','1664','12405','16/7/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('14','1643','12407','6/3/2021','Excelente');
INSERT INTO ejemplar_devuelto VALUES('15','1667','12407','23/11/2021','Excelente');

--anotaciones--
INSERT INTO anotaciones VALUES('1','3','12402','LLego con la pasta rota');
INSERT INTO anotaciones VALUES('2','8','12402','Hojas faltantes');
INSERT INTO anotaciones VALUES('3','9','12400','Bordes Rotos');
INSERT INTO anotaciones VALUES('4','2','12404','Hojas dobladas');
INSERT INTO anotaciones VALUES('5','5','12409','Caratula manchada');
INSERT INTO anotaciones VALUES('6','7','12403','Portada manchada');