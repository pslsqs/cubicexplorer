program CubicExplorer;

{%File 'Muokkaukset.txt'}


uses
  madExcept,
  madLinkDisAsm,
  Forms,
  Controls,
  Messages,
  Windows,
  TntSystem,
  Main in 'Main.pas' {MainForm},
  CE_DockInfo in 'CE_DockInfo.pas',
  CE_Utils in 'CE_Utils.pas',
  CE_Layout in 'CE_Layout.pas',
  fCE_TabPage in 'fCE_TabPage.pas' {CECustomTabPage: TFrame},
  fCE_FileView in 'fCE_FileView.pas' {CEFileViewPage: TFrame},
  fCE_DockHostForm in 'fCE_DockHostForm.pas' {CEDockHostForm},
  fCE_DockableForm in 'fCE_DockableForm.pas' {CECustomDockableForm},
  CE_GlobalCtrl in 'CE_GlobalCtrl.pas',
  CE_Consts in 'CE_Consts.pas',
  CE_BaseFileView in 'CE_BaseFileView.pas',
  CE_FileView in 'CE_FileView.pas',
  fCE_FolderPanel in 'fCE_FolderPanel.pas' {CEFolderPanel},
  fCE_BookmarkPanel in 'fCE_BookmarkPanel.pas' {CEBookmarkPanel},
  CE_QuickView in 'CE_QuickView.pas',
  CE_GifAnim in 'CE_GifAnim.pas',
  fCE_QuickViewPanel in 'fCE_QuickViewPanel.pas' {CEQuickViewPanel},
  dCE_Actions in 'dCE_Actions.pas' {CEActions: TDataModule},
  Documents in 'Documents.pas',
  dCE_Images in 'dCE_Images.pas' {CE_Images: TDataModule},
  CEJvDockVSNetStyleTBX in 'CEJvDockVSNetStyleTBX.pas',
  fCE_TextEditor in 'fCE_TextEditor.pas' {CETextEditorPage: TFrame},
  fCE_AboutBox in 'fCE_AboutBox.pas' {CEAboutBox},
  fCE_FileSearch in 'fCE_FileSearch.pas' {CEFileSearchPage: TFrame},
  CE_DriveBar in 'CE_DriveBar.pas',
  CE_BookmarkBar in 'CE_BookmarkBar.pas',
  fCE_ToolbarCustomizer in 'fCE_ToolbarCustomizer.pas' {CEToolbarCustomizer},
  CE_Toolbar in 'CE_Toolbar.pas',
  CE_ToolbarButtons in 'CE_ToolbarButtons.pas',
  CE_StatusBar in 'CE_StatusBar.pas',
  CE_VistaFuncs in 'CE_VistaFuncs.pas',
  CE_StdBookmarkComps in 'CE_StdBookmarkComps.pas',
  CE_Bookmarks in 'CE_Bookmarks.pas',
  CE_BookmarkTree in 'CE_BookmarkTree.pas',
  dCE_Input in 'dCE_Input.pas' {CEInput: TDataModule},
  CE_Breadcrumb in 'CE_Breadcrumb.pas',
  CE_ScrollToolbar in 'CE_ScrollToolbar.pas',
  fCE_FolderTreeForm in 'fCE_FolderTreeForm.pas' {CE_FolderTreeForm},
  CE_XMLStorage in 'CE_XMLStorage.pas',
  CE_AddressToolbar in 'CE_AddressToolbar.pas',
  CE_FileSearch in 'CE_FileSearch.pas',
  fCE_ExtAppPage in 'fCE_ExtAppPage.pas' {CEExtAppTabPage: TFrame},
  fCE_FiltersPanel in 'fCE_FiltersPanel.pas' {CE_FiltersPanel},
  CE_FilterPanel in 'CE_FilterPanel.pas',
  fCE_BookmarkPropDlg in 'fCE_BookmarkPropDlg.pas' {BookmarkPropDlg},
  CE_FolderTree in 'CE_FolderTree.pas',
  CE_Classes in 'CE_Classes.pas',
  CE_ContextMenu in 'CE_ContextMenu.pas',
  CE_CommonObjects in 'CE_CommonObjects.pas',
  CE_VideoEngine in 'CE_VideoEngine.pas',
  CE_VideoPlayer in 'CE_VideoPlayer.pas',
  CE_VideoPlayerUI in 'CE_VideoPlayerUI.pas',
  CE_LanguageCodes in 'CE_LanguageCodes.pas',
  fCE_PoEditor_NewForm in 'fCE_PoEditor_NewForm.pas' {CENewTranslationDlg},
  CE_ProcessUtils in 'CE_ProcessUtils.pas',
  fCE_PoEditor in 'fCE_PoEditor.pas' {CEPoEditor: TFrame},
  CE_LanguageUtils in 'CE_LanguageUtils.pas',
  CE_LanguageEngine in 'CE_LanguageEngine.pas',
  fCE_OptionsDialog in 'fCE_OptionsDialog.pas' {CEOptionsDialog},
  CE_Settings in 'CE_Settings.pas',
  CE_SettingsIntf in 'CE_SettingsIntf.pas',
  CE_SettingsStorage in 'CE_SettingsStorage.pas',
  fCE_OptionsCustomPage in 'fCE_OptionsCustomPage.pas' {CEOptionsCustomPage: TFrame},
  fCE_OptionsPage_General in 'fCE_OptionsPage_General.pas' {CEOptionsPage_General: TFrame},
  fCE_OptionsPage_Tabs in 'fCE_OptionsPage_Tabs.pas' {CEOptionsPage_Tabs: TFrame},
  CE_Sessions in 'CE_Sessions.pas',
  fCE_SessionDlg in 'fCE_SessionDlg.pas' {CESessionEditDlg},
  fCE_OptionsPage_Display in 'fCE_OptionsPage_Display.pas' {CEOptionsPage_Display: TFrame},
  fCE_OptionsPage_Display_Bookmarks in 'fCE_OptionsPage_Display_Bookmarks.pas' {CE_OptionsPage_Display_Bookmarks: TFrame},
  fCE_OptionsPage_Display_FolderTree in 'fCE_OptionsPage_Display_FolderTree.pas' {CE_OptionsPage_Display_FolderTree: TFrame},
  fCE_OptionsPage_Display_FileView in 'fCE_OptionsPage_Display_FileView.pas' {CE_OptionsPage_Display_FileView: TFrame},
  fCE_StackPanel in 'fCE_StackPanel.pas' {CEStackPanel},
  CE_DropStack in 'CE_DropStack.pas',
  CE_SpTabBar in 'CE_SpTabBar.pas',
  JvDockVSNetStyle in 'Components\jvcl\JvDockVSNetStyle.pas',
  JvDockControlForm in 'Components\jvcl\JvDockControlForm.pas',
  JvDockTree in 'Components\jvcl\JvDockTree.pas',
  fCE_QuickViewTab in 'fCE_QuickViewTab.pas' {CEQuickViewPage: TFrame};

