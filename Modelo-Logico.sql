*==============================================================*/
/* DBMS name:      PostgreSQL 8                                 */
/* Created on:     16/11/2021 16:47:03                          */
/*==============================================================*/


drop index RELATIONSHIP_11_FK;

drop index ANOTACIONES_PK;

drop table ANOTACIONES;

drop index BIBLIOTECARIO_PK;

drop table BIBLIOTECARIO;

drop index CLIENTES_PK;

drop table CLIENTES;

drop index EDITORIAL_PK;

drop table EDITORIAL;

drop index RELATIONSHIP_1_FK;

drop index EJEMPLARES_PK;

drop table EJEMPLARES;

drop index RELATIONSHIP_10_FK;

drop index EJEMPLAR_DEVUELTO_PK;

drop table EJEMPLAR_DEVUELTO;

drop index RELATIONSHIP_8_FK;

drop index LIBROS_PK;

drop table LIBROS;

drop index RELATIONSHIP_9_FK;

drop index LIBROS_RETIRADOS_PK;

drop table LIBROS_RETIRADOS;

drop index RELATIONSHIP_5_FK;

drop index RELATIONSHIP_3_FK;

drop index RELATIONSHIP_2_FK;

drop index PRESTAMOS_PK;

drop table PRESTAMOS;

drop index RELATIONSHIP_4_FK;

drop index VISITA_PK;

drop table VISITA;

/*==============================================================*/
/* Table: ANOTACIONES                                           */
/*==============================================================*/
create table ANOTACIONES (
   ID_ANOTACIONES       INT4                 not null,
   ID_DEVOLUCION        INT4                 not null,
   ID_EJEMPLAR          INT4                 not null,
   ANOTACION            TEXT                 not null,
   constraint PK_ANOTACIONES primary key (ID_ANOTACIONES)
);

/*==============================================================*/
/* Index: ANOTACIONES_PK                                        */
/*==============================================================*/
create unique index ANOTACIONES_PK on ANOTACIONES (
ID_ANOTACIONES
);

/*==============================================================*/
/* Index: RELATIONSHIP_11_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_11_FK on ANOTACIONES (
ID_DEVOLUCION
);

/*==============================================================*/
/* Table: BIBLIOTECARIO                                         */
/*==============================================================*/
create table BIBLIOTECARIO (
   ID_BIBLIOTECARIO     INT4                 not null,
   CED_BIBLIOTECARIO    VARCHAR(10)          not null,
   NOM_BIBLIOTECARIO    VARCHAR(30)          not null,
   APE_BIBLIOTECARIO    VARCHAR(30)          not null,
   TEFL_BIBLIOTECARIO   VARCHAR(10)          not null,
   constraint PK_BIBLIOTECARIO primary key (ID_BIBLIOTECARIO)
);

/*==============================================================*/
/* Index: BIBLIOTECARIO_PK                                      */
/*==============================================================*/
create unique index BIBLIOTECARIO_PK on BIBLIOTECARIO (
ID_BIBLIOTECARIO
);

/*==============================================================*/
/* Table: CLIENTES                                              */
/*==============================================================*/
create table CLIENTES (
   ID_CLIENTE           INT4                 not null,
   CED_USUARIO          VARCHAR(10)          not null,
   NOM_USUARIO          VARCHAR(30)          not null,
   APE_USUARIO          VARCHAR(30)          not null,
   TELF_USUARIO         VARCHAR(10)          not null,
   constraint PK_CLIENTES primary key (ID_CLIENTE)
);

/*==============================================================*/
/* Index: CLIENTES_PK                                           */
/*==============================================================*/
create unique index CLIENTES_PK on CLIENTES (
ID_CLIENTE
);

/*==============================================================*/
/* Table: EDITORIAL                                             */
/*==============================================================*/
create table EDITORIAL (
   ID_EDITORIAL         INT4                 not null,
   NOM_EDITORIAL        VARCHAR(30)          not null,
   constraint PK_EDITORIAL primary key (ID_EDITORIAL)
);

