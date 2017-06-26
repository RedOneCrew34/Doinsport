/*==============================================================*/
/* Nom de SGBD :  MySQL 5.0                                     */
/* Date de création :  13/06/2017 14:56:22                      */
/*==============================================================*/


drop table if exists ADMIN;

drop table if exists BOOKING;

drop table if exists CLUB;

drop table if exists CODE;

drop table if exists DAY;

drop table if exists GAME;

drop table if exists GROUND;

drop table if exists HOUR;

drop table if exists MARK;

drop table if exists MESSAGE;

drop table if exists NOTE;

drop table if exists PARTNER;

drop table if exists PLANNING_SQUARE;

drop table if exists PRICE;

drop table if exists REJOIN;

drop table if exists SLOT;

drop table if exists TIME_TYPE;

drop table if exists USER;

/*==============================================================*/
/* Table : ADMIN                                                */
/*==============================================================*/
create table ADMIN
(
   ID_ADMIN             int not null auto_increment,
   PASSWORD_ADMIN       longtext,
   USERNAME_ADMIN       longtext,
   primary key (ID_ADMIN)
);

/*==============================================================*/
/* Table : BOOKING                                              */
/*==============================================================*/
create table BOOKING
(
   ID_BOOKING           int not null auto_increment,
   ID_GAME              int not null,
   ID_PS                int not null,
   primary key (ID_BOOKING)
);

/*==============================================================*/
/* Table : CLUB                                                 */
/*==============================================================*/
create table CLUB
(
   ID_CLUB              int not null auto_increment,
   NAME_CLUB            longtext,
   ADRESS               longtext,
   CITY_CLUB            longtext,
   CP                   longtext,
   PHONE_CLUB           longtext,
   MAIL_CLUB            longtext,
   DESCRIPTION          longtext,
   LOGO                 longtext,
   BAN                  longtext,
   WEBSITE              longtext,
   FACEBOOK             longtext,
   primary key (ID_CLUB)
);

/*==============================================================*/
/* Table : CODE                                                 */
/*==============================================================*/
create table CODE
(
   ID_CODE              int not null auto_increment,
   CONTENT_CODE         longtext,
   primary key (ID_CODE)
);

/*==============================================================*/
/* Table : DAY                                                  */
/*==============================================================*/
create table DAY
(
   ID_DAY               int not null auto_increment,
   NAME_DAY             longtext,
   primary key (ID_DAY)
);

/*==============================================================*/
/* Table : GAME                                                 */
/*==============================================================*/
create table GAME
(
   ID_GAME              int not null auto_increment,
   ID_USER              int,
   ID_PARTNER           int,
   ID_CODE              int not null,
   NAME_GAME            longtext,
   DATETIME_BG          datetime,
   DATETTIME_END        datetime,
   PLACE                longtext,
   primary key (ID_GAME)
);

/*==============================================================*/
/* Table : GROUND                                               */
/*==============================================================*/
create table GROUND
(
   ID_GROUND            int not null auto_increment,
   ID_CLUB              int not null,
   NAME_GROUND          longtext,
   SPORT                int,
   primary key (ID_GROUND)
);

/*==============================================================*/
/* Table : HOUR                                                 */
/*==============================================================*/
create table HOUR
(
   ID_HOUR              int not null auto_increment,
   TIME_BG              time,
   TIME_END             time,
   primary key (ID_HOUR)
);

/*==============================================================*/
/* Table : MARK                                                 */
/*==============================================================*/
create table MARK
(
   ID_PARTNER           int not null,
   ID_USER              int not null,
   primary key (ID_PARTNER, ID_USER)
);

/*==============================================================*/
/* Table : MESSAGE                                              */
/*==============================================================*/
create table MESSAGE
(
   ID_MESSAGE           int not null auto_increment,
   ID_PARTNER           int not null,
   NAME_MESSAGE         varchar(50),
   CONTENT              longtext,
   primary key (ID_MESSAGE)
);

/*==============================================================*/
/* Table : NOTE                                                 */
/*==============================================================*/
create table NOTE
(
   ID_NOTE              int not null auto_increment,
   ID_USER              int not null,
   ID_GAME              int not null,
   CONTENT_NOTE         longtext,
   primary key (ID_NOTE)
);

/*==============================================================*/
/* Table : PARTNER                                              */
/*==============================================================*/
create table PARTNER
(
   ID_PARTNER           int not null auto_increment,
   ID_CLUB              int not null,
   USERNAME             longtext,
   PASSWORD_PARTNER     longtext,
   VALIDTOKEN_PARTNER   longtext,
   CONFIRMEDTOKEN_PARTNER date,
   RESETTOKEN_PARTNER   longtext,
   RESETAT_PARTNER      datetime,
   RMBTOKEN_PARTNER     longtext,
   primary key (ID_PARTNER)
);

/*==============================================================*/
/* Table : PLANNING_SQUARE                                      */
/*==============================================================*/
create table PLANNING_SQUARE
(
   ID_PS                int not null auto_increment,
   ID_GROUND            int not null,
   ID_PRICE             int not null,
   ID_TT                int not null,
   ID_SLOT              int not null,
   AVAILABLE            bool,
   primary key (ID_PS)
);