{$R *.res}
{$R 'CE_Resources.res'}
{$R 'CE_VideoPlayerUI.res'}

var
  h: HWND;
  ws: WideString;
  i: Integer;
  copyDataStruct : TCopyDataStruct;
begin
  //////////////////////////////////////////////////////
  //***** Check if only Single instance is allowed *****
  h:= FindWindow('CubicExplorer_MsgInput','CE_MsgInput');
  if h <> 0 then
  begin
    if SendMessage(h, WM_USER + 1,0,0) = 0 then
    begin
      for i:= 1 to WideParamCount do
      begin
        ws:= ws + WideParamStr(i);
        if i < WideParamCount then
        ws:= ws + ',';
      end;
      if ws <> '' then
      begin
        copyDataStruct.dwData:= 0;
        copyDataStruct.cbData := (1 + Length(ws))*SizeOf(WideChar);
        copyDataStruct.lpData := PWideChar(ws);
        SendMessage(h, WM_COPYDATA, 0, Integer(@copyDataStruct));
      end
      else
      begin
        PostMessage(h, WM_MakeVisible, 0, 0);
      end;
      Exit;
    end;
  end;
  //****************************************************
  //////////////////////////////////////////////////////
  
  // Enable memory leak reporting if run on Debugger
  ReportMemoryLeaksOnShutdown := DebugHook <> 0;

  Application.Initialize;
  Application.Title := 'CubicExplorer';

  // Create Main Form
  Application.CreateForm(TMainForm, MainForm);
  MainForm.BeginUIUpdate;

  // Create Stack Panel
  Application.CreateForm(TCEStackPanel, CEStackPanel);

  // Create Folder Panel
  CEFolderPanel:= TCEFolderPanel.Create(MainForm);
  CEFolderPanel.Name:= 'FolderPanel';

  // Create Bookmark Panel
  CEBookmarkPanel:= TCEBookmarkPanel.Create(MainForm);
  CEBookmarkPanel.Name:= 'BookmarkPanel';

  // Create 'QuickView Panel
  CEQuickViewPanel:= TCEQuickViewPanel.Create(MainForm);
  CEQuickViewPanel.Name:= 'QuickViewPanel';

  // Create Filters Panel
  CEFiltersPanel:= TCE_FiltersPanel.Create(MainForm);
  CEFiltersPanel.Name:= 'FiltersPanel';

  // Create DropStack Panel
  CEStackPanel:= TCEStackPanel.Create(MainForm);
  CEStackPanel.Name:= 'StackPanel';

  // Run Start up code.
  MainForm.StartUp;
  MainForm.StartUpTimer.Enabled:= true;
  // Run Application
  Application.Run;
end.