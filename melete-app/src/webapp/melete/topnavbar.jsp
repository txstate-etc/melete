<%@ page import="org.etudes.tool.melete.MeleteSiteAndUserInfo"%>
<!--
 ***********************************************************************************
 * $URL: https://source.sakaiproject.org/contrib/etudes/melete/tags/2.9.9/melete-app/src/webapp/melete/topnavbar.jsp $
 * $Id: topnavbar.jsp 85951 2014-03-14 16:53:27Z mallika@etudes.org $  
 ***********************************************************************************
 *
 * Copyright (c) 2008, 2009, 2010, 2011, 2013 Etudes, Inc.
 *
 * Portions completed before September 1, 2008 Copyright (c) 2004, 2005, 2006, 2007, 2008 Foothill College, ETUDES Project
 *
 * Licensed under the Apache License, Version 2.0 (the "License");
 * you may not use this file except in compliance with the License.
 * You may obtain a copy of the License at
 *
 * http://www.apache.org/licenses/LICENSE-2.0
 *
 * Unless required by applicable law or agreed to in writing, software
 * distributed under the License is distributed on an "AS IS" BASIS,
 * WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or
 * implied. See the License for the specific language governing
 * permissions and limitations under the License.
 *
 **********************************************************************************
-->
<%@ taglib uri="http://java.sun.com/jsf/html" prefix="h" %>
<%@ taglib uri="http://sakaiproject.org/jsf/sakai" prefix="sakai" %>

<sakai:tool_bar>
   <sakai:tool_bar_item id="ViewButton" action="#{navPage.viewAction}" value="#{msgs.topnavbar_view}" rendered="#{navPage.shouldRenderView}" disabled="#{!navPage.shouldRenderView}" styleClass="TopImgView TopNavLink"/>
   <h:outputText value="#{msgs.topnavbar_view}" rendered="#{!navPage.shouldRenderView}" styleClass="TopImgViewText TopNavLink"/>

   <sakai:tool_bar_item id="AuthorButton" action="#{navPage.authAction}" disabled="#{!navPage.shouldRenderAuthor}" rendered="#{navPage.isInstructor && navPage.shouldRenderAuthor}" value="#{msgs.topnavbar_author}" styleClass="TopImgAuthor TopNavLink"/>
   <h:outputText value="#{msgs.topnavbar_author}" rendered="#{navPage.isInstructor && !navPage.shouldRenderAuthor}" styleClass="TopImgAuthorText TopNavLink" />
  
  <sakai:tool_bar_item id="ManageButton" action="#{navPage.manageAction}" disabled="#{!navPage.shouldRenderManage}" value="#{msgs.topnavbar_manage}" rendered="#{navPage.isInstructor && navPage.shouldRenderManage}" styleClass="TopImgManage TopNavLink"/>
  <h:outputText value="#{msgs.topnavbar_manage}" rendered="#{navPage.isInstructor && !navPage.shouldRenderManage}" styleClass="TopImgManageText TopNavLink" />
  
  <sakai:tool_bar_item id="PreferencesButton" action="#{navPage.PreferenceAction}" disabled="#{!navPage.shouldRenderPreferences}" rendered="#{navPage.shouldRenderPreferences}" value="#{msgs.topnavbar_preferences}" styleClass="TopImgPreference TopNavLink"/>
  <h:outputText value="#{msgs.topnavbar_preferences}" rendered="#{!navPage.shouldRenderPreferences}" styleClass="TopImgPreferenceText TopNavLink" />
</sakai:tool_bar>
<!-- End code to display images horizontally. -->
