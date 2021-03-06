program RSSReaderTests;
{

  Delphi DUnit Test Project
  -------------------------
  This project contains the DUnit test framework and the GUI/Console test runners.
  Add "CONSOLE_TESTRUNNER" to the conditional defines entry in the project options
  to use the console test runner.  Otherwise the GUI test runner will be used by
  default.

}

{$IFDEF CONSOLE_TESTRUNNER}
{$APPTYPE CONSOLE}
{$ENDIF}

uses
  Forms,
  TestFramework,
  GUITestRunner,
  TextTestRunner,
  TestHttpClient in 'test\TestHttpClient.pas',
  TestRSSParser in 'test\TestRSSParser.pas',
  TestRSSFeedModel in 'test\TestRSSFeedModel.pas',
  HttpClient in 'src\HttpClient.pas',
  RssModel in 'src\RssModel.pas',
  RssParser in 'src\RssParser.pas',
  IndyHttpClient in 'src\IndyHttpClient.pas',
  XmlDocRssParser in 'src\XmlDocRssParser.pas',
  TestSyncManager in 'test\TestSyncManager.pas',
  SyncManager in 'src\SyncManager.pas',
  RssStorage in 'src\RssStorage.pas',
  UINotification in 'src\UINotification.pas',
  FakeHttpClient in 'test\FakeHttpClient.pas',
  FakeRSSParser in 'test\FakeRSSParser.pas',
  FakeRSSStorage in 'test\FakeRSSStorage.pas',
  FakeUINotification in 'test\FakeUINotification.pas';

{$R *.RES}

begin
  Application.Initialize;
  if IsConsole then
    with TextTestRunner.RunRegisteredTests(rxbHaltOnFailures) do
      Free
  else
    GUITestRunner.RunRegisteredTests;
end.

