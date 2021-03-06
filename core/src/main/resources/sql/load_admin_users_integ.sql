--
-- The Archetype is configured with "hibernate.hbm2ddl.auto" value="create-drop" in "persistence.xml".
--
-- This will cause hibernate to populate the database when the application is started by processing the files that
-- were configured in the hibernate.hbm2ddl.import_files property.
--
-- This file is responsible for loading the BLC out-of-box Admin users.   You need at least one
-- admin setup in the system in order to use the BLC admin.   You can use this file initially and
-- then setup your own admin users, but you should always disable these default accounts in a real,
-- production system.
--

--
-- Sample admin users
--

--
INSERT INTO BLC_ADMIN_USER (ADMIN_USER_ID, EMAIL, LOGIN, NAME, PASSWORD, ACTIVE_STATUS_FLAG) VALUES (-1,'admin@yourdomain.com','admin','管理员','6172c6080d0d2828824aa675d070d3414bcc8608', true);
INSERT INTO BLC_ADMIN_USER (ADMIN_USER_ID, EMAIL, LOGIN, NAME, PASSWORD, ACTIVE_STATUS_FLAG) VALUES (-2,'merchandise@yourdomain.com','merchandise','商品经理','6172c6080d0d2828824aa675d070d3414bcc8608', true);
INSERT INTO BLC_ADMIN_USER (ADMIN_USER_ID, EMAIL, LOGIN, NAME, PASSWORD, ACTIVE_STATUS_FLAG) VALUES (-3,'promo@yourdomain.com','promo','营销经理','6172c6080d0d2828824aa675d070d3414bcc8608', true);
INSERT INTO BLC_ADMIN_USER (ADMIN_USER_ID, EMAIL, LOGIN, NAME, PASSWORD, ACTIVE_STATUS_FLAG) VALUES (-4,'csr@yourdomain.com','csr','客服代表','6172c6080d0d2828824aa675d070d3414bcc8608', true);
INSERT INTO BLC_ADMIN_USER (ADMIN_USER_ID, EMAIL, LOGIN, NAME, PASSWORD, ACTIVE_STATUS_FLAG) VALUES (-5,'cms_edit@yourdomain.com','cmsEditor','CMS编辑','6172c6080d0d2828824aa675d070d3414bcc8608', true);
INSERT INTO BLC_ADMIN_USER (ADMIN_USER_ID, EMAIL, LOGIN, NAME, PASSWORD, ACTIVE_STATUS_FLAG) VALUES (-6,'cms_approver@yourdomain.com','cmsApprover','CMS审核','6172c6080d0d2828824aa675d070d3414bcc8608', true);

-- Roles for sample admin users.
--
INSERT INTO BLC_ADMIN_USER_ROLE_XREF (ADMIN_ROLE_ID, ADMIN_USER_ID) VALUES (-1,-1);
INSERT INTO BLC_ADMIN_USER_ROLE_XREF (ADMIN_ROLE_ID, ADMIN_USER_ID) VALUES (-2,-2);
INSERT INTO BLC_ADMIN_USER_ROLE_XREF (ADMIN_ROLE_ID, ADMIN_USER_ID) VALUES (-3,-3);
INSERT INTO BLC_ADMIN_USER_ROLE_XREF (ADMIN_ROLE_ID, ADMIN_USER_ID) VALUES (-4,-4);
INSERT INTO BLC_ADMIN_USER_ROLE_XREF (ADMIN_ROLE_ID, ADMIN_USER_ID) VALUES (-5,-5);
INSERT INTO BLC_ADMIN_USER_ROLE_XREF (ADMIN_ROLE_ID, ADMIN_USER_ID) VALUES (-6,-6);