/*==============================================================*/
/* Table : PRICE                                                */
/*==============================================================*/
create table PRICE
(
   ID_PRICE             int not null auto_increment,
   AMOUNT_PRICE         float,
   primary key (ID_PRICE)
);

/*==============================================================*/
/* Table : REJOIN                                               */
/*==============================================================*/
create table REJOIN
(
   ID_USER              int not null,
   ID_GAME              int not null,
   primary key (ID_USER, ID_GAME)
);

/*==============================================================*/
/* Table : SLOT                                                 */
/*==============================================================*/
create table SLOT
(
   ID_SLOT              int not null auto_increment,
   ID_HOUR              int not null,
   ID_DAY               int not null,
   primary key (ID_SLOT)
);

/*==============================================================*/
/* Table : TIME_TYPE                                            */
/*==============================================================*/
create table TIME_TYPE
(
   ID_TT                int not null auto_increment,
   NAME_TT              longtext,
   primary key (ID_TT)
);

/*==============================================================*/
/* Table : USER                                                 */
/*==============================================================*/
create table USER
(
   ID_USER              int not null auto_increment,
   FNAME                longtext,
   LNAME                longtext,
   CITY_USER            longtext,
   MAIL_USER            longtext,
   PHONE_USER           longtext,
   BIRTH                date,
   GENDER               int,
   LVL_FOOT             int,
   LVL_TENNIS           int,
   LVL_PADEL            int,
   LVL_SQUASH           int,
   RANK_TENNIS          longtext,
   RANK_PADEL           longtext,
   RANK_SQUASH          longtext,
   PASSWORD_USER        longtext,
   VALIDTOKEN_USER      longtext,
   CONFIRMEDAT_USER     date,
   VALID_PHONE          longtext,
   CONFIRMED_PHONE      date,
   RESETTOKEN_USER      longtext,
   RESET_AT             datetime,
   RESETTOKEN_MAIL      longtext,
   RESETMAIL_AT         datetime,
   GAMEPLAYED           int,
   LATES                int,
   MISSES               int,
   INT_FOOT             int,
   INT_TENNIS           int,
   INT_PADEL            int,
   INT_SQUASH           int,
   PROFIL_PIC           longtext,
   BAN_PIC              longtext,
   primary key (ID_USER)
);

alter table BOOKING add constraint FK_BOOK foreign key (ID_GAME)
      references GAME (ID_GAME) on delete restrict on update restrict;

alter table BOOKING add constraint FK_TAKE_PLACE foreign key (ID_PS)
      references PLANNING_SQUARE (ID_PS) on delete restrict on update restrict;

alter table GAME add constraint FK_APPLY foreign key (ID_CODE)
      references CODE (ID_CODE) on delete restrict on update restrict;

alter table GAME add constraint FK_CREATE foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table GAME add constraint FK_ORGANIZE foreign key (ID_PARTNER)
      references PARTNER (ID_PARTNER) on delete restrict on update restrict;

alter table GROUND add constraint FK_OWN foreign key (ID_CLUB)
      references CLUB (ID_CLUB) on delete restrict on update restrict;

alter table MARK add constraint FK_MARK foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table MARK add constraint FK_MARK2 foreign key (ID_PARTNER)
      references PARTNER (ID_PARTNER) on delete restrict on update restrict;

alter table MESSAGE add constraint FK_WRITE foreign key (ID_PARTNER)
      references PARTNER (ID_PARTNER) on delete restrict on update restrict;

alter table NOTE add constraint FK_COMMENT foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table NOTE add constraint FK_ON foreign key (ID_GAME)
      references GAME (ID_GAME) on delete restrict on update restrict;

alter table PARTNER add constraint FK_BE foreign key (ID_CLUB)
      references CLUB (ID_CLUB) on delete restrict on update restrict;

alter table PLANNING_SQUARE add constraint FK_ASSOCIATE foreign key (ID_TT)
      references TIME_TYPE (ID_TT) on delete restrict on update restrict;

alter table PLANNING_SQUARE add constraint FK_ASSOCIATION_16 foreign key (ID_SLOT)
      references SLOT (ID_SLOT) on delete restrict on update restrict;

alter table PLANNING_SQUARE add constraint FK_COST foreign key (ID_PRICE)
      references PRICE (ID_PRICE) on delete restrict on update restrict;

alter table PLANNING_SQUARE add constraint FK_UNFOLD foreign key (ID_GROUND)
      references GROUND (ID_GROUND) on delete restrict on update restrict;

alter table REJOIN add constraint FK_REJOIN foreign key (ID_GAME)
      references GAME (ID_GAME) on delete restrict on update restrict;

alter table REJOIN add constraint FK_REJOIN2 foreign key (ID_USER)
      references USER (ID_USER) on delete restrict on update restrict;

alter table SLOT add constraint FK_ASSOCIATION_14 foreign key (ID_HOUR)
      references HOUR (ID_HOUR) on delete restrict on update restrict;

alter table SLOT add constraint FK_ASSOCIATION_15 foreign key (ID_DAY)
      references DAY (ID_DAY) on delete restrict on update restrict;