/*==============================================================*/
/* Index: EDITORIAL_PK                                          */
/*==============================================================*/
create unique index EDITORIAL_PK on EDITORIAL (
ID_EDITORIAL
);

/*==============================================================*/
/* Table: EJEMPLARES                                            */
/*==============================================================*/
create table EJEMPLARES (
   ID_EJEMPLAR          INT4                 not null,
   ID_LIBRO             INT4                 not null,
   ESTADO_EJEMPLAR      VARCHAR(50)          not null,
   PRECIO_EJEMPLAR      MONEY                not null,
   constraint PK_EJEMPLARES primary key (ID_EJEMPLAR)
);

/*==============================================================*/
/* Index: EJEMPLARES_PK                                         */
/*==============================================================*/
create unique index EJEMPLARES_PK on EJEMPLARES (
ID_EJEMPLAR
);

/*==============================================================*/
/* Index: RELATIONSHIP_1_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_1_FK on EJEMPLARES (
ID_LIBRO
);

/*==============================================================*/
/* Table: EJEMPLAR_DEVUELTO                                     */
/*==============================================================*/
create table EJEMPLAR_DEVUELTO (
   ID_DEVOLUCION        INT4                 not null,
   ID_PRESTAMO          INT4                 not null,
   ID_EJEMPLAR          INT4                 not null,
   FECHA_RECIBIDO       DATE                 not null,
   ESTADO_LIBRO         TEXT                 not null,
   constraint PK_EJEMPLAR_DEVUELTO primary key (ID_DEVOLUCION)
);

/*==============================================================*/
/* Index: EJEMPLAR_DEVUELTO_PK                                  */
/*==============================================================*/
create unique index EJEMPLAR_DEVUELTO_PK on EJEMPLAR_DEVUELTO (
ID_DEVOLUCION
);

/*==============================================================*/
/* Index: RELATIONSHIP_10_FK                                    */
/*==============================================================*/
create  index RELATIONSHIP_10_FK on EJEMPLAR_DEVUELTO (
ID_PRESTAMO
);

/*==============================================================*/
/* Table: LIBROS                                                */
/*==============================================================*/
create table LIBROS (
   ID_LIBRO             INT4                 not null,
   ISBN                 VARCHAR(13)          not null,
   AUTOR                VARCHAR(60)          not null,
   TITULO_LIBRO         VARCHAR(80)          not null,
   GENERO               VARCHAR(30)          not null,
   PAIS                 VARCHAR(30)          not null,
   NUM_PAGINAS          VARCHAR(3)           not null,
   EDICION              VARCHAR(30)          not null,
   ID_EDITORIAL         INT4                 not null,
   PROVEEDOR            VARCHAR(30)          not null,
   FECHA_ENTRADA        DATE                 not null,
   PRECIO_LIBRO         MONEY                not null,
   constraint PK_LIBROS primary key (ID_LIBRO)
);

/*==============================================================*/
/* Index: LIBROS_PK                                             */
/*==============================================================*/
create unique index LIBROS_PK on LIBROS (
ID_LIBRO
);

/*==============================================================*/
/* Index: RELATIONSHIP_8_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_8_FK on LIBROS (
ID_EDITORIAL
);

/*==============================================================*/
/* Table: LIBROS_RETIRADOS                                      */
/*==============================================================*/
create table LIBROS_RETIRADOS (
   ID_LISTA             INT4                 not null,
   ID_LIBRO             INT4                 not null,
   ID_EJEMPLAR          INT4                 not null,
   FECHA_SALIDA         DATE                 not null,
   constraint PK_LIBROS_RETIRADOS primary key (ID_LISTA)
);

/*==============================================================*/
/* Index: LIBROS_RETIRADOS_PK                                   */
/*==============================================================*/
create unique index LIBROS_RETIRADOS_PK on LIBROS_RETIRADOS (
ID_LISTA
);

/*==============================================================*/
/* Index: RELATIONSHIP_9_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_9_FK on LIBROS_RETIRADOS (
ID_EJEMPLAR
);

/*==============================================================*/
/* Table: PRESTAMOS                                             */
/*==============================================================*/
create table PRESTAMOS (
   ID_PRESTAMO          INT4                 not null,
   ID_EJEMPLAR          INT4                 not null,
   ID_BIBLIOTECARIO     INT4                 not null,
   ID_CLIENTE           INT4                 not null,
   TIPO_PRESTAMO        BOOL                 not null,
   FECHA_PRESTAMO       DATE                 not null,
   FECHA_DEVOLUCION     DATE                 not null,
   ESTADO_LIBRO         VARCHAR(20)          not null,
   constraint PK_PRESTAMOS primary key (ID_PRESTAMO)
);

/*==============================================================*/
/* Index: PRESTAMOS_PK                                          */
/*==============================================================*/
create unique index PRESTAMOS_PK on PRESTAMOS (
ID_PRESTAMO
);

/*==============================================================*/
/* Index: RELATIONSHIP_2_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_2_FK on PRESTAMOS (
ID_EJEMPLAR
);

/*==============================================================*/
/* Index: RELATIONSHIP_3_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_3_FK on PRESTAMOS (
ID_BIBLIOTECARIO
);

/*==============================================================*/
/* Index: RELATIONSHIP_5_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_5_FK on PRESTAMOS (
ID_CLIENTE
);

/*==============================================================*/
/* Table: VISITA                                                */
/*==============================================================*/
create table VISITA (
   ID_VISITA            INT4                 not null,
   ID_CLIENTE           INT4                 not null,
   HORA_SALIDA          DATE                 not null,
   constraint PK_VISITA primary key (ID_VISITA)
);

/*==============================================================*/
/* Index: VISITA_PK                                             */
/*==============================================================*/
create unique index VISITA_PK on VISITA (
ID_VISITA
);

/*==============================================================*/
/* Index: RELATIONSHIP_4_FK                                     */
/*==============================================================*/
create  index RELATIONSHIP_4_FK on VISITA (
ID_CLIENTE
);

alter table ANOTACIONES
   add constraint FK_ANOTACIO_RELATIONS_EJEMPLAR foreign key (ID_DEVOLUCION)
      references EJEMPLAR_DEVUELTO (ID_DEVOLUCION)
      on delete restrict on update restrict;

alter table EJEMPLARES
   add constraint FK_EJEMPLAR_RELATIONS_LIBROS foreign key (ID_LIBRO)
      references LIBROS (ID_LIBRO)
      on delete restrict on update restrict;

alter table EJEMPLAR_DEVUELTO
   add constraint FK_EJEMPLAR_RELATIONS_PRESTAMO foreign key (ID_PRESTAMO)
      references PRESTAMOS (ID_PRESTAMO)
      on delete restrict on update restrict;

alter table LIBROS
   add constraint FK_LIBROS_RELATIONS_EDITORIA foreign key (ID_EDITORIAL)
      references EDITORIAL (ID_EDITORIAL)
      on delete restrict on update restrict;

alter table LIBROS_RETIRADOS
   add constraint FK_LIBROS_R_RELATIONS_EJEMPLAR foreign key (ID_EJEMPLAR)
      references EJEMPLARES (ID_EJEMPLAR)
      on delete restrict on update restrict;

alter table PRESTAMOS
   add constraint FK_PRESTAMO_RELATIONS_EJEMPLAR foreign key (ID_EJEMPLAR)
      references EJEMPLARES (ID_EJEMPLAR)
      on delete restrict on update restrict;

alter table PRESTAMOS
   add constraint FK_PRESTAMO_RELATIONS_BIBLIOTE foreign key (ID_BIBLIOTECARIO)
      references BIBLIOTECARIO (ID_BIBLIOTECARIO)
      on delete restrict on update restrict;

alter table PRESTAMOS
   add constraint FK_PRESTAMO_RELATIONS_CLIENTES foreign key (ID_CLIENTE)
      references CLIENTES (ID_CLIENTE)
      on delete restrict on update restrict;

alter table VISITA
   add constraint FK_VISITA_RELATIONS_CLIENTES foreign key (ID_CLIENTE)
      references CLIENTES (ID_CLIENTE)
      on delete restrict on update restrict;